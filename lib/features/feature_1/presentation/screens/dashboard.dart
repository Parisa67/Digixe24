
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/change_theme/cubit/theme_cubit.dart';
import '../widgets/carousel_indicator.dart';
import '../widgets/image_slide_show.dart';
import 'most_drop_page.dart';
import 'most_growth_page.dart';
import 'mostـdeal_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


final controller = PageController(viewportFraction: 0.8, keepPage: true);
int pageIndex=3;
  @override
  Widget build(BuildContext context) {
     ThemeCubit theme = BlocProvider.of<ThemeCubit>(context, listen: true);
    final themeData = Theme.of(context);
    final pages = List.generate(
        3,
            (index) => Padding(
              padding: EdgeInsets.only(left:ScreenUtil().setWidth(0),right: ScreenUtil().setWidth(0) ),

              child: Container(
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
            ));
    return DefaultTabController(
        length: 3,
        child: Container(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(21)),
      child: Column(children: [
        Container(
  width:ScreenUtil().setWidth(336)  ,
  height: ScreenUtil().setHeight(89) ,
  color:themeData.colorScheme.primaryContainer
    ,child: Padding(
      padding:EdgeInsets.only(right:ScreenUtil().setWidth(20),top: ScreenUtil().setHeight(12)),
      child: Column(children: [
        Row(children: [
          Text("کل موجودی",style:themeData.textTheme.titleSmall ,),
        IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye,color:themeData.colorScheme.onSurface ,
        size: ScreenUtil().setWidth(16),
        ))
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Row(children: [
            Text("273543000",style:themeData.textTheme.titleLarge ,),Text("  تومان",style:themeData.textTheme.titleSmall ,),
          ],),
          Padding(
            padding:EdgeInsets.only(left:ScreenUtil().setWidth(12)),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_outlined,color:themeData.colorScheme.onSurface ,
              size: ScreenUtil().setWidth(24),
            )),
          )

        ],),

],),
    ),
),
        Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        SizedBox(height: ScreenUtil().setWidth(16)),

          Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                child: PageView(
                  children: pages,

                  onPageChanged: (index){
                    setState(() {
                      pageIndex=index;
                      print((pages.length-1)-index);

                    });
                  },
                ),
              ),
              const SizedBox(height: 10,),
              CarouselIndicator(
                  count: pages.length,
                  index: pageIndex,
                  color: Colors.grey,
                  activeColor: Colors.blue,
                  rtl:true
              ),
            ],),

          Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(20),left: ScreenUtil().setWidth(12),right: ScreenUtil().setWidth(12)),

      child: Container(
        // height: 100,
        decoration: BoxDecoration( borderRadius: BorderRadius.all(
                  Radius.circular(ScreenUtil().setSp(5)),

                  ),
            color:Colors.green
                ),
      child: ImageSlideshow(
      width: double.infinity,
      height: ScreenUtil().setWidth(100),
      initialPage: 0,
      indicatorColor:Colors.white,
      indicatorBackgroundColor: Colors.grey,
      onPageChanged: (value) {
      print('Page changed: $value');
      },
      autoPlayInterval: 6000,
      isLoop: true,
      children: [
        slidShow(Colors.red),
        slidShow(Colors.green),
        slidShow(Colors.yellow),

      ],
      ),
      ),
    ),
          Padding(
            padding:EdgeInsets.only(top: ScreenUtil().setWidth(15)),
            child: Container(


              decoration: BoxDecoration(
                color: themeData.colorScheme.primaryContainer,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(ScreenUtil().setWidth(8)),
      topLeft: Radius.circular(ScreenUtil().setWidth(8)),
    ),
                // color:themeData.colorScheme.primaryContainer
              ),
              child:Column(children: [
                SizedBox(
                  height: 50,
                  child: AppBar(
                    bottom:  TabBar(
                      labelStyle: themeData.textTheme.titleSmall,
                      unselectedLabelColor: themeData.colorScheme.shadow,
                      labelColor:themeData.colorScheme.onSurface ,
                      indicatorColor: themeData.colorScheme.onSurface ,
                      indicator:  UnderlineTabIndicator(
                        borderSide:const BorderSide(width: 2.0, ),
                        insets: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(20) , vertical:ScreenUtil().setWidth(10) ),
                      ),
                      // indicatorSize: TabBarIndicatorSize.label,
                      tabs: const[

                        Tab(
                         text: "بیشترین معامله",
                        ),
                        Tab(
                          text: "بیشترین رشد",
                        ),
                        Tab(
                          text: "بیشترین ریزش",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // color: themeData.colorScheme.,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(12) ,),
                    child: Container(


                       height:ScreenUtil().setWidth(25) ,
                      decoration: BoxDecoration( borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(5)),

                      ),
                         color:themeData.colorScheme.background

                      ),
                      child:Padding(
                        padding: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(15) ,),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Expanded(
                              flex:1,
                              child: Text("ارز",style: themeData.textTheme.headlineSmall!.copyWith(color:themeData.disabledColor ),)),
                            Expanded(
                                flex:1,
                                child: Text("خرید(تومان)",style: themeData.textTheme.headlineSmall!.copyWith(color:themeData.disabledColor ))),
                            Container(
                              width:ScreenUtil().setWidth(20)  ,
                              height: ScreenUtil().setHeight(20) ,
                            ),
                            Expanded(
                                flex:1,
                                child: Text("فروش(تومان)",style: themeData.textTheme.headlineSmall!.copyWith(color:themeData.disabledColor ))),
                            Container(
                              width:ScreenUtil().setWidth(10)  ,
                              height: ScreenUtil().setHeight(20) ,
                            ),
                            Expanded(
                                flex:0,
                                child: Text("تغییرات ۲۴ ساعته",style: themeData.textTheme.headlineSmall!.copyWith(color:themeData.disabledColor ))),
                        ],),
                      )),
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height/3.8,
                    child: const TabBarView(
                        children: [
                          // first tab bar view widget
                          MostDeal(),
                          MostGrowth(),
                          MostDrop()
                        ]))
              ],)
            ),
          ),


    // create widgets for each tab bar here

    ])



      ],),
    ));
  }
Widget slidShow(Color color){
    return  Container(
      width:ScreenUtil().setWidth(336) ,
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.all(
          Radius.circular(ScreenUtil().setWidth(5)),
        ),
      ),);
}
}
