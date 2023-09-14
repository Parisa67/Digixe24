import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontSize {
  double getCurrentFontSizeSmall() {
    return ScreenUtil().setSp(9);
  }

  double getCurrentFontSizeMedium() {
    return ScreenUtil().setSp(11);
  }

  double getCurrentFontSizeLarge() {
    return ScreenUtil().setSp(14);
  }

  double getCurrentFontSizeXLarge() {
    return ScreenUtil().setSp(16);
  }
}

FontSize fontSize = FontSize();
