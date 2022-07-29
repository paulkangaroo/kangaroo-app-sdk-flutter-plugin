import Foundation
import Flutter
import KangarooAppSDKiOS

class PayPalPaymentHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/make_pay_pal_payment"

    var eventChannel: String = "customer_sdk/events/make_pay_pal_payment"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        PayPalPaymentHandler.makePayPalPayment(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func makePayPalPayment(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let intent = myArgs["intent"] as? String else {return}
                guard let provider = myArgs["provider"] as? String else {return}
                guard let giftcardId = myArgs["giftcardId"] as? Int32 else {return}
                guard let paypalReturnUrl = myArgs["paypalReturnUrl"] as? String else {return}
                guard let paypalCancelUrl = myArgs["paypalCancelUrl"] as? String else {return}

            PayPalPaymentApi().makePayPalPayment(
                intent: intent,
                provider: provider,
                giftcardId: giftcardId,
                paypalReturnUrl: paypalReturnUrl,
                paypalCancelUrl: paypalCancelUrl
            )
        }
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
