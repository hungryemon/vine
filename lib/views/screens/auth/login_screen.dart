import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vine/constants/constants.dart';
import 'package:vine/views/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         alignment: Alignment.center,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               'VINE',
               style: GoogleFonts.shadowsIntoLight(
                 letterSpacing: 2,
                 fontSize: 45,
                 color: buttonColor,
                 fontWeight: FontWeight.w900
               ),
               ),
               const Text(
                 'Login',
                 style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w700
               ),
               ),

               const SizedBox(height: 25,),

               //EMAILFIELD
               Container(
                 width: MediaQuery.of(context).size.width,
                 margin: const EdgeInsets.symmetric(horizontal: 20 ),
                 child:TextInputField(
                   controller: _passwordController, 
                   labelText: 'Password', 
                   icon: Icons.lock
               )
               ),

               const SizedBox(height: 25,),

               //PASSWORDFIELD
               Container(
                 width: MediaQuery.of(context).size.width,
                 margin: const EdgeInsets.symmetric(horizontal: 20 ),
                 child:TextInputField(
                   controller: _emailController, 
                   labelText: 'Email', 
                   icon: Icons.email)
               ),
               
               const SizedBox(height: 30,),


              //LOGIN BUTTON
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 50,
                 decoration: BoxDecoration(
                   color: buttonColor,
                   borderRadius: const BorderRadius.all(
                     Radius.circular(5)
                   )
                 ),
                 child:  InkWell(
                   onTap: () {
                       print('Logged in');
                     
                   },
                   child: const Center(
                     child: Text(
                       'Login',
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.w700
                       ),
                       ),
                   ),
                 ),
                 ),

                 const SizedBox(height: 15,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:  [
                     const Text(
                       'Don\'t have an account? ',
                       style: TextStyle(
                         fontSize: 20
                       ),
                     ),
                     InkWell(
                       onTap: () {
                         print('Navigating User..');
                       },
                       child: Text(
                         'Register',
                         style: TextStyle(
                           fontSize: 20,
                           color: buttonColor
                         ),
                       ),
                     ),
                   ],
                 )

           ],
         ),
      ),
    );
  }
}