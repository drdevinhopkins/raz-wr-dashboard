import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetStatsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getStats',
      apiUrl: 'https://y9ldpv.deta.dev/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic currentTimestamp(dynamic response) => getJsonField(
        response,
        r'''$.message.currentTimestamp''',
      );
  static dynamic tbs(dynamic response) => getJsonField(
        response,
        r'''$.message.TBS''',
      );
  static dynamic last24(dynamic response) => getJsonField(
        response,
        r'''$.message.last24''',
      );
  static dynamic occupancy(dynamic response) => getJsonField(
        response,
        r'''$.message.occupancy''',
      );
  static dynamic busy(dynamic response) => getJsonField(
        response,
        r'''$.message.busy''',
      );
  static dynamic updateTimestamp(dynamic response) => getJsonField(
        response,
        r'''$.message.updateTimestamp''',
      );
  static dynamic busyColour(dynamic response) => getJsonField(
        response,
        r'''$.message.busyColour''',
      );
  static dynamic tbsColour(dynamic response) => getJsonField(
        response,
        r'''$.message.tbsColour''',
      );
  static dynamic last24Colour(dynamic response) => getJsonField(
        response,
        r'''$.message.last24Colour''',
      );
  static dynamic occupancyColour(dynamic response) => getJsonField(
        response,
        r'''$.message.occupancyColour''',
      );
}
