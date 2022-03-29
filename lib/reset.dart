import 'package:flutter/material.dart';
import 'package:screen/Container.dart';
import 'package:screen/forget.dart';

class reset extends StatelessWidget {
  const reset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          return forget();
                        }));
                        //action code when clickedprint("The icon is clicked");
                      },
                    ),
                  ),
                ),
              ),
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
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                          color: Colors.purpleAccent, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.three_p_rounded,
                      color: Colors.grey[600],
                    ),
                    suffixIcon: Icon(
                      Icons.vpn_key,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                          color: Colors.purpleAccent, width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: " Enter Password",
                    prefixIcon: Icon(
                      Icons.three_p_rounded,
                      color: Colors.grey[600],
                    ),
                    suffixIcon: Icon(
                      Icons.vpn_key,
                    ),
                  ),
                ),
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
                    child:    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return Container1();
                            }));
                      }, child:Text(
                      " Reset ",
                      style: TextStyle(color: Colors.white),

                    ),
                    ),
                  ),
                  // color: Colors.purple,),
                ),
              ),
            ]),
      ),
    );
  }
}
