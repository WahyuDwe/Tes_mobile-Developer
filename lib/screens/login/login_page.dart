import 'package:flutter/material.dart';
import 'package:test_arutalalab/core/app_color.dart';
import 'package:test_arutalalab/screens/home/home_page.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login_page';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 24.0, top: 50.0, right: 24.0),
            physics: MediaQuery.of(context).viewInsets.bottom == 0
                ? const NeverScrollableScrollPhysics()
                : null,
            child: Column(
              children: [
                const SizedBox(
                  height: 150.0,
                ),
                Center(
                  child: Text(
                    'HATOCA',
                    style: TextStyle(
                        fontSize: 54.0,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 64.0),
                TextField(
                  scrollPadding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 24.0),
                TextField(
                  scrollPadding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  controller: passwordController,
                  obscureText: !_isPasswordVisible,
                  style: const TextStyle(fontFamily: 'Poppins'),
                  decoration: InputDecoration(
                      hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: (){},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: primaryColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, HomePage.routeName);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor)),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(primaryColor),
                      ),
                      child: const Icon(
                        Icons.fingerprint_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 200.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont ave an account? '),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
