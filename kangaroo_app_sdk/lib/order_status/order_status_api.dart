import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/order_status/order_status_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/order_status/order_status_platform_interface.dart';

class OrderStatusApi {
  static Future<Result<OrderStatusResponseModel>?> getOrderStatus({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return OrderStatusApiInterface.instance.getOrderStatus( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<OrderStatusResponseModel>> get orderStatusStream {
    return OrderStatusApiInterface.instance.orderStatusStream;
  }
}
