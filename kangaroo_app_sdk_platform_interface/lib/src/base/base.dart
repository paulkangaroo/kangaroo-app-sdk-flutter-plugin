import 'package:flutter/services.dart';

const MethodChannel sdkMethodChannel =
    const MethodChannel('kangaroo_sdk/method_channel');

const MethodChannel sdkMethodChannelProfile =
const MethodChannel('kangaroo_sdk/method_channel/profile');

Function() doNothing = () => {};