import 'package:first_app/ChatHomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({Key? key}) : super(key: key);

  @override
  State<EmailLoginPage> createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  final loginKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email', border: OutlineInputBorder()),
                validator: (email) {
                  if (!email!.contains("@")) {
                    return "Provide Email";
                  }
                  return null;
                },
                onSaved: (val) {
                  email = val;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password', border: OutlineInputBorder()),
                onSaved: (val) {
                  password = val;
                },
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (loginKey.currentState!.validate()) {
                    loginKey.currentState!.save();
                    debugPrint(email);
                    debugPrint(password);
                    if (email != null && password != null) {
                      try {
                        final credential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email!, password: password!);
                        debugPrint(credential.user.toString());
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => ChatPage()));
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                    }
                  } else {
                    debugPrint("cannot proceed");
                  }
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
