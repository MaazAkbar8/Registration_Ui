import 'package:flutter/material.dart';
import 'package:login_registration_ui/component/my_button.dart';


class signIn_screen extends StatefulWidget {

  const signIn_screen({Key? key}) : super(key: key); // Provide Key parameter here

  @override

  @override
  State<signIn_screen> createState() => _signIn_screenState();
}

class _signIn_screenState extends State<signIn_screen> {

  bool _isSelected = false;


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,

        children: [


          const Image(image: NetworkImage("https://images.pexels.com/photos/1080401/pexels-photo-1080401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
            fit: BoxFit.cover,
          ),
          Center(

              child: Container(
                height: 595,
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120)
                  )
                ),
                
                 
                   child: SingleChildScrollView(
                     child: Column(
                       children: [
                         const Padding(
                           padding: EdgeInsets.only(top: 35),
                           child: Text("Welcome back",textAlign: TextAlign.center, style: TextStyle(fontSize: 21,
                             fontWeight: FontWeight.w600,color: Color(0xff438434)),),
                         ),
                         const SizedBox(height: 6,),
                         const Text("please signIn your account",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,
                             color: Colors.grey),),

                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: MyTextField(key: UniqueKey(), labelText: "Email"),
                          ),
                         const SizedBox(height: 10,),
                         const Padding(
                           padding: EdgeInsets.only(top: 10),
                           child: passsword(title: "password",)
                         ),

                         Row(
                           children: [

                             Radio(
                               value: true,
                               groupValue: _isSelected,
                               onChanged: (newValue) {
                                 setState(() {
                                   _isSelected = newValue!;
                                 });
                               },
                             ),

                             Text("Remember me",style: TextStyle(fontSize: 16,color: Colors.grey)),
                             SizedBox(width: 108,),
                             TextButton(onPressed: (){}, child: Text("Forgot password?",style: TextStyle(color: Colors.green),),)
                           ],
                         ),
                         
                         SizedBox(height: 120,),
                         
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'last');

                          },
                              child: my_button2(title: "SignIn"),),

                         
                          Row(
                           children: [
                             Padding(
                               padding: EdgeInsets.only(left: 94),
                               child: Text("Do not have an account?",),
                             ),
                             TextButton(onPressed: (){
                               Navigator.pushNamed(context, 'Signup_screen');
                             }, child: Text("sign up",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),)
                           ],
                         )
                       ],
                     ),
                   ),

                 ),
              ),
            

        ],

      ),

    );
  }
}
