import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unity_world/components/background.dart';
import 'package:unity_world/components/nav_bar.dart';
import 'package:unity_world/service/auth.dart';

bool isCheckedRememberMe = false;

class LoginPage extends StatefulWidget {
  //function
  final Function toggle;
  const LoginPage({
    Key? key,
    required this.toggle
    }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //ref for the AuthServices class
  final AuthServices _auth = AuthServices();

  //from key
  final _formKey = GlobalKey<FormState>();
  //email password states
  String email = "";
  String password = "";
  String error = "";

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Background(),

          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                SvgPicture.asset(
                  'assets/illustrations/login.svg',
                  height: size.height * 0.45,
                ),

                Text(
                  "Login To Continue",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(15, 26, 00, 0.8),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 20),

                  child: Form(
                    key: _formKey,

                    child: TextFormField(
                      decoration: InputDecoration(
                  
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                  
                        labelText: 'Enter your E-mail',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                  
                        hintText: '@student.nsbm.as.lk',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(158, 158, 158, 1),
                          fontSize: 16,
                        ),
                  
                        prefixIcon: Icon(
                          Icons.mail_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                  
                      ),

                      validator: (val) => 
                        val!.isEmpty ? "Enter a valid email" : null,
                      onChanged: (val) {
                        setState(() {
                              email = val;
                        });
                      },

                    ),
                  ),

                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 5),

                  child: Form(
                    key: _formKey,

                    child: TextFormField(
                      decoration: InputDecoration(
                  
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                  
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                  
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                  
                        suffixIcon: IconButton(
                          onPressed: () {}, 
                          icon: Icon(Icons.visibility)
                        ),
                  
                      ),

                      validator: (val) => val!.length < 6
                          ? "Password must be at least 6 characters"
                          : null,
                      onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                      },

                    ),
                  ),

                ),

                Padding(
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    height: 0,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 25, 15),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      SizedBox(
                        height: 20.0,
                        width: 20.0,

                        child: Theme(
                          data: ThemeData(), 
                          child: Checkbox(
                            value: isCheckedRememberMe, 
                            onChanged: actionRememberMe(
                              isCheckedRememberMe
                            ),
                          ),
                        ),

                      ),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: SizedBox(
                              width: 6,
                            ),
                          ),

                          Text(
                            'Remember Me',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 45,
                    width: 250,
                
                    child: GestureDetector(
                      onTap: () async 
                      {
                          dynamic result = await _auth
                              .signInUsingEmailAndPassword(email, password);

                          if (result == null) {
                            setState(() 
                            {
                              error = "Could not signin with those credentials";
                            }
                            );
                          }
                        },

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => BottomNavigation()
                            ),
                          );
                        }, 
                        
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(15, 26, 88, 1.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                    
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    
                            Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.white,
                            ),
                    
                          ],
                        ),
                      
                      ),

                    ),
                    
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),

    );
  }

  actionRememberMe(
    bool isCheckedRememberMe
  ) {}

}