import 'package:flutter/material.dart';
import 'utilities/Mediaquery.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _login() {
    return InkWell(
      onTap: () {
        //  Navigator.push(
        // context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: SizedBox(
        width: 300,
        child: Container(
          width: getDeviceWidth(context),
          padding: EdgeInsets.symmetric(vertical: 13),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(color: Colors.white, width: 5),
          ),
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: primarycolor),
          ),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        //  Navigator.push(
        // context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: SizedBox(
        width: 300,
        child: Container(
          width: getDeviceWidth(context),
          padding: EdgeInsets.symmetric(vertical: 13),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border: Border.all(color: Colors.white, width: 5),
          ),
          child: Text(
            'Register now',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: primarycolor),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return SizedBox(
      width: getDeviceWidth(context),
      child: Container(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: GoogleFonts.portLligatSans(
              fontSize: 200,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: 'Fo',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              TextSpan(
                text: 'od',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              TextSpan(
                text: 'ga',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              TextSpan(
                text: 'sm',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.all(getDeviceHeight(context) * 0.8 * 0.5),
          height: getDeviceHeight(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2,
              )
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                primarycolor,
                Colors.white70,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _title(),
              SizedBox(
                height: 20,
              ),
              _login(),
              SizedBox(
                height: 20,
              ),
              _signUpButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
