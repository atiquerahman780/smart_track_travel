import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:track_travel/phone_login_two_type_user/check_type.dart';
import 'package:track_travel/phone_login_two_type_user/login_type.dart';
class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  State<Setting1> createState() => _SettingState();
}

class _SettingState extends State<Setting1> {
  late TextEditingController _usernameController, _passwordController;
  late DatabaseReference _reference;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController=TextEditingController();
    _passwordController=TextEditingController();
    _reference =FirebaseDatabase.instance.reference().child('LoginType');
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    inputDat();
    return SingleChildScrollView(

      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width*0.10,
                ),
                Text("APP Lock",style: TextStyle(fontSize: 27,color: Colors.blue),),

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
              ],
            ),
            SizedBox(
                height: MediaQuery.of(context).size.width*0.15
            ),


            ElevatedButton(child: Text('Save User',style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            ),
              onPressed: (){
              print(_passwordController.text);
              print(_usernameController.text);
              print(quan.tity);

                String uid = quan.tity+"Parent"+_passwordController.text+_usernameController.text;
                String key = _reference.push().key as String;
                Map<String,String> products={
                  'uid' :uid,
                };
                _reference.child(quan.tity).set(products).then((value) {
                  // Navigator.of(context)
                  //     .pushReplacement(MaterialPageRoute(builder: (context) => HomeParent()));
                });


                //saveProduct();
              },
            ),
            SizedBox(
                height: MediaQuery.of(context).size.width*0.15
            ),
          ],
        ),
      ),
    );
  }
  void inputDat() {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    final uid = user?.uid;
    String? l =uid;
    quan.tity=l!;
   }
}
class quan{
  static String tity='';
}
