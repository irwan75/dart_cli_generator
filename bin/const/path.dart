abstract class PathFolder {
  static const String packagesFolder = '/packages';

  // Data Folder
  static const String packagesDataFolder = '/packages/data';
  static const String packagesDataLibFolder = '/packages/data/lib';
  static const String packagesDataLibConstFolder = '/packages/data/lib/const';
  static const String packagesDataLibDataSourceFolder =
      '/packages/data/lib/data_source';
  static const String packagesDataLibModelsFolder = '/packages/data/lib/models';
  static const String packagesDataLibModelsOthersFolder =
      '/packages/data/lib/models/others';
  static const String packagesDataLibModelsRequestFolder =
      '/packages/data/lib/models/request';
  static const String packagesDataLibModelsResponseFolder =
      '/packages/data/lib/models/response';
  static const String packagesDataLibRepoFolder =
      '/packages/data/lib/repository';

  static final pathDataFolder = [
    packagesDataFolder,
    packagesDataLibFolder,
    packagesDataLibConstFolder,
    packagesDataLibDataSourceFolder,
    packagesDataLibModelsFolder,
    packagesDataLibModelsOthersFolder,
    packagesDataLibModelsRequestFolder,
    packagesDataLibModelsResponseFolder,
    packagesDataLibRepoFolder,
  ];

  // Services Folder
  static const String packagesServicesFolder = '/packages/services';
  static const String packagesServicesLibFolder = '/packages/services/lib';
  static const String packagesServicesLibDepInjectFolder =
      '/packages/services/lib/dependency_injection';
  static const String packagesServicesLibExternalFolder =
      '/packages/services/lib/external_services';
  static const String packagesServicesLibInternalFolder =
      '/packages/services/lib/internal_services';
  static const String packagesServicesLibUtilsFolder =
      '/packages/services/lib/utils';

  static final pathServiceFolder = [
    packagesServicesFolder,
    packagesServicesLibFolder,
    packagesServicesLibDepInjectFolder,
    packagesServicesLibExternalFolder,
    packagesServicesLibInternalFolder,
    packagesServicesLibUtilsFolder,
  ];
}

abstract class Question {
  static const String projectName = 'Project Name?';
  static const String companyDomain = "Your company's domain?";
  static const String exampleCompanyDomain = 'Example: com.yourcompany';
  static const String iosLanguange =
      'Languange do you want to iOS default code?';
  static const String androidLanguange =
      'Languange do you want to Android default code?';
  static const String nullSafety = 'Do you want to use null safety?';
  static const String linterRule = 'Do you want to use some linter?';
}

abstract class FileNameandPath {
  static const String analysisOption = '/analysis_options.yaml';

  // Data Const
  static const String fileConstDurationAnimate =
      '/packages/data/lib/const/duration_animate.dart';
  static const String fileConstEnum = '/packages/data/lib/const/enum.dart';
  static const String fileConstHardCodeCritical =
      '/packages/data/lib/const/hard_code_critical.dart';
  static const String fileConstBorderRadius =
      '/packages/data/lib/const/sized_border_radius.dart';
  static const String fileConstFontWeight =
      '/packages/data/lib/const/sized_font_weight.dart';
  static const String fileConstSizedFont =
      '/packages/data/lib/const/sized_font.dart';
  static const String fileConstGeneralWidget =
      '/packages/data/lib/const/sized_general_widget.dart';
  static const String fileConstSizedImage =
      '/packages/data/lib/const/sized_image.dart';
  static const String fileConstMarginPadding =
      '/packages/data/lib/const/sized_margin_padding.dart';
  static const String fileConstSizedSpace =
      '/packages/data/lib/const/sized_space.dart';

  // Data Source
  static const String fileDataSourceSharedPreferences =
      '/packages/data/lib/data_source/shared_preferences.dart';
  static const String fileDataSourceUrls =
      '/packages/data/lib/data_source/urls.dart';

