import Foundation
import Flutter
import KangarooAppSdkCustomer

class RedeemAmazonCatalogueItemsHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/redeem_amazon_catalogue_item"

    var eventChannel: String = "customer_sdk/events/redeem_amazon_catalogue_item"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await RedeemAmazonCatalogueItemsHandler.redeemAmazonCatalogueItem(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func redeemAmazonCatalogueItem(call: FlutterMethodCall) async -> String? {


        
    let args = call.arguments
        do {

        var overrideHeaders: [String: String]?

        if let myArgs = args as? [String: Any] {
            overrideHeaders = myArgs["overrideHeaders"] as? [String: String]
        }
        else {
            overrideHeaders = [:]
        }

        let result = try await RedeemAmazonCatalogueItemsApi().redeemAmazonCatalogueItem(overrideHeaders: overrideHeaders, methods: call.arguments as! [String : Any]).serializeRedeemAmazonCatalogueItemsApiResult()

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
        RedeemAmazonCatalogueItemsApi().redeemAmazonCatalogueItemsState
            .serializeRedeemAmazonCatalogueItemsState().observe { result in
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
