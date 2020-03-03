import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:populant/screens/home.dart';
import 'package:populant/utilities/constants.dart';

class CensusScreen extends StatefulWidget {
  @override
  _CensusScreenState createState() => _CensusScreenState();
}

class _CensusScreenState extends State<CensusScreen> {
  // final myController = TextEditingController();
  bool _rememberMale = false;
  bool _rememberFemale = false;


Widget _buildFirstnameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Firstname',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            // controller: myController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Enter your Firstname',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLastnameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Lastname',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            // controller: myController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              hintText: 'Enter your Lastname',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNationalityTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nationality',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            // controller: myController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.flag,
                color: Colors.white,
              ),
              hintText: 'Enter your Nationality',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

Widget _buildAgeTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Age',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            // controller: myController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.flag,
                color: Colors.white,
              ),
              hintText: 'Enter your Age',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCheckbox() {
    return Row(
      children: <Widget>[
        Container(
        height: 20.0,
        child: Row(
          children: <Widget>[
            Text(
              'Male',
              style: kLabelStyle,
            ),
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: _rememberMale,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _rememberMale = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 20.0,
        child: Row(
          children: <Widget>[
            Text(
              'Female',
              style: kLabelStyle,
            ),
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: _rememberFemale,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _rememberFemale = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),


    ],
    );  
  }

Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'ADD PERSON',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Add Citizen',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildFirstnameTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildLastnameTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildNationalityTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildAgeTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildCheckbox(),
                      // _buildForgotPasswordBtn(),
                      // _buildRememberMeCheckbox(),
                      _buildLoginBtn(),
                      // _buildSignInWithText(),
                      // _buildSocialBtnRow(),
                      // _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
