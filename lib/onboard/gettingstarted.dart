
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gasandme/Custombutton/custom_button.dart';
import 'package:gasandme/Elevated_button/elevated_button.dart';
import '../Size_Config/Config.dart';
import '../onboard/onboard2.dart';
import '../apptheme/app_themedata.dart';
class GettingStarted extends StatefulWidget {
  static final routeName = '/gettingstarted';
  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {

  void Consumer(){

  }
  void Retailer(){

  }
  void BulkSeller(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:appTheme.backgroundColor ,
      body: Container(
        height: Config.yMargin(context, 100),
        width: Config.xMargin(context, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButtom(text:"Continue as Consumer",callback: Consumer, ),
            SizedBox(height: 20,),
            CustomButtom(text:"Continue as Retailer", callback: Retailer,),
            SizedBox(height: 20,),
            CustomButtom(text:"Continue as Bulk Seller", callback: BulkSeller,),
            SizedBox(height: 30,),
            Elevatedbutton(text: "Proceed",callback: BulkSeller,)


          ],
        ),
      ),
    );
  }
}
