
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gasandme/Elevated_button/elevated_button.dart';
import '../Size_Config/Config.dart';
import '../onboard/onboard2.dart';
import '../apptheme/app_themedata.dart';
import 'package:swipedetector/swipedetector.dart';
class OnboardOne extends StatefulWidget {
  static final routeName = '/onboard1';
  @override
  _OnboardOneState createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
       backgroundColor:appTheme.backgroundColor ,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [

             Container(
               height: Config.yMargin(context, 20),

               child: Image.asset('images/Group 37.png'),
             ),
             SizedBox(height: 30,),
             Text("Find gas sellers easily\nfrom anywhere", textAlign: TextAlign.center,
             style: TextStyle(
               fontFamily: "Lato",
               fontWeight: FontWeight.w600,
               fontStyle: FontStyle.normal,
               fontSize: 18
             ),),
             SizedBox(height: 20,),
             Text("Find gas suppliers close to your location\n easily from your device and connect with\n them",
               textAlign: TextAlign.center,
               style: TextStyle(
                   fontFamily: "Lato",
                   fontWeight: FontWeight.w400,
                   fontStyle: FontStyle.normal,
                   fontSize: 14
               ),),
             SizedBox(height: 20,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 16,
                  decoration: BoxDecoration(
                    color: appTheme.primaryColorDark,
                     borderRadius: BorderRadius.circular(5)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 5,
                  width: 8,
                  decoration: BoxDecoration(
                      color: appTheme.primaryColorLight,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 5,
                  width: 8,
                  decoration: BoxDecoration(
                      color: appTheme.primaryColorLight,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ],
             ),
             SizedBox(height: 20,),

             Elevatedbutton(
               text:"Sign up" ,
               callback: (){},
             ),

             Container(
               width: Config.xMargin(context, 50),

               child: TextButton(

                   onPressed: (){

                   },
                   child:Text("Sign in",
                     style: TextStyle(
                     fontFamily: "Lato",
                     fontSize: 14,
                     fontWeight: FontWeight.w600,
                     fontStyle: FontStyle.normal,

                   ),),
             ),),
             SizedBox(height: Config.yMargin(context, 15),),

           ],
         ),
      ),
      onPanUpdate: (details){
        if (details.delta.dx > 0)
          // Navigator.of(context).pushReplacementNamed(OnboardTwo.routeName);
          print("Dragging in +X direction");

        else
         Navigator.of(context).pushReplacementNamed(OnboardTwo.routeName);
      },
      // onHorizontalDragDown: (dragdetailsleft){
      //
      // },
      // onHorizontalDragEnd: (dragdetailsright){
      //  Navigator.of(context).pushReplacementNamed(OnboardTwo.routeName);
      // },
    );
  }
}
