import Foundation
import Flutter
import KangarooAppSdkCustomer

class UserAuthenticationHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {

    var methodChannel: String = "customer_sdk/methods/user_authentication"
    
    var eventChannel: String = "customer_sdk/events/user_authentication"
    
    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserAuthenticationHandler.authenticateUser(call: call)
    }
    
    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }
    
    var sink: FlutterEventSink?
    
    static func authenticateUser(call: FlutterMethodCall) {
        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any],
           let username = myArgs["username"] as? String,
           let password = myArgs["password"] as? String {
            UserAuthenticationApi().authenticateUser(
                username: username,
                password: password
            )
        }
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
