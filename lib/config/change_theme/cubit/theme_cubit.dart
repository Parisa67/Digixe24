import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  bool _isDark = false;
  bool get isDark => _isDark;

  void changeTheme() {
    _isDark = !isDark;
    //Emit will change the state of our theme();
    emit(ThemeChange());
  }
}
