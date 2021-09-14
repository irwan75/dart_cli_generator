abstract class DataQuery {
  static const String linterFormat = '''\n
#include: package:lint/analysis_options.yaml

# Not happy with the default? Customize the rules depending on your needs. 
# Here are some examples:
linter:
  rules:
    # Make constructors the first thing in every class
    sort_constructors_first: true

    # The new tabs vs. spaces. Choose wisely
    prefer_single_quotes: true
    prefer_double_quotes: true

    # Good packages document everything
    public_member_api_docs: true

    # Blindly follow the Flutter code style, which prefers types everywhere
    always_specify_types: true

    # Back to the 80s
    lines_longer_than_80_chars: true

    # Use parameter order as in json response
    always_put_required_named_parameters_first: false

    # Util classes are awesome!
    avoid_classes_with_only_static_members: false
  \n''';

  static const String pubspecYaml = '''
name: irwan
description: A new Flutter project.

# The following line prevents the package from being accidentally published to
# pub.dev using `flutter pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

# The following defines the version and build number for your application.
# A version number is three numbers separated by dots, like 1.2.43
# followed by an optional build number separated by a +.
# Both the version and the builder number may be overridden in flutter
# build by specifying --build-name and --build-number, respectively.
# In Android, build-name is used as versionName while build-number used as versionCode.
# Read more about Android versioning at https://developer.android.com/studio/publish/versioning
# In iOS, build-name is used as CFBundleShortVersionString while build-number used as CFBundleVersion.
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
version: 1.0.0+1

environment:
  sdk: ">=2.12.0 <3.0.0"

# Dependencies specify other packages that your package needs in order to work.
# To automatically upgrade your package dependencies to the latest versions
# consider running `flutter pub upgrade --major-versions`. Alternatively,
# dependencies can be manually updated by changing the version numbers below to
# the latest version available on pub.dev. To see which dependencies have newer
# versions available, run `flutter pub outdated`.
dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2

dev_dependencies:
  data:
    path: ./packages/data
  services:
    path: ./packages/services

  flutter_test:
    sdk: flutter
  get: 4.2.4
  http: ^0.13.3
  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^1.0.0

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  # assets:
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg

  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/assets-and-images/#resolution-aware.

  # For details regarding adding assets from package dependencies, see
  # https://flutter.dev/assets-and-images/#from-packages

  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  # fonts:
  #   - family: Schyler
  #     fonts:
  #       - asset: fonts/Schyler-Regular.ttf
  #       - asset: fonts/Schyler-Italic.ttf
  #         style: italic
  #   - family: Trajan Pro
  #     fonts:
  #       - asset: fonts/TrajanPro.ttf
  #       - asset: fonts/TrajanPro_Bold.ttf
  #         weight: 700
  #
  # For details regarding fonts from package dependencies,
  # see https://flutter.dev/custom-fonts/#from-packages

''';  

}

abstract class DataQueryData {
  static const String constDurationAnimate = '''
class DurationAnimate {
  DurationAnimate._();

  /// One minute
  static const int oneMin = 1;
  /// Two minute
  static const int twoMin = 2;
  /// Three minute
  static const int threeMin = 3;
  /// Four minute
  static const int fourMin = 4;
  /// Five minute
  static const int fiveMin = 5;
  /// Six minute
  static const int sixMin = 6;
  /// Seven minute
  static const int sevenMin = 7;
  /// Eight minute
  static const int eightMin = 8;

  /// One Hour
  static const int oneHour = 1;
  /// Two Hour
  static const int twoHour = 2;
  /// Three Hour
  static const int threeHour = 3;
  /// Four Hour
  static const int fourHour = 4;
}
''';

