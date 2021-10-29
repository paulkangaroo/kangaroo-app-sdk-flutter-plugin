import com.kangaroorewards.codegen.flutterplugin.*
import com.kangaroorewards.codegen.plugin.GenerateTask
import com.kangaroorewards.codegen.plugin.GenerateTaskConfiguration
import com.kangaroorewards.codegen.utils.toCamelCase
import com.kangaroorewards.codegen.utils.toSnakeCase
import de.undercouch.gradle.tasks.download.DownloadAction
import org.apache.ivy.util.url.ApacheURLLister
import org.gradle.kotlin.dsl.support.listFilesOrdered

group = "com.kangaroo"
version = "1.0-SNAPSHOT"

plugins {
    id("com.kangaroorewards.codegen.plugin") version "1.5.0"
    id("de.undercouch.download") version "4.1.2"
}

val kangarooApiVersion = "0.0.14"

/**
 * Download api spec from github to build folder
 */
val downloadZippedApiTask = "downloadZippedKangarooApiSpec".apply {
    tasks.create(this) {
        group = "kangaroo"
    }.apply {
        val url = "https://github.com/kangaroorewards/api-docs/archive/refs/tags/v$kangarooApiVersion.zip"
        val urlListener = ApacheURLLister()
        val files = urlListener.listFiles(java.net.URL(url))
        println("********* URL TO DOWNLOAD $files")
        download.configure(
            delegateClosureOf<DownloadAction> {
                src(url)
                dest(File("$buildDir/apiSpec", "$kangarooApiVersion.zip"))
            }
        )
    }
}

val downloadApiTask = "downloadKangarooApiSpec".apply {
    tasks.create(this) {
        group = "kangaroo"
    }.apply {
        dependsOn(tasks.getByName(downloadZippedApiTask))
        copy {
            from(zipTree(File("$buildDir/apiSpec", "$kangarooApiVersion.zip")))
            into("$buildDir/apiSpec")
        }
    }
}

/**
 * Array of swagger spec files. We will use all files ending
 * with .yaml and generate swagger gradle tasks for them.
 */
val swaggerList = mutableListOf<File>()

/**
 * Api spec files root directory.
 */
val apiDir = File("$buildDir/apiSpec/api-docs-$kangarooApiVersion/open_api/v2/customer_api/")

/**
 * Iterates over all yaml files in api directory and add
 * them to the swaggerList list.
 */
apiDir.listFilesOrdered { file ->
    if (file.name.endsWith(".yaml")
        && (!file.name.startsWith("_index.yaml"))
    ) {
        swaggerList.add(file)
    }
    false
}


/**
 * Code block to generate the platform interface of
 * the Flutter plugin. The platform interface bridges the plugin
 * code with the device / platform code.
 */
val flutterPlatformInterfaceGradleTask = "_generateFlutterPlatformInterface".apply {
    tasks.create(this) {
        group = "flutter platform interface generator"
    }
    /**
     * Iterates over all entries in swaggerList and creates swagger gradle tasks
     * for each one. Each task is then added as a dependency in kangarooGradleTask.
     * This allows a single task to generate all api files, as well as individual tasks
     * for finer control over generated files.
     */
    swaggerList.forEach {
        val apiName = it.name.removeSuffix(".yaml")
        val gradleTaskName = "generate${apiName.capitalize()}Api$this"
        val config = project.extensions.create(
            "generateSwagger${apiName}$this",
            GenerateTaskConfiguration::class.java,
            project
        )
        tasks.create(gradleTaskName, GenerateTask::class) {
            flutterPluginPackageName?.set("kangaroo_app_sdk")
            platform.set(FLUTTER_PLATFORM_INTERFACE_GEN_TASK)
            packageName.set("features.${apiName.toSnakeCase()}")
            inputFile.set(file(it))
            outputDir.set(file("./kangaroo_app_sdk_platform_interface/lib/"))
            specName.set("$apiName-spec")
            specVersion.set("1")
            features = config.features
            group = "flutter platform interface generator"
        }
        tasks.getByName(this).dependsOn(gradleTaskName)
    }
}

/**
 * Code block to generate the app facing package of
 * the Flutter plugin. The app facing package is what
 * is imported by the Flutter app. It communicates with the
 * Platform Interface (which in turn communicates with the platform specific code.)
 */
