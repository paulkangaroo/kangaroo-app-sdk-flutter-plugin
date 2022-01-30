import Flutter
import UIKit
import KangarooAppSDKiOS

public class KangarooAppSDKiOSFlutterPlugin: NSObject, FlutterPlugin {
    
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
                guard let args = call.arguments else {
                    return
                }
                if let myArgs = args as? [String: Any],
                                let applicationKey = myArgs["applicationKey"] as? String?,
                        let clientId = myArgs["clientId"] as? String?,
                        let clientSecret = myArgs["clientSecret"] as? String?
                    {
                    KangarooSdk().initialize(
                        applicationKey: applicationKey ?? "",
                        clientId: clientId ?? "",
                        clientSecret: clientSecret ?? ""
                    )
                }
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
