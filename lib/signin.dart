import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SigninPage extends StatefulWidget{
  @override
  _SigninPageState createState() => _SigninPageState();

}

class _SigninPageState extends State<SigninPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/gasandmepng.png'),
                ),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10.0),
                    child: _richText('Email',' *')
                ),  //Email
                Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'example@gmail.com',
                      ),
                    )
                ),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(10.0),
                    child: _richText('Password', ' *')
                ),
                Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'xX_495onjfnl',
                      ),
                    )
                ),
                Container(
                    height: 48.0,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text('Sign In'),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Color(0xFF024873),
                        )
                    )
                ),
                _richText("Don't have an account? ", 'Sign Up')
              ],
            ),
          ),
        )
    );
  }

  Widget _richText(String text1, String text2){
    return RichText(
        text: TextSpan(
            text: text1,
            style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000)
            ),
            children: <TextSpan>[
              TextSpan(
                text: text2,
                style: TextStyle(color: Color(0xFFD60F0F)),
              )
            ]
        )
    );
  }


}