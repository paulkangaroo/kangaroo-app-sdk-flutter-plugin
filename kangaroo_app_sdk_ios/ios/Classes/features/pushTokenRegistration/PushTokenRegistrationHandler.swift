import Foundation
import Flutter
import KangarooAppSdkCustomer

class PushTokenRegistrationHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/register_push_token"

    var eventChannel: String = "customer_sdk/events/register_push_token"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await PushTokenRegistrationHandler.registerPushToken(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func registerPushToken(call: FlutterMethodCall) async -> String? {
        

        


        

        guard let args = call.arguments else {
            return nil
        }
        do {
       if let myArgs = args as? [String: Any] {
                        let androidDeviceToken = myArgs["androidDeviceToken"] as? String? ?? nil
                let iosDeviceToken = myArgs["iosDeviceToken"] as? String? ?? nil

         let result = try await PushTokenRegistrationApi().registerPushToken(
                androidDeviceToken: androidDeviceToken,
                iosDeviceToken: iosDeviceToken
            ).serializeNative()

        switch result {
            case let result as SerializedResultSuccess:
                return result.data
            case let result as SerializedResultUnauthorizedError:
                return result.error
            case let result as SerializedResultUnknownError:
                return result.error
            default:
                return nil
                }
            }
        }
        catch {
            return nil
        }
        
        return nil
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
