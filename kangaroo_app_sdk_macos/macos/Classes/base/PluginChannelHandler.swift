import Foundation
import FlutterMacOS

protocol PluginChannelHandler {
    var methodChannel: String { get set}
    var eventChannel: String { get set}

    func onMethodCall(call: FlutterMethodCall) async -> Any?

    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)?
}
