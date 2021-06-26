
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gasandme/Size_Config/Config.dart';
import 'package:gasandme/apptheme/app_themedata.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final VoidCallback callback;
 const CustomButtom({this.text, this.callback,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Config.xMargin(context, 80),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(5),
        border: Border.all(color: Color.fromRGBO(3, 94, 150, 0.4),)
      ),
      height: Config.yMargin(context, 5),
      child: TextButton(
          onPressed:callback,
          child: Text(text,
            style: TextStyle(
                color: Colors.black,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            fontSize: 14
          ),),
       ),
    );
  }
}
