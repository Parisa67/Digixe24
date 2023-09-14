
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/feature_1/presentation/widgets/carousel_indicator.dart';

class MainScreen2 extends StatefulWidget {
  const MainScreen2({super.key});

  @override
  State<MainScreen2> createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  int pageIndex=3;


  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    List<Widget> _demo=[
      Container(
        width: MediaQuery.of(context).size.width,
        // color:Colors.red,
        margin: EdgeInsets.only(left:ScreenUtil().setWidth(0),right: ScreenUtil().setWidth(0) ),

        child: Padding(
          padding: EdgeInsets.only(left:ScreenUtil().setWidth(0),right: ScreenUtil().setWidth(0) ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.home_filled,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("خانه",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.bar_chart,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("بازار",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.refresh,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("خرید و فروش",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.shopping_bag_outlined,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("کیف پول",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.account_box_outlined,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("حساب کاربری",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),

            ],
          ),
        ),
      ),
      Container(height: 300,color: Colors.black),
      Container(
        width: MediaQuery.of(context).size.width,
        // color:Colors.red,
        margin: EdgeInsets.only(left:ScreenUtil().setWidth(0),right: ScreenUtil().setWidth(0) ),

        child: Padding(
          padding: EdgeInsets.only(left:ScreenUtil().setWidth(0),right: ScreenUtil().setWidth(0) ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.home_filled,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("خانه",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.bar_chart,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("بازار",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.refresh,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("خرید و فروش",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.shopping_bag_outlined,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("کیف پول",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),
              InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.account_box_outlined,color:themeData.colorScheme.onSurface ,
                        size: ScreenUtil().setWidth(24),
                      ),
                      SizedBox(height: ScreenUtil().setWidth(5),),
                      Text("حساب کاربری",style:themeData.textTheme.headlineSmall ,),
                    ],
                  ),
                  onTap:(){ print("object");}
              ),

            ],
          ),
        ),
      ),
      Container(height: 300,color: Colors.green),
    ];

    return Column(
      children: [
        Container(
          color: Colors.red,
          height: 50,
          width: double.infinity,
          child: PageView(
            children: _demo,

            onPageChanged: (index){
              setState(() {
                pageIndex=index;
                print((_demo.length-1)-index);

              });
            },
          ),
        ),
        const SizedBox(height: 10,),
        CarouselIndicator(
          count: _demo.length,
          index: pageIndex,
          color: Colors.grey,
          activeColor: Colors.blue,
          rtl:true
        ),
      ],
    );
  }
}
