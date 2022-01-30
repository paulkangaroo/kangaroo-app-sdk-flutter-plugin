import Foundation
import Flutter
import KangarooAppSDKiOS

class FrequentBuyerHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_frequent_buyer"

    var eventChannel: String = "customer_sdk/events/get_frequent_buyer"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        FrequentBuyerHandler.getFrequentBuyer(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getFrequentBuyer(call: FlutterMethodCall) {
        FrequentBuyerApi().getFrequentBuyer()

        
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        FrequentBuyerApi().frequentBuyerState
            .serializeFrequentBuyerState().observe { result in
            switch result {
            case let result as SerializedResultIdle:
                self.sink?(result.state)
            case let result as SerializedResultLoading:
                self.sink?(result.state)
            case let result as SerializedResultSuccess:
                self.sink?(result.data)
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
