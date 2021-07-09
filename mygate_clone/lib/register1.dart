import 'package:flutter/material.dart';
import 'package:mygate_clone/AppBarDesign.dart';
import 'package:mygate_clone/register2.dart';

class Register1 extends StatefulWidget {
  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {

  TextEditingController _mobileController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesign(context, "Get Started"),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Please enter your mobile number to"),
                Text("proceed further"),
                SizedBox(height: 20,),
                TextField(
                  controller: _mobileController,
                  decoration: InputDecoration(
                    hintText: "Enter Mobile Number",
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),
                    isDense: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.deepOrange, width: 2.0,),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("Use Email",
                      style: TextStyle(
                        color: Colors.deepOrange
                      ),
                    ),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
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
        ),
      ),
    );
  }
}
