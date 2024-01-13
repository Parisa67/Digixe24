import 'package:dio/dio.dart';

import '../../../../../core/utils/constants.dart';

class ApiLogin {
   Dio dio = Dio();
   var baseApi=Constants.baseUrl;


   //LoginAPI
   Future<dynamic> callLogin(phoneNumber) async {
      var response= await dio.post("$baseApi/api/v2/accounts/phone/otp",
      data: {
         "phoneNumber": phoneNumber
      }
      );
      return response;
   }
}