import Foundation
import Flutter
import KangarooAppSDKiOS

class UserPinResetHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/request_pin_reset"

    var eventChannel: String = "customer_sdk/events/request_pin_reset"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserPinResetHandler.requestPinReset(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func requestPinReset(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any],
                        let verificationCode = myArgs["verificationCode"] as? Int32,
                let email = myArgs["email"] as? String?,
                let phone = myArgs["phone"] as? String?,
                let countryCode = myArgs["countryCode"] as? String?
            {
            UserPinResetApi().requestPinReset(
                verificationCode: verificationCode,
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
