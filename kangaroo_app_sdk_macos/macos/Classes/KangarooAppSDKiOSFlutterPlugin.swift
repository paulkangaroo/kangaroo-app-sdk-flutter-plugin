import Flutter
import UIKit
import KangarooAppSDKiOS

public class KangarooAppSDKiOSFlutterPlugin: NSObject, FlutterPlugin {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        KangarooSdk().initialize()
        
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
