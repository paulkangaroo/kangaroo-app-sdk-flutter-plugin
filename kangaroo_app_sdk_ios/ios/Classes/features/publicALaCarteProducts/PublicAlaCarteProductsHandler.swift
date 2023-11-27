import Foundation
import Flutter
import KangarooAppSdkCustomer

class PublicAlaCarteProductsHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_public_ala_carte_products"

    var eventChannel: String = "customer_sdk/events/get_public_ala_carte_products"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await PublicAlaCarteProductsHandler.getPublicAlaCarteProducts(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getPublicAlaCarteProducts(call: FlutterMethodCall) async -> String? {
        do {
        let result = try await PublicAlaCarteProductsApi().getPublicAlaCarteProducts().serializePublicAlaCarteProductsApiResult()

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
        } catch {
            return nil
        }

        


        

        
        return nil
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        PublicAlaCarteProductsApi().publicAlaCarteProductsState
            .serializePublicAlaCarteProductsState().observe { result in
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
