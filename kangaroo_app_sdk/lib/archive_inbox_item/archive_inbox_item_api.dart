import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/archive_inbox_item/archive_inbox_item_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/archive_inbox_item/archive_inbox_item_platform_interface.dart';

class ArchiveInboxItemApi {
  static Future<Result<ArchiveResponseModel>?> archiveInboxItem({ 
    required final ArchiveRequest archiveRequest,
  }) {
    return ArchiveInboxItemApiInterface.instance.archiveInboxItem( 
      archiveRequest: archiveRequest,
    );
  }

  static Stream<Result<ArchiveResponseModel>> get archiveInboxItemStream {
    return ArchiveInboxItemApiInterface.instance.archiveInboxItemStream;
  }
}
