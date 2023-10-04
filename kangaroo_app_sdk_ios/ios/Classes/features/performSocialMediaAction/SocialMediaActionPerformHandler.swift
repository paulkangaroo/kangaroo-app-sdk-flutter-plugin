import Foundation
import Flutter
import KangarooAppSdkCustomer

class SocialMediaActionPerformHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/perform_social_media_action"

    var eventChannel: String = "customer_sdk/events/perform_social_media_action"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        SocialMediaActionPerformHandler.performSocialMediaAction(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func performSocialMediaAction(call: FlutterMethodCall) {
        

        

        
        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let performSocialMediaActionRequest = call.arguments as? [String : Any] else {return}
                guard let businessId = myArgs["businessId"] as? String else {return}

            SocialMediaActionPerformApi().performSocialMediaAction(
                methods: performSocialMediaActionRequest,
                businessId: businessId,

            )
        }
        


    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        SocialMediaActionPerformApi().socialMediaActionPerformState
            .serializeSocialMediaActionPerformState().observe { result in
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
