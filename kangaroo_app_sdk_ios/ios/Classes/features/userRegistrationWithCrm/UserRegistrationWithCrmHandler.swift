import Foundation
import Flutter
import KangarooAppSdkCustomer

class UserRegistrationWithCrmHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/create_account_with_crm"

    var eventChannel: String = "customer_sdk/events/create_account_with_crm"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserRegistrationWithCrmHandler.createAccountWithCrm(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func createAccountWithCrm(call: FlutterMethodCall) {
        

        
        UserRegistrationWithCrmApi().createAccountWithCrm(methods: call.arguments as! [String : Any])

        


    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserRegistrationWithCrmApi().userRegistrationWithCrmState
            .serializeUserRegistrationWithCrmState().observe { result in
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
