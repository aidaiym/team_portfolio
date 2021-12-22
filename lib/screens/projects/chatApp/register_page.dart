// // import 'dart:developer';

// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/chat_page.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/home_page.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/models/user_model.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/widgets/custom_button.dart';
// // import 'package:uuid/uuid.dart';

// // import 'package:flutter/material.dart';
// // import 'login_page.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp();
// // }

// // class RegisterPage extends StatefulWidget {
// //   const RegisterPage({Key key}) : super(key: key);

// //   static const String id = 'register';

// //   @override
// //   _RegisterPageState createState() => _RegisterPageState();
// // }

// // class _RegisterPageState extends State<RegisterPage> {
// //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
// //   FirebaseFirestore firestore = FirebaseFirestore.instance;
// //   final _formKey = GlobalKey<FormState>();
// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();
// //   TextEditingController checkPasswordController = TextEditingController();
// //   bool isClicked = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back, color: Colors.black),
// //           onPressed: () => Navigator.push(
// //             context,
// //             MaterialPageRoute(builder: (context) => HomePage()),
// //           ),
// //         ),
// //         title: Center(
// //           child: Text(
// //             'Registar',
// //             style: TextStyle(color: Colors.black),
// //           ),
// //         ),
// //       ),
// //       body: Center(
// //         child: Form(
// //           key: _formKey,
// //           child: ListView(
// //             padding: EdgeInsets.all(30),
// //             shrinkWrap: true,
// //             children: [
// //               Hero(
// //                 tag: 'logo',
// //                 child: Image.asset(
// //                   'assets/images/logo_chat.png',
// //                   height: 250.0,
// //                 ),
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(
// //                     horizontal: 12.0, vertical: 12.0),
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
// //                     horizontal: 12.0, vertical: 12.0),
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
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(
// //                     horizontal: 12.0, vertical: 12.0),
// //                 child: TextFormField(
// //                   controller: checkPasswordController,
// //                   decoration: InputDecoration(
// //                     labelText: "Сыр сөздү тастыктоо",
// //                     fillColor: Colors.red,
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(25.0),
// //                       borderSide: BorderSide(),
// //                     ),
// //                   ),
// //                   keyboardType: TextInputType.emailAddress,
// //                   validator: (val) {
// //                     if (val != passwordController.text) {
// //                       return 'Сыр сөз дал келбей калды!';
// //                     } else if (val.length == 0) {
// //                       return 'Бул жер бош болбоосу керек!';
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
// //                           await registerWithEmail(
// //                             emailController.text,
// //                             checkPasswordController.text,
// //                           );
// //                         }
// //                       },
// //                       buttonBorderColor: Colors.amberAccent,
// //                       buttonColor: Colors.amberAccent,
// //                       buttonText: 'Катталуу',
// //                     ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Future<void> registerWithEmail(String email, String password) async {
// //     try {
// //       UserCredential userCredential = await firebaseAuth
// //           .createUserWithEmailAndPassword(email: email, password: password);

// //       final User _user = userCredential.user;
// //       UserModel _userModel;

// //       var uuid = Uuid();

// //       final _newUserID = uuid.v1();

// //       log('uuidValue =====> $_newUserID');
// //       CollectionReference userCollection = firestore.collection('users');

// //       userCollection.doc(_newUserID).set({
// //         'displayName': _user.displayName,
// //         'email': _user.email,
// //         'userId': _newUserID,
// //       }).then((_) async {
// //         final docSnapshot = await userCollection.doc(_newUserID).get();

// //         if (docSnapshot.exists) {
// //           final _data = docSnapshot.data() as Map<String, dynamic>;

// //           _userModel = UserModel.fromJson(_data, _newUserID);

// //           log('_userModel =====> $_userModel');
// //         }
// //         if (_userModel != null) {
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(
// //               builder: (context) => ChatPage(
// //                 userModel: _userModel,
// //               ),
// //             ),
// //           );
// //         }
// //       });

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

// // // import 'dart:developer';

// // // import 'package:firebase_core/firebase_core.dart';
// // // import 'package:team_portfolio/screens/projects/chatApp/chat_page.dart';
// // // import 'package:team_portfolio/screens/projects/chatApp/models/user_model.dart';
// // // import 'package:team_portfolio/screens/projects/chatApp/widgets/custom_button.dart';
// // // import 'package:uuid/uuid.dart';

// // // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:firebase_auth/firebase_auth.dart';
// // // import 'package:flutter/material.dart';

// // // import 'login_page.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   await Firebase.initializeApp();
// // // }

// // // class RegisterPage extends StatefulWidget {
// // //   const RegisterPage({Key key}) : super(key: key);

// // //   static const String id = 'register';

// // //   @override
// // //   _RegisterPageState createState() => _RegisterPageState();
// // // }

// // // class _RegisterPageState extends State<RegisterPage> {
// // //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
// // //   FirebaseFirestore firestore = FirebaseFirestore.instance;
// // //   final _formKey = GlobalKey<FormState>();
// // //   TextEditingController emailController = TextEditingController();
// // //   TextEditingController passwordController = TextEditingController();
// // //   TextEditingController checkPasswordController = TextEditingController();
// // //   bool isClicked = false;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       // backgroundColor: Colors.white,
// // //       body: Center(
// // //         child: Form(
// // //           key: _formKey,
// // //           child: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             // crossAxisAlignment: CrossAxisAlignment.stretch,
// // //             children: [
// // //               Hero(
// // //                 tag: 'logo',
// // //                 child: Image.asset(
// // //                   'assets/images/logo.png',
// // //                   height: 250.0,
// // //                 ),
// // //               ),
// // //               Padding(
// // //                 padding: const EdgeInsets.symmetric(
// // //                     horizontal: 12.0, vertical: 12.0),
// // //                 child: TextFormField(
// // //                   controller: emailController,
// // //                   decoration: InputDecoration(
// // //                     labelText: "Э-почта",
// // //                     fillColor: Colors.red,
// // //                     border: OutlineInputBorder(
// // //                       borderRadius: BorderRadius.circular(25.0),
// // //                       borderSide: BorderSide(),
// // //                     ),
// // //                   ),
// // //                   keyboardType: TextInputType.emailAddress,
// // //                   validator: (val) {
// // //                     if (!isEmail(val)) {
// // //                       return 'Э-почтаңызды жазыңыз!';
// // //                     } else {
// // //                       return null;
// // //                     }
// // //                   },
// // //                 ),
// // //               ),
// // //               Padding(
// // //                 padding: const EdgeInsets.symmetric(
// // //                     horizontal: 12.0, vertical: 12.0),
// // //                 child: TextFormField(
// // //                   controller: passwordController,
// // //                   decoration: InputDecoration(
// // //                     labelText: "Сыр сөз",
// // //                     fillColor: Colors.red,
// // //                     border: OutlineInputBorder(
// // //                       borderRadius: BorderRadius.circular(25.0),
// // //                       borderSide: BorderSide(),
// // //                     ),
// // //                   ),
// // //                   keyboardType: TextInputType.emailAddress,
// // //                   validator: (val) {
// // //                     if (val.length == 0) {
// // //                       return 'Сыр сөздү жазыңыз!';
// // //                     } else {
// // //                       return null;
// // //                     }
// // //                   },
// // //                 ),
// // //               ),
// // //               Padding(
// // //                 padding: const EdgeInsets.symmetric(
// // //                     horizontal: 12.0, vertical: 12.0),
// // //                 child: TextFormField(
// // //                   controller: checkPasswordController,
// // //                   decoration: InputDecoration(
// // //                     labelText: "Сыр сөздү тастыктоо",
// // //                     fillColor: Colors.red,
// // //                     border: OutlineInputBorder(
// // //                       borderRadius: BorderRadius.circular(25.0),
// // //                       borderSide: BorderSide(),
// // //                     ),
// // //                   ),
// // //                   keyboardType: TextInputType.emailAddress,
// // //                   validator: (val) {
// // //                     if (val != passwordController.text) {
// // //                       return 'Сыр сөз дал келбей калды!';
// // //                     } else if (val.length == 0) {
// // //                       return 'Бул жер бош болбоосу керек!';
// // //                     } else {
// // //                       return null;
// // //                     }
// // //                   },
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 24.0),
// // //               isClicked
// // //                   ? CircularProgressIndicator()
// // //                   : CustomButton(
// // //                       onPressed: () async {
// // //                         if (_formKey.currentState.validate()) {
// // //                           setState(() {
// // //                             isClicked = true;
// // //                           });
// // //                           await registerWithEmail(
// // //                             emailController.text,
// // //                             checkPasswordController.text,
// // //                           );
// // //                         }
// // //                       },
// // //                       buttonBorderColor: Colors.amberAccent,
// // //                       buttonColor: Colors.amberAccent,
// // //                       buttonText: 'Катталуу',
// // //                     ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Future<void> registerWithEmail(String email, String password) async {
// // //     try {
// // //       UserCredential userCredential = await firebaseAuth
// // //           .createUserWithEmailAndPassword(email: email, password: password);

// // //       /// Future, birok then versiyasy
// // //       ///  UserCredential userCred;
// // //       // firebaseAuth
// // //       //     .createUserWithEmailAndPassword(email: email, password: password)
// // //       //     .then((value) => userCred = value);

// // //       final User _user = userCredential.user;
// // //       UserModel _userModel;

// // //       var uuid = Uuid();

// // //       final _newUserID =
// // //           uuid.v1(); // -> "710b962e-041c-11e1-9234-0123456789ab";

// // //       log('uuidValue =====> $_newUserID'); // -> '710b962e-041c-11e1-9234-0123456789ab'

// // //       CollectionReference userCollection = firestore.collection('users');

// // //       /// Create user and add to database
// // //       userCollection.doc(_newUserID).set({
// // //         'displayName': _user.displayName,
// // //         'email': _user.email,
// // //         'userId': _newUserID,
// // //       }).then((_) async {
// // //         /// Get newly created user
// // //         final docSnapshot = await userCollection.doc(_newUserID).get();

// // //         if (docSnapshot.exists) {
// // //           final _data = docSnapshot.data() as Map<String, dynamic>;

// // //           _userModel = UserModel.fromJson(_data, _newUserID);

// // //           log('_userModel =====> $_userModel');
// // //         }

// // //         /// Usermodel null emes bolso, chatpage ke jibergenche ach
// // //         if (_userModel != null) {
// // //           // Navigator.pushNamed(context, ChatPage.id);
// // //           Navigator.push(
// // //             context,
// // //             MaterialPageRoute(
// // //               builder: (context) => ChatPage(
// // //                 userModel: _userModel,
// // //               ),
// // //             ),
// // //           );
// // //         }
// // //       });

// // //       setState(() {
// // //         isClicked = false;
// // //       });
// // //     } on FirebaseAuthException catch (e) {
// // //       if (e.code == 'weak-password') {
// // //         print('The password provided is too weak.');
// // //       } else if (e.code == 'email-already-in-use') {
// // //         print('The account already exists for that email.');
// // //       }
// // //     } catch (e) {
// // //       print(e);
// // //     }
// // //   }
// // // }
// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:kurs_sabak9/constants.dart';
// import 'package:kurs_sabak9/sabaktan/chat_screen_test.dart';
// import 'package:kurs_sabak9/screens/chat_screen.dart';
// import 'package:kurs_sabak9/widgets/rounded_button.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({Key key}) : super(key: key);

//   static const String id = 'register_screen';

//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final auth = FirebaseAuth.instance;
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   CollectionReference userCollection;
//   bool showSpinner = false;
//   String email;
//   String password;

//   @override
//   void initState() {
//     super.initState();
//     userCollection = firestore.collection('users');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: GestureDetector(
//         onTap: () {
//           FocusScope.of(context).unfocus();
//         },
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Flexible(
//                 child: Hero(
//                   tag: 'logo',
//                   child: Container(
//                     height: 200.0,
//                     child: Image.asset('assets/images/logo.png'),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 48.0,
//               ),
//               TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 textAlign: TextAlign.center,
//                 onChanged: (value) {
//                   email = value;
//                 },
//                 decoration:
//                     kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
//               ),
//               SizedBox(
//                 height: 8.0,
//               ),
//               TextField(
//                 obscureText: true,
//                 textAlign: TextAlign.center,
//                 onChanged: (value) {
//                   password = value;
//                 },
//                 decoration: kTextFieldDecoration.copyWith(
//                     hintText: 'Enter your password'),
//               ),
//               SizedBox(
//                 height: 24.0,
//               ),
//               RoundedButton(
//                 title: 'Register',
//                 colour: Colors.blueAccent,
//                 onPressed: () async {
//                   FocusScope.of(context).unfocus();
//                   try {
//                     UserCredential userCredential =
//                         await auth.createUserWithEmailAndPassword(
//                             email: email, password: password);

//                     log('userCredential: ${userCredential.user.email}');

//                     if (userCredential != null) {
//                       //Versiya 1

//                       // await firestore.collection('users').add...

//                       //Versiya 2
//                       await userCollection
//                           .doc(userCredential.user.uid)
//                           .set({
//                             'name': userCredential.user.displayName ?? 'Name',
//                             'lastname': 'Lastname',
//                             'userID': userCredential.user.uid,
//                             'email': userCredential.user.email,
//                             'password': password,
//                           })
//                           .then((value) => Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ChatScreen()),
//                               ))
//                           .onError((error, stackTrace) =>
//                               log('error firestore add user: $error'));

//                       // if(documentReference.)
//                       // // Navigator.pushNamed(context, ChatScreen.id);

//                     } else {
//                       //katani korsot
//                     }
//                   } on FirebaseAuthException catch (e) {
//                     if (e.code == 'weak-password') {
//                       print('The password provided is too weak.');
//                     } else if (e.code == 'email-already-in-use') {
//                       print('The account already exists for that email.');
//                     }
//                   } catch (e) {
//                     print(e);
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects/chatApp/chat_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/constants.dart';
import 'package:team_portfolio/screens/projects/chatApp/home_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/widgets/rounded_button.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
// }

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key key}) : super(key: key);

  static const String id = 'register_screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference userCollection;
  bool showSpinner = false;
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
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Center(
          child: Text('Register '),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
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
                title: 'Register',
                colour: Colors.blueAccent,
                onPressed: () async {
                  FocusScope.of(context).unfocus();
                  try {
                    UserCredential userCredential =
                        await auth.createUserWithEmailAndPassword(
                            email: email, password: password);

                    log('userCredential: ${userCredential.user.email}');

                    if (userCredential != null) {
                      await userCollection
                          .doc(userCredential.user.uid)
                          .set({
                            'name': userCredential.user.displayName ?? 'Name',
                            'lastname': 'Lastname',
                            'userID': userCredential.user.uid,
                            'email': userCredential.user.email,
                            'password': password,
                          })
                          .then((value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()),
                              ))
                          .onError((error, stackTrace) =>
                              log('error firestore add user: $error'));
                    } else {}
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
