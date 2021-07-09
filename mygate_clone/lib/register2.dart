import 'package:flutter/material.dart';
import 'package:mygate_clone/AppBarDesign.dart';
import 'package:mygate_clone/otpScreen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController _nameController;
  TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesign(context, "Signup"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android
                ),
                Text("+91-7548692364")
              ],
            ),
            SizedBox(height: 20,),
            Text("Please enter your name and email to proceed"),
            Text("further"),
            SizedBox(height: 20,),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter Name",
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                isDense: true,
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0,),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.deepOrange, width: 2.0,),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                isDense: true,
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 2.0,),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.deepOrange, width: 2.0,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)
                  ),
                ),
                SizedBox(width: 5,),
                Text("I agree to the"),
                TextButton(onPressed: (){},
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        decoration: TextDecoration.underline,
                      ),
                    )
                ),
              ],
            ),
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPScreen()),
              );
            },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 88, vertical: 10),
                  child: Text("Submit",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
