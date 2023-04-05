import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/authentication/forget_password.dart';
import 'package:media/authentication/verify_code.dart';
import 'package:media/authentication/signup_screen.dart';
import 'package:media/bottom_Navigation/bottom_navigation_screen.dart';
import 'package:media/colors/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // values
  bool passwordObscured = false;

  //controllers
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Column(children: [
// circle image
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/logo.jpeg'),
                      radius: 60,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // media text
                  Text(
                    'MEDIA',
                    style: GoogleFonts.lora(
                        color: AppTheme.colors.text,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
// welcome back text
                      Text(
                        'WELCOME BACK',
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.colors.text,
                            fontSize: 24),
                      ),
// email textform
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: GoogleFonts.lora(
                            fontSize: 12, color: AppTheme.colors.text),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppTheme.colors.container,
                          hintText: 'Email',
                          hintStyle: GoogleFonts.lora(
                              fontSize: 12,
                              color: AppTheme.colors.text.withOpacity(0.5)),
                          prefixIcon: Icon(
                            CupertinoIcons.mail,
                            color: AppTheme.colors.appbar,
                            size: 18,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppTheme.colors.container),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppTheme.colors.appbar),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Email';
                          }
                          return null;
                        },
                      ),
// password textform
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: passwordObscured,
                        keyboardType: TextInputType.visiblePassword,
                        style: GoogleFonts.lora(
                            fontSize: 12, color: AppTheme.colors.text),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppTheme.colors.container,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.lora(
                              fontSize: 12,
                              color: AppTheme.colors.text.withOpacity(0.5)),
                          prefixIcon: Icon(
                            CupertinoIcons.lock,
                            color: AppTheme.colors.appbar,
                            size: 18,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordObscured = !passwordObscured;
                              });
                            },
                            icon: Icon(
                              passwordObscured
                                  ? CupertinoIcons.eye_slash
                                  : CupertinoIcons.eye,
                              color: AppTheme.colors.appbar,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppTheme.colors.container),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppTheme.colors.appbar),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Password';
                          }
                          return null;
                        },
                      ),

// forget password
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => ForgetPassword()));
                            },
                            child: Text(
                              'FORGET PASSWORD',
                              style: GoogleFonts.lora(
                                color: AppTheme.colors.text,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),

// login button
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>BottomNavigationScreen()));
                        },
                        child: Container(
                          width: 360,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppTheme.colors.appbar,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: GoogleFonts.lora(
                                  color: AppTheme.colors.text,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),

// or sign in text
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          'Or Sign In With',
                          style: GoogleFonts.lora(
                              fontSize: 16, color: AppTheme.colors.text),
                        ),
                      ),
// images
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
// google image
                          Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('images/google.png')),

                          const SizedBox(
                            width: 50,
                          ),
// facebook image
                          Image(
                              height: 100,
                              width: 100,
                              image: AssetImage('images/facebook.png')),
                        ],
                      ),

// not have account
                      const SizedBox(
                        height: 90,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Not have an Account?',
                            style: GoogleFonts.lora(
                                color: AppTheme.colors.text, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> SignUpScreen()));
                            },
                            child: Text(
                              'Register Account',
                              style: GoogleFonts.lora(
                                  color: AppTheme.colors.appbar,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
