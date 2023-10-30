import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tugas1_flutter_azkimaulanaassariy/customs/custom_button.dart';
import 'package:tugas1_flutter_azkimaulanaassariy/pages/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final globalKey = GlobalKey<ScaffoldState>();
  TextEditingController nameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: Container(
        padding: EdgeInsets.only(
          top: 64,
          bottom: 64,
          left: 24,
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Center(
                child: Text(
                  'EDIT PROFILE',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Name',
                ),
              ),
            ),
            Container(
              height: 48,
              child: CustomButton(
              text: 'Update',
              onPressed: () {
                if(nameController.text == ""){
                    //showToast('Please input your name');
                    //showSnackBar('Please input your name');
                    //showAlertDialogMaterial('Please input your name');
                    showAlertDialogCupertino('Please input your name');
                  }else{
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => Profile(
                          name: nameController.text,
                        ),
                      ),
                    );
                  }      
              },
            ),
            ),
          ],
        ),
      ),
    );
  }

  showToast(text){
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black.withOpacity(0.5),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  showSnackBar(text) {
    final snackbar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          print('Clicked Undo!');
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  showAlertDialogMaterial(text){
    showDialog(
      context: globalKey.currentContext!,
      builder: (_) => AlertDialog(
        title: Text('Info'),
        content: Text(text),
        actions: [
          TextButton(
            child: Text('No'),
            onPressed: () {
              print('Clicked No!');
              Navigator.of(globalKey.currentContext!).pop();
            },
          ),
          TextButton(
            child: Text('Yes'),
            onPressed: () {
              print('Clicked Yes!');
              Navigator.of(globalKey.currentContext!).pop();
            },
          ),
        ],
        elevation: 4,
        backgroundColor: Colors.white,
      ),
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: false,
    );
  }

  showAlertDialogCupertino(text){
    showDialog(
      context: globalKey.currentContext!,
      builder: (_) => CupertinoAlertDialog(
        title: Text('Info'),
        content: Text(text),
        actions: [
          CupertinoDialogAction(
            child: Text('No'),
            onPressed: () {
              print('Clicked No!');
              Navigator.of(globalKey.currentContext!).pop();
            },
          ),
          CupertinoDialogAction(
            child: Text('Yes'),
            onPressed: () {
              print('Clicked Yes!');
              Navigator.of(globalKey.currentContext!).pop();
            },
          ),
        ],
      ),
      barrierColor: Colors.black.withOpacity(0.5),
      barrierDismissible: false,
    );
  }
}