val flutterAppFacingPackageGradleTask = "_generateAppFacingPackage".apply {
    tasks.create(this) {
        group = "flutter app facing package generator"
    }
    /**
     * Iterates over all entries in swaggerList and creates swagger gradle tasks
     * for each one. Each task is then added as a dependency in kangarooGradleTask.
     * This allows a single task to generate all api files, as well as individual tasks
     * for finer control over generated files.
     */
    swaggerList.forEach {
        val apiName = it.name.removeSuffix(".yaml")
        val gradleTaskName = "generate${apiName.capitalize()}Api$this"
        val config = project.extensions.create(
            "generateSwagger${apiName}$this",
            GenerateTaskConfiguration::class.java,
            project
        )
        tasks.create(gradleTaskName, GenerateTask::class) {
            flutterPluginPackageName?.set("kangaroo_app_sdk")
            platform.set(FLUTTER_APP_FACING_PACKAGE_GEN_TASK)
            packageName.set("lib.${apiName.toSnakeCase()}")
            inputFile.set(file(it))
            outputDir.set(file("./kangaroo_app_sdk/"))
            specName.set("$apiName-spec")
            specVersion.set("1")
            features = config.features
            group = "flutter app facing package generator"
        }
        tasks.getByName(this).dependsOn(gradleTaskName)
    }
}

/**
 * Code block to generate the Android specific code of
 * the Flutter plugin. When deployed on an Android device,
 * the platform interface will communicate with the Android code.
 */
val flutterAndroidPackageGradleTask = "_generateAndroidPackage".apply {

    tasks.create(this) {
        group = "flutter android package generator"
    }

    swaggerList.forEach {
        val apiName = it.name.removeSuffix(".yaml")
        val gradleTaskName = "generate${apiName.capitalize()}Api$this"
        val config = project.extensions.create(
            "generateSwagger${apiName}$this",
            GenerateTaskConfiguration::class.java,
            project
        )
        tasks.create(gradleTaskName, GenerateTask::class) {
            flutterPluginPackageName?.set("kangaroo_app_sdk")
            platform.set(FLUTTER_ANDROID_PLUGIN_HANDLER_GEN_TASK)
            packageName.set("features.${apiName.toCamelCase()}")
            inputFile.set(file(it))
            outputDir.set(
                file(
                    "./kangaroo_app_sdk_android/android/src/main/kotlin/com/kangaroo/flutterplugin/android"
                )
            )
            specName.set("$apiName-spec")
            specVersion.set("1")
            features = config.features
            group = "flutter android package generator"
        }
        tasks.getByName(this).dependsOn(gradleTaskName)
    }

    val apiName = "pluginHandlerList"
    val gradleTaskName = "_generate${apiName.capitalize()}Api$this"
    val config =
        project.extensions.create("generateSwagger${apiName}$this", GenerateTaskConfiguration::class.java, project)

    tasks.create(gradleTaskName, GenerateTask::class) {
        flutterPluginPackageName?.set("kangaroo_app_sdk")
        platform.set(FLUTTER_ANDROID_PLUGIN_HANDLER_LIST_GEN_TASK)
        packageName.set("")
        inputFile.set(file("$apiDir/_index.yaml"))
        outputDir.set(
            file(
                "./kangaroo_app_sdk_android/android/src/main/kotlin/com/kangaroo/flutterplugin/android/features"
            )
        )
        specName.set("$apiName-spec")
        specVersion.set("1")
        features = config.features
        group = "flutter android package generator"
    }
    tasks.getByName(this@apply).dependsOn(gradleTaskName)
}

/**
 * Code block to generate the iOS specific code of
 * the Flutter plugin. When deployed on an iOS device,
 * the platform interface will communicate with the iOS code.
 */
