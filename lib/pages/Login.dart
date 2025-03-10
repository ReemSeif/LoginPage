import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor:  Colors.indigo,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Text('User Login' , style: 
            TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailcontroller,
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter your email';
                  }
                  final bool isValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);
                    if(!isValid){
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(MdiIcons.email),
                  prefixIconColor: Colors.black
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: isPasswordVisible,  
                keyboardType: TextInputType.visiblePassword,
                controller: passwordcontroller,
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter your password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(MdiIcons.formTextboxPassword),
                  prefixIconColor: Colors.black,
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  }, icon: Icon(isPasswordVisible ? MdiIcons.eye : MdiIcons.eyeOff)),
                  
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if(formkey.currentState!.validate())
                  {
                      print(emailcontroller.text);
                  print(passwordcontroller.text);
                  emailcontroller.clear();
                  passwordcontroller.clear();
                  }
                
                  
                },
                child: Text('Login', style: TextStyle(
                    color: Colors.blue,
                  ),),
               ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'),
                TextButton(
                  onPressed: (){},
                  child: Text('Register Now' ,
                  style: TextStyle(
                    color: Colors.blue,
                        decoration: TextDecoration.underline,
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}