  // Data Models Others
  static const String fileModelsOthersHandleFailure =
      '/packages/data/lib/models/others/handle_failure.dart';
  static const String fileModelsOthersObjectBody =
      '/packages/data/lib/models/others/object_body.dart';
  static const String fileModelsOthersOnSuccess =
      '/packages/data/lib/models/others/on_success.dart';
  static const String fileModelsOthersResponsiveSized =
      '/packages/data/lib/models/others/responsive_sized.dart';
  static const String fileModelsOthersHandleStatus =
      '/packages/data/lib/models/others/tupple_handle_status.dart';
  static const String fileModelsOthersTupple =
      '/packages/data/lib/models/others/tupple.dart';

  // Data Models Request
  static const String fileModelsRequestDataItem =
      '/packages/data/lib/models/request/data_item_request.dart';

  // Data Models Response
  static const String fileModelsResponseDataItem =
      '/packages/data/lib/models/response/data_item_response.dart';

  // Data Repository
  static const String fileRepositoryOrderRepository =
      '/packages/data/lib/repository/order_repository.dart';

  // Services Dependency Injection
  static const String packagesServicesLibDIExternal =
      '/packages/services/lib/dependency_injection/di_external_services.dart';
  static const String packagesServicesLibDIInternal =
      '/packages/services/lib/dependency_injection/di_internal_services.dart';
  static const String packagesServicesLibDIUtils =
      '/packages/services/lib/dependency_injection/di_utils_services.dart';

  // Services External Service
  static const String packagesServicesLibExternalFcm =
      '/packages/services/lib/external_services/fcm.dart';
  static const String packagesServicesLibExternalImagePicker =
      '/packages/services/lib/external_services/get_image_picker.dart';

  // Service Internal Service
  static const String packagesServicesLibInternalGetApi =
      '/packages/services/lib/internal_services/get_data_api.dart';
  static const String packagesServicesLibInternalLoggerServ =
      '/packages/services/lib/internal_services/logger_serv.dart';
  static const String packagesServicesLibRunningCodeTimer =
      '/packages/services/lib/internal_services/running_code_timer.dart';

  // Service Utils
  static const String packagesServicesLibUtilsExtensionCustom =
      '/packages/services/lib/utils/extension_custom.dart';
  static const String packagesServicesLibUtilsFormatter =
      '/packages/services/lib/utils/formatter.dart';
  static const String packagesServicesLibUtilsIdentifyDevice =
      '/packages/services/lib/utils/identify_device.dart';
  static const String packagesServicesLibUtilsValidator =
      '/packages/services/lib/utils/validator.dart';

  // Pubspec.yaml
  static const String packagesServicesPubspec =
      '/packages/services/pubspec.yaml';
  static const String packagesDataPubspec =
      '/packages/data/pubspec.yaml';

  static final pathFileandName = [
    analysisOption,
    fileConstDurationAnimate,
    fileConstEnum,
    fileConstHardCodeCritical,
    fileConstBorderRadius,
    fileConstFontWeight,
    fileConstSizedFont,
    fileConstGeneralWidget,
    fileConstSizedImage,
    fileConstMarginPadding,
    fileConstSizedSpace,
    fileDataSourceSharedPreferences,
    fileDataSourceUrls,
    fileModelsOthersHandleFailure,
    fileModelsOthersObjectBody,
    fileModelsOthersOnSuccess,
    fileModelsOthersResponsiveSized,
    fileModelsOthersHandleStatus,
    fileModelsOthersTupple,
    fileModelsRequestDataItem,
    fileModelsResponseDataItem,
    fileRepositoryOrderRepository,
    packagesServicesLibDIExternal,
    packagesServicesLibDIInternal,
    packagesServicesLibDIUtils,
    packagesServicesLibExternalFcm,
    packagesServicesLibExternalImagePicker,
    packagesServicesLibInternalGetApi,
    packagesServicesLibInternalLoggerServ,
    packagesServicesLibRunningCodeTimer,
    packagesServicesLibUtilsExtensionCustom,
    packagesServicesLibUtilsFormatter,
    packagesServicesLibUtilsIdentifyDevice,
    packagesServicesLibUtilsValidator,
    packagesServicesPubspec,
    packagesDataPubspec,
  ];
}
