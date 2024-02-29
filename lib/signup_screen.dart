import 'package:flutter/material.dart';
import 'package:login_registration_ui/component/my_button.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [

            Image(image: NetworkImage("https://images.pexels.com/photos/1080401/pexels-photo-1080401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                height: 630,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120)
                  )
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text("Register",style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.w600,color: Colors.green),),
                      ),
                      Text("Please Create your Account",style: TextStyle(color: Colors.grey),),
                      
                      SizedBox(height: 70,),
                      
                       MyTextField(labelText: "Frist Name"),
                      SizedBox(height: 20,),
                      MyTextField(labelText: "Last Name"),
                      SizedBox(height: 20,),
                      MyTextField(labelText: "Email"),
                      SizedBox(height: 20,),
                       passsword(title: "password"),
                      SizedBox(height: 20,),
                      passsword(title: "conform password"),
                      
                      SizedBox(height: 30,),
                      
                     // my_button2(title: "Sign Up"),
                      TextButton(onPressed:(){
                        Navigator.pushNamed(context, 'signIn_scrren');
                      },
                          child: my_button2(title: "signup",)),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 94),
                            child: Text("Already have an Account?",),
                          ),
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'signIn_scrren');
                          }, child: Text("Login",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),)
                        ],
                      )



                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
