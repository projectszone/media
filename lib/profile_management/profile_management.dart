import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media/authentication/login_screen.dart';
import 'package:media/authentication/manage_password.dart';
import 'package:media/authentication/personal_information.dart';
import 'package:media/colors/app_theme.dart';

class ProfileManagement extends StatefulWidget {
  const ProfileManagement({Key? key}) : super(key: key);

  @override
  State<ProfileManagement> createState() => _ProfileManagementState();
}

class _ProfileManagementState extends State<ProfileManagement> {
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
// app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'MEDIA',
                    style: GoogleFonts.lora(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppTheme.colors.text),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.profile_circled,
                        color: AppTheme.colors.text,
                        size: 24,
                      ))
                ],
              ),
// User Profile
              const SizedBox(
                height: 50,
              ),
               ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('images/person.jpeg'),
                ),
                 title: Text('Awais Qureshi',style: GoogleFonts.lora(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                   color: AppTheme.colors.text
                 ),),
                 subtitle: Text('awais@gmail.com',style: GoogleFonts.lora(
                   fontSize: 14,
                   color: AppTheme.colors.text
                 ),),
              ),

// account card
            const SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(left: 15.0),
               child: Text('ACCOUNT',style: GoogleFonts.lora(
                 color: AppTheme.colors.text,
                 fontSize: 12,
               ),),
             ),
              const SizedBox(height: 5,),
              Card(
                color: AppTheme.colors.container,
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>PersonalInformation()));
                  },
                  title: Text('Profile Information',style: GoogleFonts.lora(
                    color: AppTheme.colors.text,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Icon(CupertinoIcons.chevron_forward,
                    color: AppTheme.colors.text,
                    )
                  ),
                ),
              ),

// security card
            const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('SECURITY',style: GoogleFonts.lora(
                  color: AppTheme.colors.text,
                  fontSize: 12,
                ),),
              ),
              const SizedBox(height: 5,),
              Card(
                color: AppTheme.colors.container,
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ManagePassword()));
                  },
                  title: Text('Manage Password',style: GoogleFonts.lora(
                    color: AppTheme.colors.text,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),),
                  trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(CupertinoIcons.chevron_forward,
                        color: AppTheme.colors.text,
                      )
                  ),
                ),
              ),

// help and legal
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('HELP & LEGAL',style: GoogleFonts.lora(
                  color: AppTheme.colors.text,
                  fontSize: 12,
                ),),
              ),
              const SizedBox(height: 5,),
              Card(
                color: AppTheme.colors.container,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Support Center',style: GoogleFonts.lora(
                        color: AppTheme.colors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                      trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(CupertinoIcons.chevron_forward,
                            color: AppTheme.colors.text,
                          )
                      ),
                    ),
                    ListTile(
                      title: Text('App Version',style: GoogleFonts.lora(
                        color: AppTheme.colors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                      trailing: Text('2023-v1.0',style: GoogleFonts.lora(
                        color: AppTheme.colors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    ListTile(
                      title: Text('Terms of Use',style: GoogleFonts.lora(
                        color: AppTheme.colors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                      trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(CupertinoIcons.chevron_forward,
                            color: AppTheme.colors.text,
                          )
                      ),
                    ),
                    ListTile(
                      title: Text('Privacy Policy',style: GoogleFonts.lora(
                        color: AppTheme.colors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                      trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(CupertinoIcons.chevron_forward,
                            color: AppTheme.colors.text,
                          )
                      ),
                    ),
                    ListTile(
                      onTap: (){
                        showDialog(context: context, builder: (context){
                          return  Container(
                            child: AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: AppTheme.colors.background,
                                title: Column(mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'LOGOUT?',
                                      style: GoogleFonts.lora(
                                          color: AppTheme.colors.text,
                                          fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                    ),
                                    const SizedBox(height: 10,),
                                    Text(
                                      'Are You sure you want to Log Out?',
                                      style: GoogleFonts.lora(
                                          color: AppTheme.colors.text,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),

                                //alert dialogue code

                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      },
                                          child:Text('NO',
                                          style: GoogleFonts.lora(
                                            fontSize: 12,
                                            color: AppTheme.colors.text
                                          ),) ),

                                      TextButton(onPressed: (){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                                      },
                                          child:Text('YES',
                                            style: GoogleFonts.lora(
                                                fontSize: 14,
                                                color: AppTheme.colors.appbar,
                                              fontWeight: FontWeight.bold
                                            ),) ),
                                    ],
                                  )

                                ]
                            ),
                          );

                        });
                      },
                      title: Text('Sign Out',style: GoogleFonts.lora(
                        color: AppTheme.colors.text,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                      trailing: IconButton(
                          onPressed: (){},
                          icon: Icon(CupertinoIcons.power,
                            color: AppTheme.colors.text,
                          )
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
