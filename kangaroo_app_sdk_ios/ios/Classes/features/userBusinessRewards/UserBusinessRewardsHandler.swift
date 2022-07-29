import Foundation
import Flutter
import KangarooAppSDKiOS

class UserBusinessRewardsHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_user_business_rewards"

    var eventChannel: String = "customer_sdk/events/get_user_business_rewards"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserBusinessRewardsHandler.getUserBusinessRewards(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getUserBusinessRewards(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let businessId = myArgs["businessId"] as? String else {return}

            UserBusinessRewardsApi().getUserBusinessRewards(
                businessId: businessId
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserBusinessRewardsApi().userBusinessRewardsState
            .serializeUserBusinessRewardsState().observe { result in
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
