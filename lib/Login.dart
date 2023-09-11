import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mylogin/category.dart';
import 'package:mylogin/register.dart';
import 'package:mylogin/widget/social.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _loginButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CategoryPage()),
    );
  }

  void _registerButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Register()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: GoogleFonts.robotoSlab(
                  color: Colors.blue[400],
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Please login to your account.',
                style: GoogleFonts.robotoSlab(
                  color: Colors.black54,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 26,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: GoogleFonts.robotoSlab(),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password",hintStyle: GoogleFonts.robotoSlab()),
          
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle forgot password
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        'Forgot Password?',
                        style: GoogleFonts.robotoSlab(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 46),
              Container(
                width: double.infinity,
                child: RawMaterialButton(
                  onPressed: _loginButtonPressed,
                  fillColor: Colors.blue[600],
                  elevation: 0.0,
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.robotoSlab(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ScoailLogin(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Don\'t have an account? ',
            ),
            InkWell(
              onTap: _registerButtonPressed,
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 20,
                ),
              ),
            )
          ]),
        ));
  }
}
