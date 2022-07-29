import Foundation
import Flutter
import KangarooAppSDKiOS

class UserPinResetRequestHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/request_pin_reset"

    var eventChannel: String = "customer_sdk/events/request_pin_reset"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserPinResetRequestHandler.requestPinReset(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func requestPinReset(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let mode = myArgs["mode"] as? String else {return}
                let email = myArgs["email"] as? String? ?? nil
                let phone = myArgs["phone"] as? String? ?? nil
                let countryCode = myArgs["countryCode"] as? String? ?? nil

            UserPinResetRequestApi().requestPinReset(
                mode: mode,
                email: email,
                phone: phone,
                countryCode: countryCode
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserPinResetRequestApi().userPinResetRequestState
            .serializeUserPinResetRequestState().observe { result in
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
