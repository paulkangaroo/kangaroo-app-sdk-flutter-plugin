import Foundation
import Flutter
import KangarooAppSDKiOS

class OfferFacebookShareHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/post_offer_facebook_share"

    var eventChannel: String = "customer_sdk/events/post_offer_facebook_share"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        OfferFacebookShareHandler.postOfferFacebookShare(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func postOfferFacebookShare(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let offerId = myArgs["offerId"] as? String else {return}
                guard let include = myArgs["include"] as? String else {return}
                guard let facebookUserId = myArgs["facebookUserId"] as? String else {return}
                guard let type = myArgs["type"] as? String else {return}
                guard let friendsCount = myArgs["friendsCount"] as? String else {return}

            OfferFacebookShareApi().postOfferFacebookShare(
                offerId: offerId,
                include: include,
                facebookUserId: facebookUserId,
                type: type,
                friendsCount: friendsCount
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        OfferFacebookShareApi().offerFacebookShareState
            .serializeOfferFacebookShareState().observe { result in
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
