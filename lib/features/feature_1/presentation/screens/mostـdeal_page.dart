import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MostDeal extends StatefulWidget {
  const MostDeal({super.key});

  @override
  State<MostDeal> createState() => _MostDealState();
}

class _MostDealState extends State<MostDeal> {
  Color boxRedColor = const Color.fromRGBO(244, 219, 219, 1);
  Color boxGreenColor = const Color.fromRGBO(190, 238, 228, 1);
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return  Container(
      child: Center(
        child: ListView.builder(
            itemCount:
            20,
            itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.only(left:ScreenUtil().setWidth(15) ,right:ScreenUtil().setWidth(12),top: ScreenUtil().setWidth(18),),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex:2,
                      child: Row(children: [
                        Icon(Icons.circle_notifications_rounded,size: ScreenUtil().setWidth(30),),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("BTC / IRT",style: themeData.textTheme.headlineMedium,),
                            Text("3.8 BTC",style: themeData.textTheme.bodySmall,),
                          ],),
                        )
                      ],),
                    ),
                    Expanded(
                        flex:2,child: Text("۱,۳۰۶,۱۰۶,۹۷۰",style: themeData.textTheme.headlineMedium,)),
                    Expanded(
                        flex:2,child: Text("۱,۳۰۶,۱۰۶,۹۷۰",style: themeData.textTheme.headlineMedium,)),
                    Container(
                      width:ScreenUtil().setWidth(30)  ,
                      height: ScreenUtil().setHeight(20) ,
                    ),
                    Container(
                      width:ScreenUtil().setWidth(50)  ,
                      height: ScreenUtil().setHeight(20) ,
                      color:boxGreenColor ,
                      child: Center(child:Text("+ ۰.۰۱ ٪",style: themeData.textTheme.labelSmall,)),
                    )

                  ],),
              );
            }),
      ),
    );
  }
}
