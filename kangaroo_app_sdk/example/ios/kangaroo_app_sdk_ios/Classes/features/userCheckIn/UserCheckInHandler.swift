import Foundation
import Flutter
import KangarooAppSDKiOS

class UserCheckInHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/user_check_in"

    var eventChannel: String = "customer_sdk/events/user_check_in"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserCheckInHandler.userCheckIn(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func userCheckIn(call: FlutterMethodCall) {
        
        UserCheckInApi().userCheckIn(methods: call.arguments as! [String : Any])

    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserCheckInApi().userCheckInState
            .serializeUserCheckInState().observe { result in
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
