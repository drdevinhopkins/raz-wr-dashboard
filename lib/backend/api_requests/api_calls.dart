import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetStatsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getStats',
      apiUrl: 'https://razwrdashboard-1-z9271470.deta.app/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
