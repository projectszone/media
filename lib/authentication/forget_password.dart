import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/colors/app_theme.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  //controllers
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //app bar
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        CupertinoIcons.arrow_left_square,
                        color: AppTheme.colors.text,
                        size: 24,
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
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
                Text('MEDIA',
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
// reset text
                    Text(
                      'RESET YOUR PASSWORD',
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


// reset button
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {

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
                            'RESET',
                            style: GoogleFonts.lora(
                                color: AppTheme.colors.text,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
