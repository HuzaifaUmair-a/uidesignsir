import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/Container.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:screen/custombutton.dart';
import 'package:screen/reset.dart';

class forget extends StatelessWidget {
  const forget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.purple,
                      size: 35,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Container1();
                      }));
                      //action code when clickedprint("The icon is clicked");
                    },
                  ),
                ),
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.lock,
                  size: 55,
                  color: Colors.purple,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    '''
        Enter the code sent to your email
           address ending in XXX-XXX
            ''',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
              ],
            ),
            Text(
              "Resend Code",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 70,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Container(
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.purpleAccent,
                        Colors.purple,
                        Colors.deepPurple,
                      ],
                    ),
                    // color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.2),
                        //color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(10, 10),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15)),

                child: Center(
                  child:  Button1(tittle: 'confirm', clicked:   (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return reset();
                        }));
                  } ),
                ),
                // color: Colors.purple,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
