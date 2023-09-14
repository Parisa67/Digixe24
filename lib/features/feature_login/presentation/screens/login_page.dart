import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/change_theme/color.dart';
import '../../../../config/font_size.dart';
import '../../../../core/widgets/custume_bottom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(16),right: ScreenUtil().setWidth(16)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Text("ورود|ثبت نام",style: themeData.textTheme.titleLarge,),
              ],
            ),
            SizedBox(height:sizeW(20)  ,),
            Row(
              children: [
                Text("شماره موبایل",style:themeData.textTheme.titleMedium,),
              ],
            ),
            SizedBox(height:  sizeW(10),),
            SizedBox(
              height: ScreenUtil().setWidth(40) ,
              child: TextField(
                  controller: numberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText:'09123456789',
                  labelStyle:themeData.textTheme.bodySmall!.copyWith(fontSize:fontSize.getCurrentFontSizeMedium() ),
                    fillColor:Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.only(
                         bottom:sizeW(6) , right: sizeW(8), ),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:themeData.colorScheme.error, width: 1),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().radius(5)))),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: themeData.colorScheme.error, width: 1),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().radius(5)))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: themeData.colorScheme.primary),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().radius(5)))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:themeData.colorScheme.primary, width: 1),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().radius(5)))),
                )

              ),
            ),
            SizedBox(height:  sizeW(20),),
            CostumeBottom(text: "ورود",)
          ],
        ),
      ),
    );
  }

  double sizeW(int value){
    return ScreenUtil().setWidth(value);
  }
}
