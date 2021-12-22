// // import 'package:animated_text_kit/animated_text_kit.dart';
// // import 'package:flutter/material.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/login_page.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/register_page.dart';
// // import 'package:team_portfolio/screens/projects/chatApp/widgets/custom_button.dart';
// // import 'package:team_portfolio/screens/projects_page.dart';

// // class HomePage extends StatefulWidget {
// //   HomePage({Key key}) : super(key: key);

// //   static const String id = 'home';

// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage>
// //     with SingleTickerProviderStateMixin {
// //   AnimationController animationController;
// //   Animation animation;

// //   @override
// //   void initState() {
// //     super.initState();

// //     initAnimation();
// //   }

// //   void initAnimation() {
// //     animationController =
// //         AnimationController(duration: Duration(seconds: 3), vsync: this);

// //     animation = ColorTween(
// //       begin: Colors.redAccent,
// //       end: Colors.white,
// //     ).animate(animationController);
// //   }

// //   void startAnimation() {
// //     animationController.forward();

// //     animationController.addListener(() {
// //       setState(() {});
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     animationController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: animation.value,
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back, color: Colors.black),
// //           onPressed: () => Navigator.push(
// //             context,
// //             MaterialPageRoute(builder: (context) => ProductCard()),
// //           ),
// //         ),
// //         title: Center(
// //           child: Text(
// //             'Chat App',
// //           ),
// //         ),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             DefaultTextStyle(
// //               style: TextStyle(
// //                 fontSize: 22.0,
// //                 color: Colors.white,
// //               ),
// //               child: AnimatedTextKit(
// //                 animatedTexts: [
// //                   WavyAnimatedText('Flash Chat'),
// //                 ],
// //                 isRepeatingAnimation: true,
// //                 onTap: () {
// //                   startAnimation();
// //                 },
// //               ),
// //             ),
// //             const SizedBox(height: 54.0),
// //             Hero(
// //               tag: 'logo',
// //               child: Image.asset(
// //                 'assets/images/logo_chat.png',
// //                 height: 150.0,
// //               ),
// //             ),
// //             const SizedBox(height: 54.0),
// //             CustomButton(
// //               buttonText: 'Login',
// //               buttonColor: Color(0xff41C3FF),
// //               buttonBorderColor: Color(0xff41C3FF),
// //               buttonHorizontalWidth: MediaQuery.of(context).size.width * 0.32,
// //               onPressed: () {
// //                 Navigator.pushNamed(context, LoginPage.id);
// //               },
// //             ),
// //             const SizedBox(height: 24.0),
// //             CustomButton(
// //               buttonText: 'Register',
// //               buttonColor: Color(0xff4489FF),
// //               buttonBorderColor: Color(0xff4489FF),
// //               onPressed: () {
// //                 Navigator.pushNamed(context, RegisterPage.id);
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:team_portfolio/screens/projects/chatApp/login_page.dart';
// import 'package:team_portfolio/screens/projects/chatApp/register_page.dart';
// import 'package:team_portfolio/screens/projects/chatApp/widgets/custom_button.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   static const String id = 'home';

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage>
//     with SingleTickerProviderStateMixin {
//   AnimationController animationController;
//   Animation animation;

//   @override
//   void initState() {
//     super.initState();

//     initAnimation();
//     // startAnimation();
//   }

//   void initAnimation() {
//     animationController =
//         AnimationController(duration: Duration(seconds: 3), vsync: this);

//     animation = ColorTween(
//       begin: Colors.redAccent,
//       end: Colors.white,
//     ).animate(animationController);
//   }

//   void startAnimation() {
//     animationController.forward();

//     animationController.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: animation.value,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DefaultTextStyle(
//               style: TextStyle(
//                 fontSize: 22.0,
//                 color: Colors.white,
//               ),
//               child: AnimatedTextKit(
//                 animatedTexts: [
//                   WavyAnimatedText('Анимация'),
//                   WavyAnimatedText('Старт берүү үчүн мени бас'),
//                 ],
//                 isRepeatingAnimation: true,
//                 onTap: () {
//                   startAnimation();
//                 },
//               ),
//             ),
//             const SizedBox(height: 54.0),
//             Hero(
//               tag: 'logo',
//               child: Image.asset(
//                 'assets/images/logo.png',
//                 height: 150.0,
//               ),
//             ),
//             const SizedBox(height: 54.0),
//             CustomButton(
//               buttonText: 'Login',
//               buttonColor: Color(0xff41C3FF),
//               buttonBorderColor: Color(0xff41C3FF),
//               buttonHorizontalWidth: MediaQuery.of(context).size.width * 0.32,
//               onPressed: () {
//                 Navigator.pushNamed(context, LoginPage.id);
//               },
//             ),
//             const SizedBox(height: 24.0),
//             CustomButton(
//               buttonText: 'Register',
//               buttonColor: Color(0xff4489FF),
//               buttonBorderColor: Color(0xff4489FF),
//               onPressed: () {
//                 Navigator.pushNamed(context, RegisterPage.id);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects/chatApp/login_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/register_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(animationController);

    animationController.forward();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          ),
        ),
        backgroundColor: animation.value,
        title: Text('Chat'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/logo_chat.png'),
                    height: 70.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'Flash Chat',
                      textStyle: TextStyle(
                        fontSize: 32.0,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ],
            ),
            const SizedBox(height: 25.0),
            CustomElevatedButton(
              backgroundColor: Color(0xff41C3FF),
              buttonText: 'Login',
              screenRouteId: LoginScreen.id,
              horizontal: 130.0,
            ),
            const SizedBox(height: 25.0),
            CustomElevatedButton(
              backgroundColor: Color(0xff4489FF),
              buttonText: 'Register',
              screenRouteId: RegisterScreen.id,
            ),
          ],
        ),
      ),
    );
  }
}
