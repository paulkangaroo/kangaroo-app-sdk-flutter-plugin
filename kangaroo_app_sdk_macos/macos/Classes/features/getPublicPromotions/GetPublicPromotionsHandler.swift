import Foundation
import FlutterMacOS
import KangarooAppSdkCustomer

class GetPublicPromotionsHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_public_promotions"

    var eventChannel: String = "customer_sdk/events/get_public_promotions"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await GetPublicPromotionsHandler.getPublicPromotions(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getPublicPromotions(call: FlutterMethodCall) async -> String? {


        


        

        guard let args = call.arguments else {
            return nil
        }
        do {
       if let myArgs = args as? [String: Any] {
          let overrideHeaders = myArgs["overrideHeaders"] as? [String: String]
                        guard let campaignId = myArgs["campaignId"] as? String else {return nil}

        let result = try await GetPublicPromotionsApi().getPublicPromotions(
                overrideHeaders: overrideHeaders,
                campaignId: campaignId
           ).serializeGetPublicPromotionsApiResult()

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
        GetPublicPromotionsApi().getPublicPromotionsState
            .serializeGetPublicPromotionsState().observe { result in
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
