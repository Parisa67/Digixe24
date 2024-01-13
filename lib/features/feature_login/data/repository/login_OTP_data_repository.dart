import 'package:digiex24/core/resources/data_state.dart';
import 'package:digiex24/features/feature_login/data/data_source/remote/api_login.dart';
import 'package:digiex24/features/feature_login/domain/entities/login_otp_entity.dart';
import 'package:digiex24/features/feature_login/domain/repository/login_repository.dart';
import 'package:dio/dio.dart';

import '../models/response_otp_model.dart';

class LoginOTPDataRepository extends LoginRepository{
ApiLogin apiLogin;
LoginOTPDataRepository(this.apiLogin);
  @override
  Future<DataState<LoginOTPEntity>> fetchLoginOTP(String phoneNumber) async {
    try{
      Response response =await  apiLogin.callLogin(phoneNumber);
      if(response.statusCode==200){
        LoginOTPEntity loginOTPEntity=ResponseOTPModel.fromJson(response.data);
return DataSuccess(loginOTPEntity);
      }else{
        return const DataFailed("اشتیاهی رخ داده است.دوباره نلاش کنید...");
      }
    }catch(e){
      return const DataFailed("اشتیاهی رخ داده است.دوباره نلاش کنید...");
    }
  }
  
}