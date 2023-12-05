//
//  PluginChannelHandler.swift
//  fluttertoast
//
//  Created by Paul on 2021-10-17.
//

import Foundation
import Flutter

protocol PluginChannelHandler {
    var methodChannel: String { get set}
    var eventChannel: String { get set}

    func onMethodCall(call: FlutterMethodCall) async -> Any?
    
    func getStreamHandler() -> (FlutterStreamHandler & NSObjectProtocol)?
}
