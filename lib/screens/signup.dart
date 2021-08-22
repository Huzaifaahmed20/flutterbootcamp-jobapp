import 'package:flutter/material.dart';
import 'package:job_app/app_styles.dart';
import 'package:job_app/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isSignIn = false;

  TextEditingController _userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _isSignIn ? 'Let’s sign you in' : 'Let’s sign you up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                _isSignIn ? 'Welcome Back' : 'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                _isSignIn ? 'you’ve been missed !' : 'Join the community',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 30),
              !_isSignIn
                  ? TextField(
                      controller: _userNameController,
                      decoration: InputDecoration(
                        enabledBorder: AppStyles.textFieldBorder,
                        focusedBorder: AppStyles.textFieldBorder,
                        hintText: 'Enter your full name',
                        hintStyle: TextStyle(
                          color: Color(
                            0xff8F8F9E,
                          ),
                        ),
                        fillColor: Color(0xff1E1C24),
                        filled: true,
                      ),
                    )
                  : const SizedBox.shrink(),
              SizedBox(height: _isSignIn ? 10 : 20),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: AppStyles.textFieldBorder,
                  focusedBorder: AppStyles.textFieldBorder,
                  hintText: 'Enter your email address',
                  hintStyle: TextStyle(
                    color: Color(
                      0xff8F8F9E,
                    ),
                  ),
                  fillColor: Color(0xff1E1C24),
                  filled: true,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: AppStyles.textFieldBorder,
                  focusedBorder: AppStyles.textFieldBorder,
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: Color(
                      0xff8F8F9E,
                    ),
                  ),
                  fillColor: Color(0xff1E1C24),
                  filled: true,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _isSignIn
                        ? 'Don’t have an account?'
                        : 'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isSignIn = !_isSignIn;
                      });
                    },
                    child: Text(
                      _isSignIn ? 'Register' : 'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  print(_userNameController.text);

                  // Navigator.of(context).pushReplacementNamed('/dashboard');
                },
                child: Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      _isSignIn ? 'Sign In' : 'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
