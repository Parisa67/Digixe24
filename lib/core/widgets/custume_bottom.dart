
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/change_theme/color.dart';
@immutable
class CostumeBottom extends StatefulWidget {
   CostumeBottom({required this.text,required this.onTap, this.icon,super.key});
  String text;
  Icons? icon;
   Function? onTap;
  @override
  State<CostumeBottom> createState() => _CostumeBottomState();
}

class _CostumeBottomState extends State<CostumeBottom> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkWell(
      onTap: widget.onTap!(),
      child: Container(
        height: ScreenUtil().setWidth(50),
        decoration: BoxDecoration(
color: colorTheme.primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(ScreenUtil().setWidth(5)),
            ),
        ),
        child: Center(child: Text(widget.text,style: themeData.textTheme.titleMedium!.copyWith(color: Colors.white),),)
        ,
      ),
    );
  }
}
