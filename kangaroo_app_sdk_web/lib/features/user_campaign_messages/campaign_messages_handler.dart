// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_campaign_messages/campaign_messages_platform_interface.dart';


class CampaignMessagesHandler extends CampaignMessagesApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    CampaignMessagesApiInterface.instance = CampaignMessagesHandler();
  }

  @override
  getCampaignMessages({ 
        required final String businessId
    }) {
    CampaignMessagesApi().getCampaignMessages(
      businessId
    );
  }

  @override
  Stream<Result<CampaignMessagesModel>> get campaignMessagesStream {
    var controller = StreamController<String>();

    CampaignMessagesApi().observeCampaignMessagesState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = CampaignMessagesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CampaignMessagesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userCampaignMessages.CampaignMessagesApi')
class CampaignMessagesApi {
  external CampaignMessagesApi();

  external void getCampaignMessages( 
        String businessId
    );

  external void observeCampaignMessagesState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

