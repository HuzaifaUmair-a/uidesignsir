import 'package:flutter/material.dart';

import 'Container.dart';
import 'custom_field.dart';
import 'custombutton.dart';
import 'forget.dart';
class sighnuo extends StatelessWidget {
  const sighnuo({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Center(
                child: Container(
                  height: 500,
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
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
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
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomField(title: 'email',Icon1: Icon(Icons.email,
                       // color: Colors.yellow,
                          size: 20,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomField(title: 'password',Icon1:Icon ( Icons.vpn_key ,color: Colors.grey[600],),

                           ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  CustomField(title: 're enter password',Icon1:Icon ( Icons.vpn_key ,color: Colors.grey[600],),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                       // child: cutsomfeild2('password', Icon(Icons.email), null),
                      ),
                      Button1(tittle: 'Sighnup', clicked:  (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return Container1();
                            }));
                      }

                ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "forget Password ?",
                              style: TextStyle(color: Colors.purple),
                            )),
                      )
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
}
