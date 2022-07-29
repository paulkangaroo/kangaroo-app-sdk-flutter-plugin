import Foundation
import Flutter
import KangarooAppSDKiOS

class UserPinResetHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/reset_pin"

    var eventChannel: String = "customer_sdk/events/reset_pin"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserPinResetHandler.resetPin(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func resetPin(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let verificationCode = myArgs["verificationCode"] as? Int32 else {return}
                guard let pinCode = myArgs["pinCode"] as? Int32 else {return}
                let email = myArgs["email"] as? String? ?? nil
                let phone = myArgs["phone"] as? String? ?? nil
                let countryCode = myArgs["countryCode"] as? String? ?? nil

            UserPinResetApi().resetPin(
                verificationCode: verificationCode,
                pinCode: pinCode,
                email: email,
                phone: phone,
                countryCode: countryCode
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserPinResetApi().userPinResetState
            .serializeUserPinResetState().observe { result in
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
