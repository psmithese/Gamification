import 'package:flutter/material.dart';
import 'package:gamification/helper/nav_function.dart';
import 'package:gamification/screens/home_screen.dart';
import 'package:gamification/screens/signup_screen.dart';
import 'package:gamification/widget/text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/textformfield_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(top: 103),
            clipBehavior: Clip.none,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  
                  child:  Text('Sign in',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        
                        color: const Color.fromARGB(255, 33, 33, 33),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 32, 25, 0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        
                        child:  Text(
                             "Enter email address",
                            style: GoogleFonts.inter(color:  const Color.fromARGB(255, 88, 88, 88), fontSize: 13, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start),
                      ),
                      const SizedBox(height: 11,),
                      Container(
                        clipBehavior: Clip.none,
                        height: 53,
                        child: const TextForm()),
                      const SizedBox(
                        height: 23,
                      ),
                      Container(
                        
                        child:  Text(
                             "Password",
                            style: GoogleFonts.inter(color:  const Color.fromARGB(255, 88, 88, 88), fontSize: 13, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start),
                      ),
                      const SizedBox(height: 11,),
                      Container(
                        height: 53,
                        clipBehavior: Clip.none,
                        child: CustomTextFormField(
                            initialValue: "",
                            decoration: InputDecoration(
                                hintStyle:
                                    GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 144, 144, 144)),
                                hintText: "Your Password ?",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    
                                    borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter a name";
                              }
                              return null;
                            }),
                      ),
                      const SizedBox(
                        height: 9.5,
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 4.5),
                          child:  Text(
                               "Forgot Password",
                              style: GoogleFonts.inter(color:  const Color.fromARGB(255, 92, 88, 255), fontSize: 13, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.start),
                        ),
                      ),
                      const SizedBox(
                        height: 21.5,
                      ),
                      Container(
                        clipBehavior:Clip.none,
                        height: 59,
                        child: TextButton(
                          onPressed: () {
                            goTo(context, const HomePage());
                          },
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: Container(
                            width: double.infinity,
                            
                            decoration: BoxDecoration(
                                color:  const Color.fromARGB(255, 92, 88, 255),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: CustomText(
                                  text: "Sign in",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125),
                                  align: TextAlign.start),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          Text(
                             "Don't have an account?",
                            style: GoogleFonts.inter(color:  const Color.fromARGB(255, 88, 88, 88), fontSize: 13, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return const SignUpScreen();
                              })));
                            },
                            child: Text(
                             " Sign Up",
                            style: GoogleFonts.inter(color:  const Color.fromARGB(255, 92, 88, 255), fontSize: 13, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.start),
                          ),
                        ],
                      ),
                      
                      
                      
                      
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 244, 239.99, 0),
                  width: 133.10,
                  height: 85,
                  child: Image.asset(
                    "assets/images/Vector.png",
                    width: 133.10,
                    height: 90,
                  ),
                )
              ],
            ),
          ),
      ),
      
    );
  }
}
