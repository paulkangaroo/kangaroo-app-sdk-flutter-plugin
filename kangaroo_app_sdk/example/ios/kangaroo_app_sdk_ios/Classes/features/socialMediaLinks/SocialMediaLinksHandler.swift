import Foundation
import Flutter
import KangarooAppSDKiOS

class SocialMediaLinksHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_social_media_links"

    var eventChannel: String = "customer_sdk/events/get_social_media_links"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        SocialMediaLinksHandler.getSocialMediaLinks(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getSocialMediaLinks(call: FlutterMethodCall) {
        SocialMediaLinksApi().getSocialMediaLinks()

        
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        SocialMediaLinksApi().socialMediaLinksState
            .serializeSocialMediaLinksState().observe { result in
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
