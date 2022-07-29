import Foundation
import Flutter
import KangarooAppSDKiOS

class UserBusinessFrequentBuyerProgramsHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_user_business_frequent_buyer_programs"

    var eventChannel: String = "customer_sdk/events/get_user_business_frequent_buyer_programs"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserBusinessFrequentBuyerProgramsHandler.getUserBusinessFrequentBuyerPrograms(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getUserBusinessFrequentBuyerPrograms(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let businessId = myArgs["businessId"] as? String else {return}

            UserBusinessFrequentBuyerProgramsApi().getUserBusinessFrequentBuyerPrograms(
                businessId: businessId
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserBusinessFrequentBuyerProgramsApi().userBusinessFrequentBuyerProgramsState
            .serializeUserBusinessFrequentBuyerProgramsState().observe { result in
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
