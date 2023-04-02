import 'dart:io';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:media/colors/app_theme.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {

  //image picker
  File? imageFile;
// image getting from gallery
  void getImageFromGallery() async {
    XFile? pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 60);
    cropImageGallery(pickedFile!.path);
  }
  void cropImageGallery(filePath) async {
    CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: filePath,
        maxHeight: 1080,
        maxWidth: 1080,
        uiSettings: [
          AndroidUiSettings(
              toolbarColor: AppTheme.colors.background,
              toolbarWidgetColor: AppTheme.colors.text,
              toolbarTitle: 'Edit Photo'),
          IOSUiSettings(title: 'Edit Photo')
        ]);
    if (croppedImage != null) {
      setState(() {
        imageFile = File(croppedImage.path);
      });
    }
  }

// image getting through camera
  void getImageFromCamera() async {
    XFile? pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 60);
    cropImageCamera(pickedFile!.path);
  }
  void cropImageCamera(filePath) async {
    CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: filePath,
        maxHeight: 1080,
        maxWidth: 1080,
        uiSettings: [
          AndroidUiSettings(
              toolbarColor: AppTheme.colors.background,
              toolbarWidgetColor: AppTheme.colors.text,
              toolbarTitle: 'Edit Photo'),
          IOSUiSettings(title: 'Edit Photo')
        ]);
    if (croppedImage != null) {
      setState(() {
        imageFile = File(croppedImage.path);
      });
    }
  }

  //controllers
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
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
//personal info
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
// welcome text
                    Text(
                      'PERSONAL INFORMATION',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          color: AppTheme.colors.text,
                          fontSize: 24),
                    ),
const SizedBox(height: 10,),
// profile
                    InkWell(
                      onTap: (){
//pop up dialog for selecting methid
                        showDialog(context: context, builder: (context){
                          return  Container(
                            child: AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: AppTheme.colors.container,
                                title: Text(
                                  'SELECT METHOD',
                                  style: GoogleFonts.lora(
                                      color: AppTheme.colors.text,
                                      fontWeight: FontWeight.bold),
                                ),

                                //alert dialogue code

                                actions: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextButton(onPressed: (){
                                        getImageFromGallery();
                                        Navigator.pop(context);
                                      },
                                        child:Row(
                                          children: [
                                            Icon(CupertinoIcons.folder, color: AppTheme.colors.appbar,),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'GALLERY',
                                              style: GoogleFonts.lora(
                                                  color: AppTheme.colors.appbar,
                                                  fontWeight: FontWeight.bold),
                                            ),

                                          ],
                                        ),

                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(onPressed: (){
                                        getImageFromCamera();
                                        Navigator.pop(context);
                                      },
                                        child:Row(
                                          children: [
                                            Icon(CupertinoIcons.camera, color: AppTheme.colors.appbar,),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'CAMERA',
                                              style: GoogleFonts.lora(
                                                  color: AppTheme.colors.appbar,
                                                  fontWeight: FontWeight.bold),
                                            ),

                                          ],
                                        ),

                                      ),
                                    ],
                                  )

                                ]
                            ),
                          );

                        });


                      },
                      child: const Center(
                        child:  CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('images/person.jpeg'),
                          radius: 45,
                        ),
                      ),
                    ),
const SizedBox(
  height: 10,
),

// name textform
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      style: GoogleFonts.lora(
                          fontSize: 12, color: AppTheme.colors.text),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppTheme.colors.container,
                        hintText: 'Full Name',
                        hintStyle: GoogleFonts.lora(
                            fontSize: 12,
                            color: AppTheme.colors.text.withOpacity(0.5)),
                        prefixIcon: Icon(
                          CupertinoIcons.person_circle,
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
                          return 'Enter Name';
                        }
                        return null;
                      },
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
// dob textform
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _dobController,
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.lora(
                          fontSize: 12, color: AppTheme.colors.text),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppTheme.colors.container,
                        hintText: 'Date of Birth',
                        hintStyle: GoogleFonts.lora(
                            fontSize: 12,
                            color: AppTheme.colors.text.withOpacity(0.5)),
                        prefixIcon: Icon(
                          CupertinoIcons.calendar,
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
                          return 'Enter Date of Birth';
                        }
                        return null;
                      },
                    ),
// city textform
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _cityController,
                      keyboardType: TextInputType.streetAddress,
                      style: GoogleFonts.lora(
                          fontSize: 12, color: AppTheme.colors.text),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppTheme.colors.container,
                        hintText: 'City',
                        hintStyle: GoogleFonts.lora(
                            fontSize: 12,
                            color: AppTheme.colors.text.withOpacity(0.5)),
                        prefixIcon: Icon(
                          CupertinoIcons.building_2_fill,
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
                          return 'Enter City';
                        }
                        return null;
                      },
                    ),

// update button
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 360,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppTheme.colors.appbar,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'UPDATE INFORMATION',
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
