import 'package:digiex24/features/feature_login/domain/entities/login_otp_entity.dart';

class ResponseOTPModel extends LoginOTPEntity{
  ResponseOTPModel({ String? tempToken,
  String? message,
  int? ttlSecond,}): super(
      tempToken:tempToken,
      message:message,
      ttlSecond:ttlSecond
  );


  factory ResponseOTPModel.fromJson(Map<String, dynamic> jsn)
  {
    return ResponseOTPModel(tempToken: jsn['tempToken'],
    message: jsn['message'],
      ttlSecond: jsn['ttlSecond']
    );
  }
  Map<String, dynamic> toJson() => {
    'tempToken': tempToken,
    'message': message,
    'ttlSecond': ttlSecond,
  };
}