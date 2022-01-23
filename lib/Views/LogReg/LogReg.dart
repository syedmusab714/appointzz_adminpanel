import 'package:admin_panel_appointzz/Views/Login/Login.dart';
import 'package:admin_panel_appointzz/Views/SignUp/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class LogReg extends StatefulWidget {
  const LogReg({Key? key}) : super(key: key);

  @override
  _LogRegState createState() => _LogRegState();
}

class _LogRegState extends State<LogReg> {

  var _currentToken = '026';
  var _yourToken;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 232, 225, 1),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 80, color: Colors.transparent),

              Container(
                width: MediaQuery.of(context).size.width*0.85,
                // padding: EdgeInsets.only(left: 35),
                alignment: Alignment.topLeft,
                child: Text('Welcome to Appointzz',
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black54
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width*0.85,
                // padding: EdgeInsets.only(left: 35),
                alignment: Alignment.topLeft,
                child: Text('\nGet Consultancy In a Smarter Way Now',
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54
                  ),
                ),
              ),


              Container(
                child: Image.asset('asset/Images/doctors.png', scale: 1.0),
                height: MediaQuery.of(context).size.height * 0.37,
              ),
              Container(height: 50),

              // -- Login -- //
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.92,
                  height: 75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(0.0, 0.0), //(x,y)
                        blurRadius: 0.5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(29),
                  ),

                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
                    color: Color.fromRGBO(7, 78, 99, 0.6),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Login',
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(231, 232, 225, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height*0.02,
              ),

              // -- Sign up -- //
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => SignUp()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.92,
                  height: 75,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(2.0, 2.0), //(x,y)
                        blurRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(29),
                  ),

                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
                    color: Color.fromRGBO(7, 78, 99, 0.6),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Text('Sign Up',
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(231, 232, 225, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
