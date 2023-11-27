import Foundation
import Flutter
import KangarooAppSdkCustomer

class PayPalPaymentHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/make_pay_pal_payment"

    var eventChannel: String = "customer_sdk/events/make_pay_pal_payment"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await PayPalPaymentHandler.makePayPalPayment(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func makePayPalPayment(call: FlutterMethodCall) async -> String? {
        

        


        

        guard let args = call.arguments else {
            return nil
        }
        do {
       if let myArgs = args as? [String: Any] {
                        guard let intent = myArgs["intent"] as? String else {return nil}
                guard let provider = myArgs["provider"] as? String else {return nil}
                guard let giftcardId = myArgs["giftcardId"] as? Int32 else {return nil}
                guard let paypalReturnUrl = myArgs["paypalReturnUrl"] as? String else {return nil}
                guard let paypalCancelUrl = myArgs["paypalCancelUrl"] as? String else {return nil}

         let result = try await PayPalPaymentApi().makePayPalPayment(
                intent: intent,
                provider: provider,
                giftcardId: giftcardId,
                paypalReturnUrl: paypalReturnUrl,
                paypalCancelUrl: paypalCancelUrl
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
        PayPalPaymentApi().payPalPaymentState
            .serializePayPalPaymentState().observe { result in
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
