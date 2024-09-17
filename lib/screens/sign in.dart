import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_maker/screens/sign%20up.dart';
import '../color.dart';
import '../navi.dart';
import '../widgit/logo.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<login> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppLogo(),
          elevation: 0.0,
          backgroundColor: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.dark,
          //brightness: Brightness.li,
        ),
        body: SingleChildScrollView(
          child:
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 10,bottom: 30), child:  Text(
                  'Tiktok ',
                  style: TextStyle(
                    fontSize: 35,
                    color: buttonColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      filled: true,
                      fillColor: backgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: buttonColor,
                          width: 0.3,
                        ),
                      ),
                      hintText: "Enter your Email ",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ) ,
                      prefixIcon: Icon(Icons.email_sharp,  color: borderColor,),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      filled: true,
                      fillColor: backgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color:  buttonColor,
                          width: 0.3,
                        ),
                      ),
                      hintText: "Enter your Password ",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ) ,
                      suffixIcon: Icon(Icons.visibility, color: borderColor,),
                      prefixIcon: Icon(Icons.lock, color:borderColor,),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child:ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>navie()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  buttonColor,
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child:ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  buttonColor,
                    ),
                    child: const Center(
                      child: Text(
                        'Login with Google ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                    TextButton(
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20,color: buttonColor),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                      },
                    )
                  ],
                ),
              ],
            ),
          ),)

    );
  }}