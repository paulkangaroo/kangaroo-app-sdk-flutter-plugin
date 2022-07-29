import Foundation
import Flutter
import KangarooAppSDKiOS

class UserAccountVerificationHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/verify_account"

    var eventChannel: String = "customer_sdk/events/verify_account"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserAccountVerificationHandler.verifyAccount(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func verifyAccount(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let intent = myArgs["intent"] as? String else {return}
                guard let token = myArgs["token"] as? String else {return}
                let email = myArgs["email"] as? String? ?? nil
                let phone = myArgs["phone"] as? String? ?? nil
                let countryCode = myArgs["countryCode"] as? String? ?? nil

            UserAccountVerificationApi().verifyAccount(
                intent: intent,
                token: token,
                email: email,
                phone: phone,
                countryCode: countryCode
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserAccountVerificationApi().userAccountVerificationState
            .serializeUserAccountVerificationState().observe { result in
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