  static const String constBorderRadius = '''
class SizedBorderRadius {
  SizedBorderRadius._();

  /// Sized 2.0
  static const double borderRadiusSuperSmall = 2.0;
  /// Sized 4.0
  static const double borderRadiusSuperSmallx = 4.0;
  /// Sized 6.0
  static const double borderRadiusSuperSmallxx = 6.0;
  /// Sized 8.0
  static const double borderRadiusSmall = 8.0;
  /// Sized 10.0
  static const double borderRadiusSmallx = 10.0;
  /// Sized 12.0
  static const double borderRadiusSmallxx = 12.0;
  /// Sized 14.0
  static const double borderRadiusMedium = 14.0;
  /// Sized 16.0
  static const double borderRadiusMediumx = 16.0;
  /// Sized 18.0
  static const double borderRadiusMediumxx = 18.0;
  /// Sized 20.0
  static const double borderRadiusLarge = 20.0;
  /// Sized 22.0
  static const double borderRadiusLargex = 22.0;
  /// Sized 24.0
  static const double borderRadiusLargexx = 24.0;
  /// Sized 26.0
  static const double borderRadiusSuperLarge = 26.0;
  /// Sized 28.0
  static const double borderRadiusSuperLargex = 28.0;
  /// Sized 30.0
  static const double borderRadiusSuperLargexx = 30.0;
  /// Sized 32.0
  static const double borderRadiusSuperSuperLarge = 32.0;
  /// Sized 34.0
  static const double borderRadiusSuperSuperLargex = 34.0;
  /// Sized 36.0
  static const double borderRadiusSuperSuperLargexx = 36.0;
  /// Sized 38.0
  static const double borderRadiusExtraSuperLarge = 38.0;
  /// Sized 40.0
  static const double borderRadiusExtraSuperLargex = 40.0;
  /// Sized 42.0
  static const double borderRadiusExtraSuperLargexx = 42.0;
  /// Sized 44.0
  static const double borderRadiusExtraSuperSuperLarge = 44.0;
  /// Sized 48.0
  static const double borderRadiusExtraSuperSuperLargex = 48.0;
  /// Sized 50.0
  static const double borderRadiusRounded = 50.0;
}

''';

  static const String constFontWeight = '''
import 'package:flutter/material.dart';

class SizedFontWeight {
  SizedFontWeight._();

  /// FontWeight 100
  static const FontWeight textSuperTiny = FontWeight.w100;
  /// FontWeight 200
  static const FontWeight textTiny = FontWeight.w200;
  /// FontWeight 300
  static const FontWeight textSuperLight = FontWeight.w300;
  /// FontWeight 400
  static const FontWeight textLight = FontWeight.w400;
  /// FontWeight 500
  static const FontWeight textNormal = FontWeight.w500;
  /// FontWeight 600
  static const FontWeight textSemiBold = FontWeight.w600;
  /// FontWeight 700
  static const FontWeight textBold = FontWeight.w700;
  /// FontWeight 800
  static const FontWeight textSuperBold = FontWeight.w800;
  /// FontWeight 900
  static const FontWeight textExtraBold = FontWeight.w900;
}
''';

  static const String constFontSize = '''
class SizedFont {
  SizedFont._();

  /// Font Size 8.0
  static const double textSuperSmall = 8.0;
  /// Font Size 9.0
  static const double textSuperSmallx = 9.0;
  /// Font Size 10.0
  static const double textSuperSmallxx = 10.0;
  /// Font Size 11.0
  static const double textSmall = 11.0;
  /// Font Size 12.0
  static const double textSmallx = 12.0;
  /// Font Size 13.0
  static const double textSmallxx = 13.0;
  /// Font Size 14.0
  static const double textMedium = 14.0;
  /// Font Size 15.0
  static const double textMediumx = 15.0;
  /// Font Size 16.0
  static const double textMediumxx = 16.0;
  /// Font Size 17.0
  static const double textLarge = 17.0;
  /// Font Size 18.0
  static const double textLargex = 18.0;
  /// Font Size 19.0
  static const double textLargexx = 19.0;
  /// Font Size 20.0
  static const double textSuperLarge = 20.0;
  /// Font Size 21.0
  static const double textSuperLargex = 21.0;
  /// Font Size 22.0
  static const double textSuperLargexx = 22.0;
  /// Font Size 23.0
  static const double textSuperSuperLarge = 23.0;
  /// Font Size 24.0
  static const double textSuperSuperLargex = 24.0;
  /// Font Size 25.0
  static const double textSuperSuperLargexx = 25.0;
}
''';

  static const String constSizedGeneralWidget = '''
class SizedGeneralWidget {
  SizedGeneralWidget._();

  /// Sized General 2.0
  static const double sizedSuperSmall = 2.0;
  /// Sized General 3.0
  static const double sizedSuperSmallx = 3.0;
  /// Sized General 4.0
  static const double sizedSuperSmallxx = 4.0;
  /// Sized General 5.0
  static const double sizedSmall = 5.0;
  /// Sized General 6.0
  static const double sizedSmallx = 6.0;
  /// Sized General 7.0
  static const double sizedSmallxx = 7.0;
  /// Sized General 8.0
  static const double sizedMedium = 8.0;
  /// Sized General 9.0
  static const double sizedMediumx = 9.0;
  /// Sized General 10.0
  static const double sizedMediumxx = 10.0;
  /// Sized General 11.0
  static const double sizedLarge = 11.0;
  /// Sized General 12.0
  static const double sizedLargex = 12.0;
  /// Sized General 13.0
  static const double sizedLargexx = 13.0;
  /// Sized General 14.0
  static const double sizedSuperLarge = 14.0;
  /// Sized General 15.0
  static const double sizedSuperLargex = 15.0;
  /// Sized General 16.0
  static const double sizedSuperLargexx = 16.0;
  /// Sized General 17.0
  static const double sizedSuperSuperLarge = 17.0;
  /// Sized General 18.0
  static const double sizedSuperSuperLargex = 18.0;
  /// Sized General 19.0
  static const double sizedSuperSuperLargexx = 19.0;
  /// Sized General 20.0
  static const double sizedExtraSuperLarge = 20.0;
  /// Sized General 21.0
  static const double sizedExtraSuperLargex = 21.0;
  /// Sized General 22.0
  static const double sizedExtraSuperLargexx = 22.0;
}

''';

