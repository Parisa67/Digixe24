import 'package:equatable/equatable.dart';

class LoginOTPEntity extends Equatable{
  String? tempToken;
  String? message;
  int? ttlSecond;

  LoginOTPEntity({this.tempToken, this.message, this.ttlSecond, });

  @override
  // TODO: implement props
  List<Object?> get props => [
    tempToken,
    message,
    ttlSecond
  ];

}