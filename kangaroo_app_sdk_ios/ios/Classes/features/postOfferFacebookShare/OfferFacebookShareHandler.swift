import Foundation
import Flutter
import KangarooAppSdkCustomer

class OfferFacebookShareHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/post_offer_facebook_share"

    var eventChannel: String = "customer_sdk/events/post_offer_facebook_share"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await OfferFacebookShareHandler.postOfferFacebookShare(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func postOfferFacebookShare(call: FlutterMethodCall) async -> String? {
        

        


        

        guard let args = call.arguments else {
            return nil
        }
        do {
       if let myArgs = args as? [String: Any] {
                        guard let offerId = myArgs["offerId"] as? String else {return nil}
                guard let include = myArgs["include"] as? String else {return nil}
                guard let facebookUserId = myArgs["facebookUserId"] as? String else {return nil}
                guard let type = myArgs["type"] as? String else {return nil}
                guard let friendsCount = myArgs["friendsCount"] as? String else {return nil}

         let result = try await OfferFacebookShareApi().postOfferFacebookShare(
                offerId: offerId,
                include: include,
                facebookUserId: facebookUserId,
                type: type,
                friendsCount: friendsCount
            ).serializeOfferFacebookShareApiResult()

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
