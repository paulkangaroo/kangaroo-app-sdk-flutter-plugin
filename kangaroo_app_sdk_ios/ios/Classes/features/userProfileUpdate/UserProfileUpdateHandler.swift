import Foundation
import Flutter
import KangarooAppSdkCustomer

class UserProfileUpdateHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/update_user_profile"

    var eventChannel: String = "customer_sdk/events/update_user_profile"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await UserProfileUpdateHandler.updateUserProfile(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func updateUserProfile(call: FlutterMethodCall) async -> String? {


        
    let args = call.arguments
        do {

        var overrideHeaders: [String: String]?

        if let myArgs = args as? [String: Any] {
            overrideHeaders = myArgs["overrideHeaders"] as? [String: String]
        }
        else {
            overrideHeaders = [:]
        }

        let result = try await UserProfileUpdateApi().updateUserProfile(overrideHeaders: overrideHeaders, methods: call.arguments as! [String : Any]).serializeUserProfileUpdateApiResult()

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
        catch {
            return nil
        }


        


        return nil
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserProfileUpdateApi().userProfileUpdateState
            .serializeUserProfileUpdateState().observe { result in
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
