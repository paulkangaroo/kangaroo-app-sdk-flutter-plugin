import Foundation
import Flutter
import KangarooAppSdkCustomer

class UserBusinessGiftCardsHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_user_business_gift_cards"

    var eventChannel: String = "customer_sdk/events/get_user_business_gift_cards"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await UserBusinessGiftCardsHandler.getUserBusinessGiftCards(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getUserBusinessGiftCards(call: FlutterMethodCall) async -> String? {
        

        


        

        guard let args = call.arguments else {
            return nil
        }
        do {
       if let myArgs = args as? [String: Any] {
                        guard let businessId = myArgs["businessId"] as? String else {return nil}

         let result = try await UserBusinessGiftCardsApi().getUserBusinessGiftCards(
                businessId: businessId
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
        UserBusinessGiftCardsApi().userBusinessGiftCardsState
            .serializeUserBusinessGiftCardsState().observe { result in
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
