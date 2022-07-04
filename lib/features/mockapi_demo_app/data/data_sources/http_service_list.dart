import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/item_data.dart';
import '../models/list_response.dart';
import '../models/single_response.dart';

class DioClientList {
  final Dio _dioList = Dio();

  final _baseUrl =
      Uri.encodeFull('https://62bd85febac21839b6054332.mockapi.io/api/v1/home');

  Future<SingleTypeResponse?> getListTypeResponse(int index) async {
    SingleTypeResponse? singleTypeResponse;
    try {
      Response singleTypeResponseData = await _dioList.get(_baseUrl);
      print('SingleTypeResponse Info: ${singleTypeResponseData.data}');

      List _data = singleTypeResponseData.data;
      singleTypeResponse = SingleTypeResponse.fromJson(_data[index]);
      print(_data[2]);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return singleTypeResponse;
  }
}
