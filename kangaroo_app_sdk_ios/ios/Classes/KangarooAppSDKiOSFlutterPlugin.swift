import Flutter
import UIKit
import KangarooAppSdkCustomer

public class KangarooAppSDKiOSFlutterPlugin: NSObject, FlutterPlugin {
    
    let kangarooSdk = KangarooSdk()
    
    public static func register(with registrar: FlutterPluginRegistrar) {

        let channel = FlutterMethodChannel(name: "kangaroo_sdk/method_channel", binaryMessenger: registrar.messenger())
        
        let instance = KangarooAppSDKiOSFlutterPlugin()
        
        registrar.addMethodCallDelegate(instance, channel: channel)
                
        registerStreamHandlers(flutterPluginRegistrar: registrar)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        PluginHandlerListHolder.pluginHandlerList.forEach { it in
            if (call.method == it.methodChannel) {
                it.onMethodCall(call: call)
            }
        }
        if (call.method == "core/methods/initializeSdk") {
            /**
             Initializes the SDK
             */
                guard let args = call.arguments else {
                    return
                }
                if let myArgs = args as? [String: Any],
                                let applicationKey = myArgs["applicationKey"] as? String?,
                        let clientId = myArgs["clientId"] as? String?,
                        let clientSecret = myArgs["clientSecret"] as? String?,
                        let environment = myArgs["environment"] as? String?
                    {
                    kangarooSdk.initialize(
                        applicationKey: applicationKey ?? "",
                        clientId: clientId ?? "",
                        clientSecret: clientSecret ?? "",
                        environment: environment ?? "production"
                    )
                }
        } else if (call.method == "core/methods/getSession") {
            /**
             Get the current app session. Returns an access token or null if there is no session
             */
            let token: String? = kangarooSdk.getSession()
            result(token)
        } else if (call.method == "core/methods/killSession") {
            /**
             Kills the current session. This will remove the access and refresh tokens from device storage
             */
            kangarooSdk.killSession()
        } else if (call.method == "core/methods/setPreferredLanguage") {
            /**
             Sets the SDK's preferred language. This will add the provided language to the Accept-Language
             header for all http calls from the SDK.
             */
            guard let args = call.arguments else {
                return
            }
            if let myArgs = args as? [String: Any],
                            let preferredLanguage = myArgs["preferredLanguage"] as? String?
                {
                kangarooSdk.setPreferredLanguage(iso639LanguageCode: preferredLanguage ?? "")
            }
        } else if (call.method == "core/methods/getPreferredLanguage") {
            /**
             Gets the SDK's preferred language.
             */
        
            let language: String? = kangarooSdk.getPreferredLanguage()
            result(language)
        }
    }
    
    private static func registerStreamHandlers(flutterPluginRegistrar: FlutterPluginRegistrar) -> Void {
        PluginHandlerListHolder.pluginHandlerList.forEach { it in
            let eventChannel: FlutterEventChannel = FlutterEventChannel(
                name: it.eventChannel,
                binaryMessenger: flutterPluginRegistrar.messenger()
            )
            eventChannel.setStreamHandler(it.getStreamHandler())
            }
    }
}
