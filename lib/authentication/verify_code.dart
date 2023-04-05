import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_theme.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            CircleAvatar(
              backgroundImage: AssetImage(
                'images/logo.jpeg',
              ),
              radius: 50,
            ),
            SizedBox(height: 10),
            Text(
              'Media',
              style: GoogleFonts.lora(
                color: AppTheme.colors.text,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Enter your code',
                  style: GoogleFonts.lora(
                    color: AppTheme.colors.text,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Text(
              'The Confirmation code has been send to your email.',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 10),
            VerificationCode(
              fullBorder: true,
              textStyle: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Theme.of(context).primaryColor),
              keyboardType: TextInputType.number,
              underlineColor: Colors
                  .amber, // If this is null it will use primaryColor: Colors.red from Theme
              length: 4,
              cursorColor:
                  Colors.blue, // If this is null it will default to the ambient
              // clearAll is NOT required, you can delete it
              // takes any widget, so you can implement your design
              clearAll: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Clear all',
                  style: TextStyle(
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                      color: Colors.blue[700]),
                ),
              ),
              margin: const EdgeInsets.all(12),
              onCompleted: (String value) {
                setState(() {
                  _code = value;
                });
              },
              onEditing: (bool value) {
                setState(() {
                  _onEditing = value;
                });
                if (!_onEditing) FocusScope.of(context).unfocus();
              },
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 40,
                  width: 360,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.appbar,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text(
                    'Verify',
                        style: GoogleFonts.lora(
                          color: AppTheme.colors.text,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
