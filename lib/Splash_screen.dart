
import 'package:flutter/material.dart';
import 'package:login_registration_ui/component/my_button.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [

            Image(image: NetworkImage("https://images.pexels.com/photos/1080401/pexels-photo-1080401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",),
          fit: BoxFit.cover,

            ),
           Padding(
             padding: EdgeInsets.only(top: 100,left: 35),
             child: Text("Welcome To \n PetalPulse",style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.w600,),),
           ),

            const Padding(
              padding: EdgeInsets.only(top: 170,left: 35),
              child: Text("This UI is only for new developer which e want learn flutter. so frist we need learn basic weidget then strat ui implemmentation  mean short project making and this Ui thrugh we good ",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
            Column(

              children: [
                // btn1
                Padding(
                  padding: EdgeInsets.only(top: 500),
                   child: TextButton(onPressed: (){
                      Navigator.pushNamed(context, 'Signup_screen');
                   },
                     child: my_button(title: 'sign up',  ),),
    ),

             // btn2
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'signIn_scrren');

                  },
                    child: my_button2(title: 'sign In',),),
                ),




              ],
            )

          ],

        ),
        
      ),
    );
  }
}