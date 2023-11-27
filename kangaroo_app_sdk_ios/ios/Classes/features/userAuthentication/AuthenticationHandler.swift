import Foundation
import Flutter
import KangarooAppSdkCustomer

class UserAuthenticationHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {

    var methodChannel: String = "customer_sdk/methods/user_authentication"

    var eventChannel: String = "customer_sdk/events/user_authentication"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await UserAuthenticationHandler.authenticateUser(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }

    var sink: FlutterEventSink?

    static func authenticateUser(call: FlutterMethodCall) async -> String? {
        guard let args = call.arguments else {
            return nil
        }

        do {
            if let myArgs = args as? [String: Any],
               let username = myArgs["username"] as? String,
               let password = myArgs["password"] as? String {
                let result = try await UserAuthenticationApi().authenticateUser(
                    username: username,
                    password: password
                ).serializeUserAuthenticationResult()

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
        } catch {
         return nil
        }
        return nil
    }
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        sink = events
        UserAuthenticationApi().userAuthenticationState.serializeUserAuthenticationState().observe { result in
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