val flutteriOSPackageGradleTask = "_generateiOSPackage".apply {

    tasks.create(this) {
        group = "flutter iOS package generator"
    }

    swaggerList.forEach {
        val apiName = it.name.removeSuffix(".yaml")
        val gradleTaskName = "generate${apiName.capitalize()}Api$this"
        val config = project.extensions.create(
            "generateSwagger${apiName}$this",
            GenerateTaskConfiguration::class.java,
            project
        )
        tasks.create(gradleTaskName, GenerateTask::class) {
            flutterPluginPackageName?.set("kangaroo_app_sdk")
            platform.set(FLUTTER_iOS_PLUGIN_HANDLER_GEN_TASK)
            packageName.set("features.${apiName.toCamelCase()}")
            inputFile.set(file(it))
            outputDir.set(
                file(
                    "./kangaroo_app_sdk_ios/ios/Classes"
                )
            )
            specName.set("$apiName-spec")
            specVersion.set("1")
            features = config.features
            group = "flutter iOS package generator"
        }
        tasks.getByName(this).dependsOn(gradleTaskName)
    }

    val apiName = "pluginHandlerList"
    val gradleTaskName = "_generate${apiName.capitalize()}Api$this"
    val config =
        project.extensions.create("generateSwagger${apiName}$this", GenerateTaskConfiguration::class.java, project)

    tasks.create(gradleTaskName, GenerateTask::class) {
        flutterPluginPackageName?.set("kangaroo_app_sdk")
        platform.set(FLUTTER_IOS_PLUGIN_HANDLER_LIST_GEN_TASK)
        packageName.set("")
        inputFile.set(file("$apiDir/_index.yaml"))
        outputDir.set(
            file(
                "./kangaroo_app_sdk_ios/ios/Classes"
            )
        )
        specName.set("$apiName-spec")
        specVersion.set("1")
        features = config.features
        group = "flutter iOS package generator"
    }
    tasks.getByName(this@apply).dependsOn(gradleTaskName)
}

/**
 * Code block to generate the Web specific code of
 * the Flutter plugin. When deployed on Web device,
 * the platform interface will communicate with the JS code.
 */
val flutterWebPackageGradleTask = "_generateWebPackage".apply {

    tasks.create(this) {
        group = "flutter Web package generator"
    }

    swaggerList.forEach {
        val apiName = it.name.removeSuffix(".yaml")
        val gradleTaskName = "generate${apiName.capitalize()}Api$this"
        val config = project.extensions.create(
            "generateSwagger${apiName}$this",
            GenerateTaskConfiguration::class.java,
            project
        )
        tasks.create(gradleTaskName, GenerateTask::class) {
            flutterPluginPackageName?.set("kangaroo_app_sdk")
            platform.set(FLUTTER_WEB_PLUGIN_HANDLER_GEN_TASK)
            packageName.set("features.${apiName.toSnakeCase()}")
            inputFile.set(file(it))
            outputDir.set(
                file(
                    "./kangaroo_app_sdk_web/lib"
                )
            )
            specName.set("$apiName-spec")
            specVersion.set("1")
            features = config.features
            group = "flutter Web package generator"
        }
        tasks.getByName(this).dependsOn(gradleTaskName)
    }

    val apiName = "pluginHandlerList"
    val gradleTaskName = "_generate${apiName.capitalize()}Api$this"
    val config =
        project.extensions.create("generateSwagger${apiName}$this", GenerateTaskConfiguration::class.java, project)

    tasks.create(gradleTaskName, GenerateTask::class) {
        flutterPluginPackageName?.set("kangaroo_app_sdk")
        platform.set(FLUTTER_WEB_PLUGIN_HANDLER_LIST_GEN_TASK)
        packageName.set("")
        inputFile.set(file("$apiDir/_index.yaml"))
        outputDir.set(
            file(
                "./kangaroo_app_sdk_web/lib/features"
            )
        )
        specName.set("$apiName-spec")
        specVersion.set("1")
        features = config.features
        group = "flutter Web package generator"
    }
    tasks.getByName(this@apply).dependsOn(gradleTaskName)
}

repositories {
    mavenLocal()
    google()
    jcenter()
    mavenCentral()
}

buildscript {
    repositories {
        mavenLocal()
        maven {
            url = uri("https://plugins.gradle.org/m2/")
        }
    }
    dependencies {
        classpath("org.apache.ivy:ivy:2.3.0")
    }
}

val kangarooPublishingGradleTask = "generateFlutterPluginCode".apply {
    tasks.create(this) {
        group = "kangaroo"
        description = "Generates flutter plugin code for all packages"
    }

    tasks.getByName(this).dependsOn(
        tasks.getByName(flutterPlatformInterfaceGradleTask),
        tasks.getByName(flutterAppFacingPackageGradleTask),
        tasks.getByName(flutterAndroidPackageGradleTask),
        tasks.getByName(flutteriOSPackageGradleTask),
        tasks.getByName(flutterWebPackageGradleTask)
    )
}
