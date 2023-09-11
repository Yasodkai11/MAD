import 'package:flutter/material.dart';
import 'package:unity_world/pages/HomePage/home_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: 
                const EdgeInsets.all(5.0),
              child: 
                Image.asset('assets/illustrations/login.png'),
            ),

            const Padding(
              padding: 
                EdgeInsets.all(8.0),
              child: 
                Text(
                  "Login To Continue",
                    style: TextStyle(
                      color: Color.fromRGBO(30, 144, 255, 1.0),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                ),
            ),

            const Padding(
              padding: 
                EdgeInsets.all(15.0),
              child: 
                TextField(
                  decoration: 
                    InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 
                    'Enter your E-mail',
                  hintText: 
                    '@students.nsbm.ac.lk',
                  hintStyle: 
                    TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  prefixIcon: 
                    Icon(Icons.mail_outlined),
                    ),
                  ),
            ),

            Padding(
              padding: 
                const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                decoration: 
                  InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 
                      'Password',
                    prefixIcon: 
                      const Icon(Icons.lock_outline),
                    suffixIcon: 
                      IconButton(
                        onPressed: () {}, 
                        icon: 
                          const Icon(Icons.visibility_off),
                      )
                  ),
              ),
            ),

            const Padding(
              padding: 
                EdgeInsets.zero,
              child: 
                SizedBox(
                  height: 0,
                ),
            ),

            Container(
              height: 45,
              width: 300,
              decoration: 
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(15, 26, 88, 1.0),
                ),
              child: 
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage()),
                    );
                  }, 
                  child: 
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "LOGIN",
                          style: 
                            TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                        color: Colors.white,
                        )
                      ],
                    ),
                ),
            ),

          ],
        ),
      )

    );
  }
}
