// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:team_portfolio/screens/projects/chatApp/chat_page.dart';
// import 'package:team_portfolio/screens/projects/chatApp/home_page.dart';
// import 'package:team_portfolio/screens/projects/chatApp/widgets/custom_button.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
// }

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key key}) : super(key: key);

//   static const String id = 'login';

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   bool isClicked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => HomePage()),
//           ),
//         ),
//         title: Center(
//           child: Text(
//             'Login',
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//       ),
//       body: Center(
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               Hero(
//                 tag: 'logo',
//                 child: Image.asset(
//                   'assets/images/logo_chat.png',
//                   height: 250.0,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                 child: TextFormField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                     labelText: "Э-почта",
//                     fillColor: Colors.red,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25.0),
//                       borderSide: BorderSide(),
//                     ),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (val) {
//                     if (!isEmail(val)) {
//                       return 'Э-почтаңызды жазыңыз!';
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 12.0, vertical: 24.0),
//                 child: TextFormField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     labelText: "Сыр сөз",
//                     fillColor: Colors.red,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25.0),
//                       borderSide: BorderSide(),
//                     ),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (val) {
//                     if (val.length == 0) {
//                       return 'Сыр сөздү жазыңыз!';
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//               ),
//               const SizedBox(height: 24.0),
//               isClicked
//                   ? CircularProgressIndicator()
//                   : CustomButton(
//                       onPressed: () async {
//                         if (_formKey.currentState.validate()) {
//                           setState(() {
//                             isClicked = true;
//                           });
//                           await loginWithEmail(
//                               emailController.text, passwordController.text);
//                         }
//                       },
//                       buttonBorderColor: Colors.amberAccent,
//                       buttonColor: Colors.amberAccent,
//                       buttonText: 'Кирүү',
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> loginWithEmail(String email, String password) async {
//     try {
//       UserCredential userCredential = await firebaseAuth
//           .signInWithEmailAndPassword(email: email, password: password);

//       if (userCredential != null) {
//         Navigator.pushNamed(context, ChatPage.id);
//       }

//       setState(() {
//         isClicked = false;
//       });
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
// }

// /// E-pochtaby je jokbu teksheret
// bool isEmail(String em) {
//   String p =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//   RegExp regExp = RegExp(p);

//   return regExp.hasMatch(em);
// }
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter/material.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/chat_page.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/widgets/custom_button.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp();
// // }

// // class LoginPage extends StatefulWidget {
// //   const LoginPage({Key key}) : super(key: key);

// //   static const String id = 'login';

// //   @override
// //   _LoginPageState createState() => _LoginPageState();
// // }

// // class _LoginPageState extends State<LoginPage> {
// //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
// //   final _formKey = GlobalKey<FormState>();
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();

// //   bool isClicked = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // backgroundColor: Colors.white,
// //       body: Center(
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             // crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: [
// //               Hero(
// //                 tag: 'logo',
// //                 child: Image.asset(
// //                   'assets/images/logo.png',
// //                   height: 250.0,
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
// //                 child: TextFormField(
// //                   controller: emailController,
// //                   decoration: InputDecoration(
// //                     labelText: "Э-почта",
// //                     fillColor: Colors.red,
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(25.0),
// //                       borderSide: BorderSide(),
// //                     ),
// //                   ),
// //                   keyboardType: TextInputType.emailAddress,
// //                   validator: (val) {
// //                     if (!isEmail(val)) {
// //                       return 'Э-почтаңызды жазыңыз!';
// //                     } else {
// //                       return null;
// //                     }
// //                   },
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(
// //                     horizontal: 12.0, vertical: 24.0),
// //                 child: TextFormField(
// //                   controller: passwordController,
// //                   decoration: InputDecoration(
// //                     labelText: "Сыр сөз",
// //                     fillColor: Colors.red,
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(25.0),
// //                       borderSide: BorderSide(),
// //                     ),
// //                   ),
// //                   keyboardType: TextInputType.emailAddress,
// //                   validator: (val) {
// //                     if (val.length == 0) {
// //                       return 'Сыр сөздү жазыңыз!';
// //                     } else {
// //                       return null;
// //                     }
// //                   },
// //                 ),
// //               ),
// //               const SizedBox(height: 24.0),
// //               isClicked
// //                   ? CircularProgressIndicator()
// //                   : CustomButton(
// //                       onPressed: () async {
// //                         if (_formKey.currentState.validate()) {
// //                           setState(() {
// //                             isClicked = true;
// //                           });
// //                           await loginWithEmail(
// //                               emailController.text, passwordController.text);
// //                         }
// //                       },
// //                       buttonBorderColor: Colors.amberAccent,
// //                       buttonColor: Colors.amberAccent,
// //                       buttonText: 'Кирүү',
// //                     ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Future<void> loginWithEmail(String email, String password) async {
// //     try {
// //       UserCredential userCredential = await firebaseAuth
// //           .signInWithEmailAndPassword(email: email, password: password);

// //       if (userCredential != null) {
// //         Navigator.pushNamed(context, ChatPage.id);
// //       }

// //       setState(() {
// //         isClicked = false;
// //       });
// //     } on FirebaseAuthException catch (e) {
// //       if (e.code == 'weak-password') {
// //         print('The password provided is too weak.');
// //       } else if (e.code == 'email-already-in-use') {
// //         print('The account already exists for that email.');
// //       }
// //     } catch (e) {
// //       print(e);
// //     }
// //   }
// // }

// // /// E-pochtaby je jokbu teksheret
// // bool isEmail(String em) {
// //   String p =
// //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

// //   RegExp regExp = RegExp(p);

// //   return regExp.hasMatch(em);
// // }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects/chatApp/chat_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/constants.dart';
import 'package:team_portfolio/screens/projects/chatApp/home_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/widgets/rounded_button.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference userCollection;
  String email;
  String password;

  @override
  void initState() {
    super.initState();
    userCollection = firestore.collection('users');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Center(
          child: Text('Login '),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'logo',
                child: Container(
                  height: 200.0,
                  child: Image.asset('assets/images/logo_chat.png'),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () async {
                try {
                  UserCredential userCredential =
                      await auth.signInWithEmailAndPassword(
                          email: email, password: password);

                  if (userCredential != null) {
                    // Navigator.pushNamed(context, ChatScreen.id);

                    DocumentSnapshot documentSnapshot =
                        await userCollection.doc(userCredential.user.uid).get();

                    if (documentSnapshot.exists) {
                      //Misaldar
                      // final user = documentSnapshot.data();

                      // user['name'];
                      // user['userID'];

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen()),
                      );
                    }
                  } else {
                    //katani korsot
                  }
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    print('No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    print('Wrong password provided for that user.');
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
