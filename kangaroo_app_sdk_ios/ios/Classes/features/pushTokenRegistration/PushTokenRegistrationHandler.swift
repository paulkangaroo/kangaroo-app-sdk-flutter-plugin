import Foundation
import Flutter
import KangarooAppSDKiOS

class PushTokenRegistrationHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/register_push_token"

    var eventChannel: String = "customer_sdk/events/register_push_token"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        PushTokenRegistrationHandler.registerPushToken(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func registerPushToken(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        let androidDeviceToken = myArgs["androidDeviceToken"] as? String? ?? nil
                let iosDeviceToken = myArgs["iosDeviceToken"] as? String? ?? nil

            PushTokenRegistrationApi().registerPushToken(
                androidDeviceToken: androidDeviceToken,
                iosDeviceToken: iosDeviceToken
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        PushTokenRegistrationApi().pushTokenRegistrationState
            .serializePushTokenRegistrationState().observe { result in
            switch result {
            case let result as SerializedResultIdle:
                self.sink?(result.state)
            case let result as SerializedResultLoading:
                self.sink?(result.state)
            case let result as SerializedResultSuccess:
                self.sink?(result.data)
            case let result as SerializedResultEmptyResponse:
                self.sink?(result.body)
            case let result as SerializedResultUnauthorizedError:
                self.sink?(result.error)
            case let result as SerializedResultUnknownError:
                self.sink?(result.error)
            default:
                break
            }
        }
        return nil
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        sink = nil
        return nil
    }
}
