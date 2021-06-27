
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gasandme/Size_Config/Config.dart';
import 'package:gasandme/apptheme/app_themedata.dart';

class Elevatedbutton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const Elevatedbutton({this.text, this.callback,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: Config.xMargin(context, 50),
      height: Config.yMargin(context, 5),
      child: ElevatedButton(

          onPressed: (){

          },
          child:Text("$text",   style: TextStyle(
              color: appTheme.backgroundColor,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 14
          ),) ),
    );
  }
}
