import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
class CreateEditAccount extends StatefulWidget {
  const CreateEditAccount({Key? key}) : super(key: key);
  @override
  _CreateEditAccountState createState() => _CreateEditAccountState();
}
class _CreateEditAccountState extends State<CreateEditAccount> {
  late String fileUrl;
  int c =0;
  late TextEditingController _nameController, _priceController, _categorieController;
  late File imgFile;
  late DatabaseReference _reference;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController=TextEditingController();
    _categorieController=TextEditingController();
    _priceController=TextEditingController();
    _reference =FirebaseDatabase.instance.reference().child('products');
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {


    return  SafeArea(
      child: Scaffold(

        //resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child:c==0 ? Icon(Icons.person,size: 70,color: Colors.blue,):
                  Image.file(
                    imgFile,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                RaisedButton(
                    child: Text('Upload image',style: TextStyle(color: Colors.white),),
                    color: Colors.blue,

                    onPressed: (){
                     // uploadImage();
                    }),
                Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                       // controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Driver Name',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Total Seats',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                       // controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Resrve Seats',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Available Seats',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                       // controller: _productDetailThatYouSellController,
                        minLines: 2,
                        maxLines: 5,
                        decoration: const InputDecoration(
                          labelText: 'Route',
                         // hintText: 'description',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                       // controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Vehicle Number',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        //controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Vehicle Color',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                       // controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Dues per Month',
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width*0.15
                ),


                ElevatedButton(child: Text('Save Product',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                ),
                  onPressed: (){
                    //saveProduct();
                  },
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.width*0.15
                ),
              ],
            ),
          ),

        ),
      ),
    );

  }
  void saveProduct(){


    String name = _nameController.text;
    String categorie = _categorieController.text;
    String price = _priceController.text;
    String key = _reference.push().key as String;
    Map<String,String> products={
      'name' :name,
      'categorie' :categorie,
      'price' :price,
      'picUrl' :fileUrl,
      'id' : key
    };


    _reference.child(key).set(products).then((value) {
      Navigator.pop(context);
    });

  }
  Future<void> uploadImage() async {

    final _fireStorage = FirebaseStorage.instance;
    final image = ImagePicker();
    PickedFile pickedFile;

    // Request Photos Permission
    await Permission.photos.request();
    var permissionStatus = await Permission.photos.status;

    // Checking Permission
    if (permissionStatus.isGranted) {
      pickedFile = (await image.getImage(source: ImageSource.gallery))!;
      if (pickedFile != null) {
        imgFile = File(pickedFile.path);
        setState(() {
          c=1;
        });
        var file = imgFile;
        // Getting File Path
        String fileName = file.uri.path.split('/').last;

        // Uploading Image to FirebaseStorage
        var filePath = await _fireStorage
            .ref()
            .child('demo/$fileName')
            .putFile(file)
            .then((value) {
          return value;
        });
        // Getting Uploaded Image Url
        String downloadUrl = await filePath.ref.getDownloadURL();
        fileUrl = downloadUrl;
        setState(() {});
      } else {
        print('No Image Selected');
      }
    } else {
      print('Provider Permission');
    }
  }
}


