import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_unsubscribe/user_unsubscribe_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_unsubscribe/user_unsubscribe_platform_interface.dart';

class UserUnsubscribeApi {
  static unsubscribe({ 
    required final String campaignId,
    required final String token,
  }) {
    UserUnsubscribeApiInterface.instance.unsubscribe( 
      campaignId: campaignId,
      token: token,
    );
  }

  static Stream<Result<EmptyResponse>> get userUnsubscribeStream {
    return UserUnsubscribeApiInterface.instance.userUnsubscribeStream;
  }
}
