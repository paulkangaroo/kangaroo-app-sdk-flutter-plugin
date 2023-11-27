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
        

        


        

        guard let args = call.arguments else {
            return nil
        }
        do {
       if let myArgs = args as? [String: Any] {
                        let firstName = myArgs["firstName"] as? String? ?? nil
                let lastName = myArgs["lastName"] as? String? ?? nil
                let birthDate = myArgs["birthDate"] as? String? ?? nil
                let language = myArgs["language"] as? String? ?? nil
                let gender = myArgs["gender"] as? String? ?? nil
                let profilePhoto = myArgs["profilePhoto"] as? String? ?? nil

         let result = try await UserProfileUpdateApi().updateUserProfile(
                firstName: firstName,
                lastName: lastName,
                birthDate: birthDate,
                language: language,
                gender: gender,
                profilePhoto: profilePhoto
            ).serializeNative()

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
