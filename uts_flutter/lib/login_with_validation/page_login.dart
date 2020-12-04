import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_flutter/home/home_screen.dart';

// ignore: must_be_immutable
class PageLogin extends StatelessWidget {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  String nUsername, nPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Login'),
        backgroundColor: Color(0xFFE65100),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              //cek data field nya kosong
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input Username';
                }
                return null;
              },

              controller: myUsernameController,
              decoration: InputDecoration(
                hintText: 'Input Username',
              ),
            ),
            TextFormField(
              //cek data field nya kosong
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input Id Member';
                }
                return null;
              },
              maxLength: 16,
              maxLengthEnforced: true,
              controller: myPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Input Id Member',
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: MaterialButton(
                minWidth: 85.0,
                height: 50.0,
                color: Color(0xFFE65100),
                textColor: Colors.white,
                onPressed: () {
                  nUsername = myUsernameController.text;
                  nPassword = myPasswordController.text;

                  if (_formKey.currentState.validate()) {
                    if (nUsername != 'Melani') {
                      print("username salah");
                    } else if (nPassword != 'hujan23') {
                      print("password salah");
                    } else {
                      //aksi pindah
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    }
                  }
                },
                child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
