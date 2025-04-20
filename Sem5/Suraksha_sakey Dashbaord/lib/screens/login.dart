import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'SignUpScreen.dart';
import 'package:suraksha_sakey/constants/colors.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(  // Added to prevent overflow on small screens
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/Applogo.png", height: 250),  // Adjusted height for better layout
              // SizedBox(height: 10),  // Added spacing between the image and text
              Text(
                "Register Using Phone Number",
                style: TextStyle(
                  fontSize: 24,  // Increased font size
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,  // Changed text color to blueAccent
                ),
              ),
              SizedBox(height: 20),  // Added spacing between the text and form fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),  // Adjusted horizontal padding
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter Mobile Number',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone),  // Added phone icon to the TextFormField
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Mobile Number';
                          }
                          if (value.length < 10) {
                            return 'Enter a valid number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _controller,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Enter Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock), // Added lock icon to the TextFormField
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: _togglePasswordVisibility,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),  // Reduced space before the "Forgot Password?" link
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Handle forgot password action
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.blueAccent),  // Changed color to blueAccent
                          ),
                        ),
                      ),
                      SizedBox(height: 20),  // Added more space before the button
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, process the data.
                            print('Password entered: ${_controller.text}');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Please correct the errors')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),  // Added padding for button
                          textStyle: TextStyle(fontSize: 18),
                          backgroundColor: ElevatedButtonBG,
                          foregroundColor: Colors.white,
                        ),
                        child: Text('Sign in'),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Sign In With",
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Replace with the actual implementation of Logo
                           Logo(Logos.google),
                        ],
                      ),
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()),
                              );
                            },
                            child: const Text(
                              " Sign Up",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
