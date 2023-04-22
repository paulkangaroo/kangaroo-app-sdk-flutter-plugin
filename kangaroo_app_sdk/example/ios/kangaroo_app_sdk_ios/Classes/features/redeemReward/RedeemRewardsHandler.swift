import Foundation
import Flutter
import KangarooAppSDKiOS

class RedeemRewardsHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/redeem_reward"

    var eventChannel: String = "customer_sdk/events/redeem_reward"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        RedeemRewardsHandler.redeemReward(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func redeemReward(call: FlutterMethodCall) {
        
        RedeemRewardsApi().redeemReward(methods: call.arguments as! [String : Any])

    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        RedeemRewardsApi().redeemRewardsState
            .serializeRedeemRewardsState().observe { result in
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