  static const constQualityImage = '''
class QualityImage{
  QualityImage._();

  /// Quality Image 20
  static const int qualityImageTwelve = 20;
  /// Quality Image 30
  static const int qualityImageThirty = 30;
  /// Quality Image 40
  static const int qualityImageFourty = 40;
  /// Quality Image 50
  static const int qualityImageFivety = 50;
  /// Quality Image 60
  static const int qualityImageSixty = 60;
  /// Quality Image 70
  static const int qualityImageSeventy = 70;
  /// Quality Image 80
  static const int qualityImageEighty = 80;
  /// Quality Image 90
  static const int qualityImageNinety = 90;
  /// Quality Image 100
  static const int qualityImageHundred = 100;

}
''';

  static const String constSizedIcons = '''
class SizedIcons{
  SizedIcons._();

  /// Sized Icons 2.0
  static const double sizedSuperSmall = 2.0;
  /// Sized Icons 3.0
  static const double sizedExtraSmall = 3.0;
  /// Sized Icons 4.0
  static const double sizedVerySmall = 4.0;
  /// Sized Icons 5.0
  static const double sizedTinySmall = 5.0;
  /// Sized Icons 6.0
  static const double sizedNormalSmall = 6.0;
  /// Sized Icons 7.0
  static const double sizedLightSmall = 7.0;
  /// Sized Icons 8.0
  static const double sizedSmall = 8.0;
  /// Sized Icons 9.0
  static const double sizedMedium = 9.0;
  /// Sized Icons 10.0
  static const double sizedLightMedium = 10.0;
  /// Sized Icons 11.0
  static const double sizedNormalMedium = 11.0;
  /// Sized Icons 12.0
  static const double sizedTinyMedium = 12.0;
  /// Sized Icons 13.0
  static const double sizedVeryMedium = 13.0;
  /// Sized Icons 14.0
  static const double sizedExtraMedium = 14.0;
  /// Sized Icons 15.0
  static const double sizedSuperMedium = 15.0;
  /// Sized Icons 16.0
  static const double sizedLarge = 16.0;
  /// Sized Icons 17.0
  static const double sizedLightLarge = 17.0;
  /// Sized Icons 18.0
  static const double sizedNormalLarge = 18.0;
  /// Sized Icons 19.0
  static const double sizedTinyLarge = 19.0;
  /// Sized Icons 20.0
  static const double sizedVeryLarge = 20.0;
  /// Sized Icons 21.0
  static const double sizedExtraLarge = 21.0;
  /// Sized Icons 22.0
  static const double sizedSuperLarge = 22.0;
  /// Sized Icons 23.0
  static const double sizedBig = 23.0;
  /// Sized Icons 24.0
  static const double sizedLightBig = 24.0;
  /// Sized Icons 25.0
  static const double sizedNormalBig = 25.0;
  /// Sized Icons 26.0
  static const double sizedVeryBig = 26.0;
  /// Sized Icons 27.0
  static const double sizedExtraBig = 27.0;
  /// Sized Icons 28.0
  static const double sizedSuperBig = 28.0;

}
''';

