import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen/forget.dart';
import 'package:screen/sighnup.dart';

import 'custombutton.dart';

class Container1 extends StatelessWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Welcome to G-Remit',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Center(
                child: Container(
                  height: 400,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 14.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Container1();
                                }));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 14.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return sighnuo();
                                }));
                              },
                              child: Text(
                                'Sighnup',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                       child: cutsomfeild2('email', Icon(Icons.email), Icon(null),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: cutsomfeild2('password', Icon(Icons.person_outline,), Icon(Icons.vpn_key),),
                      ),
                      Button1(tittle: 'Login',clicked:

                          (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return forget();
                            }));
                      }

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return forget();
                              }));
                            },
                            child: Text(
                              "forget Password ?",
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cutsomfeild2(
    String hintText,
      var  icosprefix,
    var sufixicons,

  ) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.purpleAccent, width: 2.0),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        prefixIcon: icosprefix,
        suffixIcon:sufixicons ,
      ),
    );
  }
}
