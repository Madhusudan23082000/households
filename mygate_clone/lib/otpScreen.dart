import 'package:flutter/material.dart';
import 'package:mygate_clone/AppBarDesign.dart';
import 'package:mygate_clone/home.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesign(context, "Signup"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              Text("OTP has been sent to you on your mobile phone"),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("+91-7561942354"),
                  Icon(
                    Icons.edit,
                  )
                ],
              ),
              OTPTextField(
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 20,
                style: TextStyle(
                    fontSize: 17
                ),
                textFieldAlignment: MainAxisAlignment.center,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
              SizedBox(height: 15,),
              Text("Resend OTP after 55 sec"),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
                  // style: ButtonStyle(
                  //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //       RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //       )
                  //   ),
                  //   // backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                  // ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.deepOrange[400], Colors.pink[400]]
                      )
                    ),
                    child: Text("VERIFY",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