  static const String constSizedSpace = '''
class SizedSpace{
  SizedSpace._();

  /// Sized Space 2.0
  static const double sizedSuperSmall = 2.0;
  /// Sized Space 3.0
  static const double sizedExtraSmall = 3.0;
  /// Sized Space 4.0
  static const double sizedVerySmall = 4.0;
  /// Sized Space 5.0
  static const double sizedTinySmall = 5.0;
  /// Sized Space 6.0
  static const double sizedNormalSmall = 6.0;
  /// Sized Space 7.0
  static const double sizedLightSmall = 7.0;
  /// Sized Space 8.0
  static const double sizedSmall = 8.0;
  /// Sized Space 9.0
  static const double sizedMedium = 9.0;
  /// Sized Space 10.0
  static const double sizedLightMedium = 10.0;
  /// Sized Space 11.0
  static const double sizedNormalMedium = 11.0;
  /// Sized Space 12.0
  static const double sizedTinyMedium = 12.0;
  /// Sized Space 13.0
  static const double sizedVeryMedium = 13.0;
  /// Sized Space 14.0
  static const double sizedExtraMedium = 14.0;
  /// Sized Space 15.0
  static const double sizedSuperMedium = 15.0;
  /// Sized Space 16.0
  static const double sizedLarge = 16.0;
  /// Sized Space 17.0
  static const double sizedLightLarge = 17.0;
  /// Sized Space 18.0
  static const double sizedNormalLarge = 18.0;
  /// Sized Space 19.0
  static const double sizedTinyLarge = 19.0;
  /// Sized Space 20.0
  static const double sizedVeryLarge = 20.0;
  /// Sized Space 21.0
  static const double sizedExtraLarge = 21.0;
  /// Sized Space 22.0
  static const double sizedSuperLarge = 22.0;
  /// Sized Space 23.0
  static const double sizedBig = 23.0;
  /// Sized Space 24.0
  static const double sizedLightBig = 24.0;
  /// Sized Space 25.0
  static const double sizedNormalBig = 25.0;
  /// Sized Space 26.0
  static const double sizedVeryBig = 26.0;
  /// Sized Space 27.0
  static const double sizedExtraBig = 27.0;
  /// Sized Space 28.0
  static const double sizedSuperBig = 28.0;

}
''';

  static const String constMarginPadding = '''
class SizedMarginPadding {
  SizedMarginPadding._();

  static const double sized_2 = 2.0;
  static const double sized_3 = 3.0;
  static const double sized_4 = 4.0;
  static const double sized_5 = 5.0;
  static const double sized_6 = 6.0;
  static const double sized_7 = 7.0;
  static const double sized_8 = 8.0;
  static const double sized_9 = 9.0;
  static const double sized_10 = 10.0;
  static const double sized_11 = 11.0;
  static const double sized_12 = 12.0;
  static const double sized_13 = 13.0;
  static const double sized_14 = 14.0;
  static const double sized_15 = 15.0;
  static const double sized_16 = 16.0;
  static const double sized_17 = 17.0;
  static const double sized_20 = 20.0;
  static const double sized_40 = 40.0;
  static const double sized_70 = 70.0;
  static const double sized_90 = 90.0;
}

''';

  static const String constSizedWidthHeight = '''
class SizedWidthHeight{
  SizedWidthHeight._();
  
  /// Sized Space 350
  static const double widthHeight_350 = 350;
  /// Sized Space 300
  static const double widthHeight_300 = 300;
}
''';

  static const String constUrls = '''
abstract class BaseUrl {
  BaseUrl._();

  static final urls = Urls();

  static const baseUrl = "https://api.dmisulsel.com/";
}

class Urls {
  Urls();

  static const _base = BaseUrl.baseUrl;

  static const showItem = _base+"category/item?id_item=2001";
}
''';

  static const modelsHandleFailure = '''
class HandleFailure {
  int? statusCode;
  String? message;

  HandleFailure({
    this.statusCode,
    this.message,
  });
}
''';

  static const modelsObjectBody = '''
class ObjectBody {
  dynamic objectBody;

  ObjectBody(this.objectBody);
}
''';

  static const modelsOnSuccess = '''
class OnSuccess {
  String? responseData;
  OnSuccess({
    this.responseData,
  });
}
''';

  static const modelsTuppleHandleStatus = '''
class TuppleHandleStatusCode<bool, HandleFailure> {
  bool? status;
  HandleFailure? handleFailure;

  TuppleHandleStatusCode({this.status, this.handleFailure});
}
''';

  static const modelsTupple = '''
class Tupple<HandleFailure, OnSuccess> {
  HandleFailure? handleFailure;
  OnSuccess? onSuccess;

  Tupple({this.handleFailure, this.onSuccess});
}
''';

  static const pubspecYaml = '''
name: data
version: 1.0.0+1
publish_to: none
description: Data Packages.
environment: 
  sdk: '>=2.12.0 <3.0.0'

dependencies: 
  cupertino_icons: ^1.0.2
  get: 4.2.4
  flutter: 
    sdk: flutter

dev_dependencies: 
  flutter_test: 
    sdk: flutter

flutter: 
  uses-material-design: true


''';
}

