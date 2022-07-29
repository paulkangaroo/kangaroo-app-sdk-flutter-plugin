import Foundation
import Flutter
import KangarooAppSDKiOS

class UpdateDefaultBusinessIdHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/update_default_business_id"

    var eventChannel: String = "customer_sdk/events/update_default_business_id"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        UpdateDefaultBusinessIdHandler.updateDefaultBusinessId(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func updateDefaultBusinessId(call: FlutterMethodCall) {
        

        guard let args = call.arguments else {
            return
        }
        if let myArgs = args as? [String: Any] {
                        guard let businessId = myArgs["businessId"] as? String else {return}
                guard let defaultBusinessId = myArgs["defaultBusinessId"] as? String else {return}

            UpdateDefaultBusinessIdApi().updateDefaultBusinessId(
                businessId: businessId,
                defaultBusinessId: defaultBusinessId
            )
        }
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        UpdateDefaultBusinessIdApi().updateDefaultBusinessIdState
            .serializeUpdateDefaultBusinessIdState().observe { result in
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
