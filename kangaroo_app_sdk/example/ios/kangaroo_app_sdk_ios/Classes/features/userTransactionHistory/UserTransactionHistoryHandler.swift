import Foundation
import Flutter
import KangarooAppSDKiOS

class UserTransactionHistoryHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_user_transaction_history"

    var eventChannel: String = "customer_sdk/events/get_user_transaction_history"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UserTransactionHistoryHandler.getUserTransactionHistory(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getUserTransactionHistory(call: FlutterMethodCall) {
        UserTransactionHistoryApi().getUserTransactionHistory()

        
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UserTransactionHistoryApi().userTransactionHistoryState
            .serializeUserTransactionHistoryState().observe { result in
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
