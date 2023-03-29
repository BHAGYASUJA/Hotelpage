import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

    class _RegisterPageState extends State<RegisterPage> {
      GlobalKey<FormState>formkey =GlobalKey();// For fetching current state
      bool showpass = true;

  String? confirmpass; //For checking the password
      @override
      Widget build(BuildContext context) {
        return Scaffold(
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
                            confirmpass =password;
                              if(password!.isEmpty ||password.length <6){
                                return "Enter a valid password";
                              }else{
                                return null;
                              }
                            },
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
                  validator: (cpass){
                    if(cpass!=confirmpass || cpass!.isEmpty){
                      return "Password is Mismatch";
                    }else{
                      return null;
                    }
                  },
                  obscureText: true,
                  obscuringCharacter: "*",

                  decoration:InputDecoration(
                     helperText: "Username Must Be An Email",
                  prefixIcon: Icon(Icons.account_box_rounded),
                  suffixIcon: Icon(Icons.ac_unit_sharp),
                  hintText: 'Conform Password',
                  labelText: 'Conform Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
            ),

              ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if(valid){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
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