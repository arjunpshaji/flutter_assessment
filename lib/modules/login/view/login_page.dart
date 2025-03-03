import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';
import 'package:flutter_assessment/modules/home/view/home_page.dart';
import 'package:flutter_assessment/theme/widgets/outline_button_widget.dart';
import 'package:flutter_assessment/theme/widgets/primary_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool passwordValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(height: 40),
                Image.asset('assets/icons/logo.png', height: 100),
                const SizedBox(height: 50),
                const Align(alignment: Alignment.bottomLeft, child: Text("Sign In", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
                const SizedBox(height: 45),
                Row(
                  children: [
                    Icon(
                      Icons.mail_outline,
                      color: appColor(context).primaryText,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: appColor(context).secondaryText!.withValues(alpha: 0.3))),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: appColor(context).primary!)),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => setState(() {}),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                //Error text
                if (_emailController.text.isNotEmpty && _validateEmail(_emailController.text))
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Incorrect Email address",
                      style: TextStyle(
                        color: appColor(context).error,
                        fontSize: 12,
                      ),
                    ),
                  ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      Icons.lock_outline,
                      color: passwordValid ? appColor(context).primaryText : appColor(context).error,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: appColor(context).primary!,
                          )),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: passwordValid ? appColor(context).secondaryText!.withValues(alpha: 0.3) : appColor(context).error!)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: passwordValid ? appColor(context).primary! : appColor(context).error!)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                              color: passwordValid ? appColor(context).secondaryText?.withValues(alpha: 0.3) : appColor(context).error,
                            ),
                            onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                if (passwordValid == false)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Password don't match",
                      style: TextStyle(
                        color: appColor(context).error,
                        fontSize: 12,
                      ),
                    ),
                  ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {}, // Add navigation
                    child: Text("Forgot Password?", style: TextStyle(color: appColor(context).primary?.withValues(alpha: 0.6))),
                  ),
                ),
                const SizedBox(height: 15),
                PrimaryButton(
                  buttonText: "Sign In",
                  textColor: appColor(context).background,
                  onPressed: () {
                    setState(() {
                      // For test purpose
                      passwordValid= false;
                      Navigator.push(context, HomePage.route());
                    });
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1, color: appColor(context).secondaryText!.withValues(alpha: 0.2))),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "OR",
                          style: TextStyle(fontSize: 10),
                        )),
                    Expanded(child: Divider(thickness: 1, color: appColor(context).secondaryText!.withValues(alpha: 0.2))),
                  ],
                ),
                const SizedBox(height: 16),
                const OutlineButtonWidget(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to Adhicine?",
                      style: TextStyle(color: appColor(context).text),
                    ),
                    TextButton(
                      onPressed: () {}, // Add navigation
                      child: Text("Sign Up", style: TextStyle(color: appColor(context).primary?.withValues(alpha: 0.6))),
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

  //Email validation logic
  bool _validateEmail(String email) {
    if (email.isEmpty) return false;
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
    );
    return !emailRegex.hasMatch(email);
  }
}
