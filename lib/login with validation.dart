import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/register.dart';

import 'home.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>
        MaterialApp(
          theme: ThemeData(primarySwatch:Colors.blueGrey),
          useInheritedMediaQuery: true,
          home:LoginValidation(),
          debugShowCheckedModeBanner: false,
        ),
  ));
}


class LoginValidation extends StatefulWidget {
  const LoginValidation({Key? key}) : super(key: key);

  @override
  State<LoginValidation> createState() => _LoginValidationState();
}

class _LoginValidationState extends State<LoginValidation> {
  GlobalKey<FormState>formkey =GlobalKey();// For fetching current state
  bool showpass = true; //For checking the password
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const  Text("Login Validation"),
        ),
      ),
      body: SingleChildScrollView(
            child: Form(
              key:formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.asset("assets/Stickers/eli.jpg",width: 200,height: 200,
                  //),
                  Padding(
                    padding: const EdgeInsets.only(top:20),
                    child:Image.asset("assets/Stickers/eli.jpg",width: 200,height: 200,
                    ),
            ),
                    TextFormField(
                        decoration:InputDecoration(
                          helperText: "Username Must Be An Email",
                          prefixIcon: Icon(Icons.account_box_rounded),
                          suffixIcon: Icon(Icons.ac_unit_sharp),
                          hintText: 'USERNAME',
                          labelText: 'Username',
                          border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100))),
                          validator : (uname){
                          if(uname!.isEmpty || !uname.contains('@')||!uname.contains('.')){
                            return 'Enter The Username';
                            }else{
                              return null;
                              }
                          },
                            ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration:InputDecoration(
                          hintText: 'PASSWORD',
                          labelText: 'Password',
                        helperText: "Password Must Be An Email",
                        prefixIcon: Icon(Icons.ac_unit_sharp),
                        suffixIcon: IconButton(
                          onPressed: () {
                          setState(() {
                            if(showpass){
                              showpass=false;
                            }else{
                              showpass =true;
                            }
                          });
                        },
                          icon : Icon(showpass == true ? Icons.visibility_off
                              :Icons.visibility),),


                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100))),
                            validator :(password){
                        if(password!.isEmpty ||password.length <6){
                          return "Enter a valid password";
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        final valid = formkey.currentState!.validate();
                        if(valid){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        }
                      },
                      child: const Text('Login',
                          style:TextStyle(fontSize: 15))),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                      child: const Text(
                        "Not a User ?? Sighup Here!!",
                        style:TextStyle(fontSize: 15),)),

                ],
              )

            ),
      ),
    );
  }
}
