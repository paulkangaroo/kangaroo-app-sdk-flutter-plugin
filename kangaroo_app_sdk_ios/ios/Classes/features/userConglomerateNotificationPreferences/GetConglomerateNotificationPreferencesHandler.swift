import Foundation
import Flutter
import KangarooAppSdkCustomer

class GetConglomerateNotificationPreferencesHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/get_conglomerate_notification_preferences"

    var eventChannel: String = "customer_sdk/events/get_conglomerate_notification_preferences"

    func onMethodCall(call: FlutterMethodCall) -> Void? {
        GetConglomerateNotificationPreferencesHandler.getConglomerateNotificationPreferences(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func getConglomerateNotificationPreferences(call: FlutterMethodCall) {
        GetConglomerateNotificationPreferencesApi().getConglomerateNotificationPreferences()

        

        

        
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping
        FlutterEventSink) -> FlutterError? {
        sink = events
        GetConglomerateNotificationPreferencesApi().getConglomerateNotificationPreferencesState
            .serializeGetConglomerateNotificationPreferencesState().observe { result in
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
