import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SignupPage extends StatefulWidget{
  @override
  _SignupPageState createState() => _SignupPageState();

}

class _SignupPageState extends State<SignupPage>{
  String dropdownValue = 'Consumer';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(10.0),
                          child: Text('Sign Up',
                            textScaleFactor: 2,
                            style: TextStyle(
                                color: Color(0xFF024873),
                                fontWeight: FontWeight.w800
                            ),
                          )
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/gasandmepng.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.all(5.0),
                                child: _richText('First name','*')
                            ),
                            Container(
                                margin: EdgeInsets.all(5.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'first name',
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                    Flexible(
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.all(5.0),
                                child: _richText('Last name', '*')
                            ),
                            Container(
                                margin: EdgeInsets.all(5.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'last name',
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.all(5.0),
                                child: _richText('Phone number', '*')
                            ),
                            Container(
                                margin: EdgeInsets.all(5.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '+234809566777',
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                    Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.all(5.0),
                              child: _richText('Register as', '*'),
                            ),
                            Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                margin: EdgeInsets.all(5.0),
                                padding: EdgeInsets.all(5.0),
                                child: _dropDown()
                            )
                          ],
                        )
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(5.0),
                    child: _richText('Email', '*')
                ),
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
                    margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: _richText('Password', '*')
                ),
                Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'xX_495onjfnl',
                      ),
                    )
                ),
                Expanded(
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: null,
                        ),
                        Flexible(
                            child: Text('By clicking the box, I accept the Terms and Privacy Policy.')
                        )
                      ],
                    )
                ),
                Container(
                    height: 48.0,
                    width: double.infinity,
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text('Create Account'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF024873),
                        )
                    )
                ),
                _richText('Have an account? ', 'Sign In')
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

  Widget _dropDown(){
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      underline: null,
      style: const TextStyle(
          color: Colors.deepPurple,
          fontSize: 16
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Consumer', 'Retailer', 'Wholesaler']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
          .toList(),
    );
  }


}