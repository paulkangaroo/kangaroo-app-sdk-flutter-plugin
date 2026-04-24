import FlutterMacOS
import KangarooAppSdkCustomer

public class KangarooAppSDKMacOSFlutterPlugin: NSObject, FlutterPlugin {

    let kangarooSdk = KangarooSdk()

    public static func register(with registrar: FlutterPluginRegistrar) {

        let channel = FlutterMethodChannel(name: "kangaroo_sdk/method_channel", binaryMessenger: registrar.messenger)

        let instance = KangarooAppSDKMacOSFlutterPlugin()

        registrar.addMethodCallDelegate(instance, channel: channel)

        registerStreamHandlers(flutterPluginRegistrar: registrar)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        PluginHandlerListHolder.pluginHandlerList.forEach { it in
            if (call.method == it.methodChannel) {
                Task {
                    await result(it.onMethodCall(call: call))
                }

            }
        }
        if (call.method == "core/methods/initializeSdk") {
                guard let args = call.arguments else {
                    return
                }
                if let myArgs = args as? [String: Any],
                                let applicationKey = myArgs["applicationKey"] as? String?,
                        let clientId = myArgs["clientId"] as? String?,
                        let clientSecret = myArgs["clientSecret"] as? String?,
                        let environment = myArgs["environment"] as? String?,
                        let baseURL = myArgs["baseURL"] as? String?
                    {
                    kangarooSdk.initialize(
                        applicationKey: applicationKey ?? "",
                        clientId: clientId ?? "",
                        clientSecret: clientSecret ?? "",
                        environment: environment ?? "production",
                        baseURL: baseURL ?? ""
                    )
                }
        } else if (call.method == "core/methods/getSession") {
            let token: String? = kangarooSdk.getSession()
            result(token)
        } else if (call.method == "core/methods/killSession") {
            kangarooSdk.killSession()
        } else if (call.method == "core/methods/setPreferredLanguage") {
            guard let args = call.arguments else {
                return
            }
            if let myArgs = args as? [String: Any],
                            let preferredLanguage = myArgs["preferredLanguage"] as? String?
                {
                kangarooSdk.setPreferredLanguage(iso639LanguageCode: preferredLanguage ?? "")
            }
        } else if (call.method == "core/methods/getPreferredLanguage") {
            let language: String? = kangarooSdk.getPreferredLanguage()
            result(language)
        }
    }

    private static func registerStreamHandlers(flutterPluginRegistrar: FlutterPluginRegistrar) -> Void {
        PluginHandlerListHolder.pluginHandlerList.forEach { it in
            let eventChannel: FlutterEventChannel = FlutterEventChannel(
                name: it.eventChannel,
                binaryMessenger: flutterPluginRegistrar.messenger
            )
            eventChannel.setStreamHandler(it.getStreamHandler())
            }
    }
}
