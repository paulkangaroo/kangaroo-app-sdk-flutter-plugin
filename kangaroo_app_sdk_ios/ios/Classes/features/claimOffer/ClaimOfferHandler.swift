import Foundation
import Flutter
import KangarooAppSDKiOS

class ClaimOfferHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/claim_offer"

    var eventChannel: String = "customer_sdk/events/claim_offer"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        ClaimOfferHandler.claimOffer(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func claimOffer(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let offerId = myArgs["offerId"] as? Int32 else {return}
                guard let customerId = myArgs["customerId"] as? String else {return}

            ClaimOfferApi().claimOffer(
                offerId: offerId,
                customerId: customerId
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        ClaimOfferApi().claimOfferState
            .serializeClaimOfferState().observe { result in
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
