import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:populant/screens/census.dart';
import 'package:populant/screens/login_screen.dart';
// import 'package:populant/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


   Widget _buildCensusBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
         onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CensusScreen()),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'CENSUS',
          style: TextStyle(
            color: Colors.blue,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGOUT',
          style: TextStyle(
            color: Colors.blue,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  // Widget _buildbottomNavigationBar() {
  //   return BottomNavigationBar(
  //     items: [
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.apps),
  //         title: Text('Home'),
  //         activeColor: Colors.blue,
  //       ),
  //       BottomNavyBarItem(
  //           icon: Icon(Icons.people),
  //           title: Text('Users'),
  //           activeColor: Colors.blue,
  //       ),

  //       BottomNavyBarItem(
  //           icon: Icon(Icons.settings),
  //           title: Text('Settings'),
  //           activeColor: Colors.blue
  //       ),
  //     ],
  //   );
  // }


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
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildCensusBtn(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildLogoutBtn(),
                      // _buildbottomNavigationBar()
                      // _buildPasswordTF(),
                      // // _buildForgotPasswordBtn(),
                      // // _buildRememberMeCheckbox(),
                      // _buildLoginBtn(),
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


