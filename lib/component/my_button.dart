



import 'package:flutter/material.dart';
// button1    signin/login
class my_button extends StatelessWidget {
  final String title;


  const my_button({super.key,required this.title, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),

        child: Container(
          height: 44,
          width: 330,
          decoration: BoxDecoration(
            shape:  BoxShape.rectangle,

                color: Colors.white,
            borderRadius: BorderRadius.circular(30)
          ),
         child: Center(child: Text(title,style: TextStyle(color: Color(0xff438434,),
          fontWeight: FontWeight.normal,fontSize: 16),)),

        ),

    );
  }
}

//******************************************************************8
// button2 signup/registeration
class my_button2 extends StatelessWidget {
  final String title;


  const my_button2({super.key,required this.title });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),

        child: Container(
          height: 44,
          width: 330,
          decoration: BoxDecoration(
              shape:  BoxShape.rectangle,

              color: Color(0xff438434),
              borderRadius: BorderRadius.circular(30)
          ),
         child: Center(child: Text(title,style: TextStyle(color: Color(
           0xffffffff,),fontWeight: FontWeight.normal,fontSize: 16),)),


        ),

    );
  }
}
//****************************************************************
// Email

class MyTextField extends StatefulWidget {
  final String labelText;


  MyTextField({required this.labelText,Key? key}) : super(key: key);
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25),
         child: TextField(
          controller: _controller,

          keyboardType: TextInputType.emailAddress,

          decoration: InputDecoration(
           // hintText: 'name',
            labelText: widget.labelText,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),

              borderSide:  BorderSide(
                  color: Colors.grey,
                width: 1.0
              )
            ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: const BorderSide(
    color: Colors.green, // Set border color when focused
    width: 1.0, // Set border height when focused
    ),
     ),
            filled: true,
            fillColor: Colors.grey[100],
            contentPadding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 10),

          )
      ),
       );

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// *************************************************************8
// password

class passsword extends StatefulWidget {
  final String title;
  const passsword({Key? key, required this.title}) : super(key: key);


  @override
  State<passsword> createState() => _passswordState();
}

class _passswordState extends State<passsword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
          obscureText: _obscureText,
          decoration: InputDecoration(

          labelText: widget.title,


              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),

                  borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 1.0
                  )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(
                  color: Colors.green, // Set border color when focused
                  width: 1.0, // Set border height when focused
                ),
              ),
              filled: true,
              fillColor: Colors.grey[100],
              contentPadding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 10),
          suffixIcon: GestureDetector(
          onTap: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      child: Icon(
      _obscureText ? Icons.visibility : Icons.visibility_off,
      ),
      )
          )
      ),
    );
  }
}
