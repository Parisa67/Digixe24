
import '../../../../core/resources/data_state.dart';
import '../entities/login_otp_entity.dart';

abstract class LoginRepository{
Future<DataState<LoginOTPEntity>> fetchLoginOTP(String phoneNumber);
}