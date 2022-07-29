import Foundation
import Flutter
import KangarooAppSDKiOS

class UserRegistrationHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/create_account"

    var eventChannel: String = "customer_sdk/events/create_account"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserRegistrationHandler.createAccount(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func createAccount(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        let email = myArgs["email"] as? String? ?? nil
                let phone = myArgs["phone"] as? String? ?? nil
                let countryCode = myArgs["countryCode"] as? String? ?? nil
                let language = myArgs["language"] as? String? ?? nil

            UserRegistrationApi().createAccount(
                email: email,
                phone: phone,
                countryCode: countryCode,
                language: language
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserRegistrationApi().userRegistrationState
            .serializeUserRegistrationState().observe { result in
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
