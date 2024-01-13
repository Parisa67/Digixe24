import 'package:digiex24/features/feature_login/domain/repository/login_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/use_case.dart';
import '../entities/login_otp_entity.dart';

class GetLoginOTPUseCase extends UseCase<DataState<LoginOTPEntity> , String>{
  final LoginRepository loginRepository;
  GetLoginOTPUseCase(this.loginRepository);

  @override
  Future<DataState<LoginOTPEntity>> call(String param) {
    return loginRepository.fetchLoginOTP(param);
  }
  // Future<DataState<LoginOTPEntity>> call (String phoneNumber){
  //
  //  }

}