abstract class DataQueryServices {
  static const String getDataApi = '''
import 'package:data/models/others/tupple.dart';
import 'package:data/models/others/handle_failure.dart';
import 'package:data/models/others/on_success.dart';
import 'package:data/models/others/object_body.dart';
import 'package:data/models/others/tupple_handle_status.dart';
import 'package:http/http.dart' as http;

class GetDataAPI {
  Future<Tupple<HandleFailure, OnSuccess>> getdataAPI(
      {required String baseUrl,
      required String endPoint,
      required String nullSafety}) async {
    try {
      var responseResult = await http.post(Uri.parse(baseUrl + endPoint));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  Future<Tupple<HandleFailure, OnSuccess>> getdataAPIHeaders(
      {required String baseUrl,
      required String endPoint,
      required Map<String, String> headers,
      required String nullSafety}) async {
    try {
      var responseResult =
          await http.post(Uri.parse(baseUrl + endPoint), headers: headers);
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  Future<Tupple<HandleFailure, OnSuccess>> getdataAPIHeadersBody(
      {required String baseUrl,
      required String endPoint,
      required Map<String, String> headers,
      required ObjectBody bodyObject,
      required String nullSafety}) async {
    try {
      var responseResult = await http.post(Uri.parse(baseUrl + endPoint),
          headers: headers, body: bodyObject);
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  Future<Tupple<HandleFailure, OnSuccess>> getdataAPIBody(
      {required String baseUrl,
      required String endPoint,
      required ObjectBody bodyObject,
      required String nullSafety}) async {
    try {
      var responseResult =
          await http.post(Uri.parse(baseUrl + endPoint), body: bodyObject);
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: OnSuccess(responseData: responseResult.body));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure, onSuccess: null);
      }
    } on Exception catch (e) {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    } finally {
      return Tupple(
          handleFailure: HandleFailure(),
          onSuccess: OnSuccess(responseData: nullSafety));
    }
  }

  TuppleHandleStatusCode<bool, HandleFailure> handleResponseStatusCode(
      int statusCode) {
    switch (statusCode) {
      case 200:
        return TuppleHandleStatusCode(
          status: true,
          handleFailure: HandleFailure(message: "OK", statusCode: 200),
        );
      case 201:
        return TuppleHandleStatusCode(
          status: true,
          handleFailure: HandleFailure(message: "OK", statusCode: 201),
        );
      case 401:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Unauthorized", statusCode: 401),
        );
      case 403:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Forbidden", statusCode: 403),
        );
      case 404:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Not Found", statusCode: 404),
        );
      case 409:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Conflict", statusCode: 409),
        );
      case 504:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Gateway Timeout", statusCode: 504),
        );
      case 503:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Service Unavailable", statusCode: 503),
        );
      case 502:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Bad Gateway", statusCode: 502),
        );
      case 500:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Internal Server Error", statusCode: 500),
        );
      case 499:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Client Closed Request", statusCode: 499),
        );
      case 429:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Too Many Request", statusCode: 429),
        );
      case 413:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Payload Too Large", statusCode: 413),
        );
      case 412:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Precondition Failed", statusCode: 412),
        );
      case 411:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Length Required", statusCode: 411),
        );
      case 410:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Gone", statusCode: 410),
        );
      case 405:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Conflict", statusCode: 405),
        );
      case 400:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Bad Request", statusCode: 400),
        );
      default:
        return TuppleHandleStatusCode(status: false, handleFailure: null);
    }
  }
}

''';

  static const String loggerServ = '''
class Logger {
  
  /// This Color Print is White
  Logger.d(String debug) {
    print("\u001b[37m|-------------------------------");
    print("\u001b[37m|  \$debug  ");
    print("\u001b[37m|-------------------------------");
  }

  /// This Color Print is Blue
  Logger.i(String info) {
    print("\u001b[34m|-------------------------------");
    print("\u001b[34m|  \$info  ");
    print("\u001b[34m|-------------------------------");
  }

  /// This Color Print is Yellow
  Logger.w(String warning){
    print("\u001b[33m|-------------------------------");
    print("\u001b[33m|  \$warning  ");
    print("\u001b[33m|-------------------------------");
  }

  /// This Color Print is Red
  Logger.e(String error){
    print("\u001b[31m|-------------------------------");
    print("\u001b[31m|  \$error  ");
    print("\u001b[31m|-------------------------------");
  }

}

''';  

  static const String pubspecYaml = '''
name: services
version: 1.0.0+1
publish_to: none
description: Service Packages.
environment:
  sdk: ">=2.12.0 <3.0.0"

dependencies:
  data:
    path: ../data

  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  get: 4.2.4
  http: ^0.13.3

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true

''';  

}
