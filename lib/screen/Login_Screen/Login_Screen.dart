// import 'package:flutter/material.dart';
//
// import '../../Widgets/Colors.dart';
// import '../../Widgets/CommonTextFormField.dart';
// import '../../main.dart';
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});
//
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.45,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/Loginimages.png'), // Replace with your asset
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 50,
//                   right: 20,
//                   child: TextButton(
//                     onPressed: () {},
//                     child: const Text(
//                       'Skip >',
//                       style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(24.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Login',
//                     style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
//                   ),
//                   const SizedBox(height: 30),
//                   const Text('Email Address', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
//                   const SizedBox(height: 8),
//                   // TextField(
//                   //   decoration: InputDecoration(
//                   //     hintText: 'Johndoe@Gmail.Com',
//                   //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
//                   //     filled: true,
//                   //     fillColor: Colors.grey[100],
//                   //   ),
//                   // ),
//                   // const SizedBox(height: 20),
//                   // const Text('Password', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
//                   // const SizedBox(height: 8),
//                   // TextField(
//                   //   obscureText: true,
//                   //   decoration: InputDecoration(
//                   //     hintText: '********',
//                   //     suffixIcon: const Icon(Icons.visibility_outlined, color: Colors.grey),
//                   //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
//                   //     filled: true,
//                   //     fillColor: Colors.grey[100],
//                   //   ),
//                   // ),
//
//                   CustomInputField(
//                     label: 'Email Address',
//                     hintText: 'Johndoe@Gmail.Com',
//                     controller: _emailController,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) return 'Enter your email';
//                       if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//                         return 'Enter a valid email address';
//                       }
//                       return null;
//                     },
//                   ),
//
//                   CustomInputField(
//                     label: 'Password',
//                     hintText: '********',
//                     isPassword: true,
//                     controller: _passController,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) return 'Enter your password';
//                       if (value.length < 6) return 'Password must be at least 6 characters';
//                       return null;
//                     },
//                   ),
//
//                   // Forgot Password
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                       onPressed: () {},
//                       child: const Text('Forgot password?', style: TextStyle(color: Colors.black54, decoration: TextDecoration.underline)),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//
//                   // Login Button
//                   SizedBox(
//                     width: double.infinity,
//                     height: 55,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryBrown,
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                       ),
//                       child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//
//                   // Sign Up Footer
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text("Don't Have an account? "),
//                       GestureDetector(
//                         onTap: () {},
//                         child: const Text(
//                           'Sign Up',
//                           style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:alisons/Bloc/Login_bloc/login_bloc.dart';
import 'package:alisons/Bloc/Login_bloc/login_event.dart';
import 'package:alisons/Bloc/Login_bloc/login_state.dart';
import 'package:alisons/Widgets/ToastService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import '../../Widgets/Colors.dart';
import '../../Widgets/CommonTextFormField.dart';
import '../../Widgets/bottomNavigationbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // 1. Move controllers and keys inside the State class
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  // 2. Cleanup controllers when the widget is destroyed to save memory
  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  // 3. Validation logic function
  void _login() {
    if (_formKey.currentState!.validate()) {
      // Dispatch the event to the Bloc
      context.read<LoginBloc>().add(
        OnLoginEvent(
          email: _emailController.text.trim(),
          password: _passController.text.trim(),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // 4. Wrap everything in a Form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Loginimages.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 20,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip >',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    const SizedBox(height: 30),

                    // Email Field
                    CustomInputField(
                      label: 'Email Address',
                      hintText: 'Johndoe@Gmail.Com',
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your email';
                        }
                        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                          return 'Enter a valid email address';
                        }
                        return null;
                      },
                    ),

                    // Password Field
                    CustomInputField(
                      label: 'Password',
                      hintText: '********',
                      isPassword: true,
                      controller: _passController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Forgot password?',
                            style: TextStyle(
                                color: Colors.black54,
                                decoration: TextDecoration.underline)),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Login Button with Validation Trigger
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is LoginSuccess) {

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => MyMainApp()),
                          );
                        } else if (state is LoginError) {
                          ToastService.showError(context, state.errorMessage);
                        }
                      },
                      builder: (context, state) {
                        return SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            // If loading, disable the button; otherwise, call _login
                            onPressed: state is LoginLoading ? null : _login,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryBrown,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: state is LoginLoading
                                ? const CircularProgressIndicator(color: Colors.white)
                                : const Text('Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't Have an account? "),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}