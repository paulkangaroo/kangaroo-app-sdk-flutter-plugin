import Foundation
import Flutter
import KangarooAppSdkCustomer

class UserPinResetRequestHandler: NSObject, FlutterStreamHandler, PluginChannelHandler {
    var sink: FlutterEventSink?

    var methodChannel: String = "customer_sdk/methods/request_pin_reset"

    var eventChannel: String = "customer_sdk/events/request_pin_reset"

    func onMethodCall(call: FlutterMethodCall) async -> Any? {
        return await UserPinResetRequestHandler.requestPinReset(call: call)
    }

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)? {
        return self
    }


    static func requestPinReset(call: FlutterMethodCall) async -> String? {
        

        


        

        guard let args = call.arguments else {
            return nil
        }
        do {
       if let myArgs = args as? [String: Any] {
                        guard let mode = myArgs["mode"] as? String else {return nil}
                let email = myArgs["email"] as? String? ?? nil
                let phone = myArgs["phone"] as? String? ?? nil
                let countryCode = myArgs["countryCode"] as? String? ?? nil

         let result = try await UserPinResetRequestApi().requestPinReset(
                mode: mode,
                email: email,
                phone: phone,
                countryCode: countryCode
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
        UserPinResetRequestApi().userPinResetRequestState
            .serializeUserPinResetRequestState().observe { result in
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
