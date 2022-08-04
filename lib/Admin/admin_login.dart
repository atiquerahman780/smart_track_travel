import 'package:flutter/material.dart';

import '../phone_login_two_type_user/login_phone.dart';
import 'admin_home.dart';
class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {

  final _formKey = GlobalKey<FormState>();
  final _usernameController = new TextEditingController();
  final _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Card(
                    //color: Colors.cyanAccent,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width*0.30,
                      width: MediaQuery.of(context).size.width*0.30,
                      child:Image.asset('assets/images/stlogo.jpeg'),
                    ),
                  ),
                  const Text("Smart Track",style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    //fontWeight: FontWeight.bold,
                  ),),
                  const Text("& Travel",style: TextStyle(
                      fontSize: 13,
                      //fontWeight: FontWeight.bold,
                      color: Colors.blue
                  ),),
                  SizedBox(
                    height: MediaQuery.of(context).size.width*0.10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Admin Login",style: TextStyle(
                            fontSize:22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),),
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter User Name';
                        }
                        return null;
                      },
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'User Name',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width*0.25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        //primary: Colors.yellow,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(200, 50), //////// HERE
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          // print(phonenoTextEditController.text);
                          //
                          // //
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(builder: (context) => AdminHome()));
                        }
                      },
                      child: const Text("Continue", style: TextStyle(fontSize: 17,),),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (context) => LoginPhone()));
                    },
                    child:

                    Column(
                      children: [
                        Text("User Login",style: TextStyle(color: Colors.blue),),
                        Text("Ckick Here",),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        )
    );
  }
}
