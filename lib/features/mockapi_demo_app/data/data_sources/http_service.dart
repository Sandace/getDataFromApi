import 'package:dio/dio.dart';
import 'package:mockapi_demo/features/mockapi_demo_app/data/models/single_response.dart';

import '../models/item_data.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl =
      'https://62bd85febac21839b6054332.mockapi.io/api/v1/RadioNepal';

  Future<SingleTypeResponse?> getSingleTypeResponse() async {
    SingleTypeResponse? singleTypeResponse;
    try {
      Response SingleTypeResponseData = await _dio.get(_baseUrl);
      print('SingleTypeResponse Info: ${SingleTypeResponseData.data}');

      singleTypeResponse =
          SingleTypeResponse.fromJson(SingleTypeResponseData.data);
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
