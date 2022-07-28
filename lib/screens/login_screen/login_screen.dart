import 'dart:convert';

import 'package:assesment/providers/authProvider.dart';
import 'package:assesment/screens/dashboard/dashboard.dart';
import 'package:assesment/utils/colors.dart';
import 'package:assesment/widgets/inputField.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/';
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool loading = false;
  final formKey = GlobalKey<FormState>();
  String? emailValidator(String? text) {
    if (text == null || text == '') {
      return 'Email Field cannot be null';
    }
    return null;
  }

  String? passwordValidator(String? text) {
    if (text == null || text == '') {
      return 'Password Field cannot be null';
    }
    return null;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 62.5,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 32, color: Color(0xff253e4a), fontFamily: 'SFPro'),
            ),
            SizedBox(
              height: 35,
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: InputField(
                            hintText: 'Email / Username / Phone Number',
                            keyboarType: TextInputType.text,
                            controller: emailController,
                            validator: emailValidator),
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: InputField(
                          hintText: 'Password',
                          keyboarType: TextInputType.text,
                          controller: passwordController,
                          validator: passwordValidator,
                          obscureText: true,
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 21,
            ),
            Row(
              children: const [Spacer(), Text('Forgot Password?')],
            ),
            const SizedBox(
              height: 53,
            ),
            Center(
                child: InkWell(
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    loading = true;
                  });
                  Response response = await auth.loginUser(
                          emailController.text, passwordController.text)
                      as Response;

                  if (response.statusCode == 200) {
                    Navigator.of(context).pushNamed(DashBoard.routeName);
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Ok'))
                            ],
                            content:
                                const Text('Incorrect Username or password'),
                          );
                        });
                  }
                }
                setState(() {
                  loading = false;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 333,
                height: 60,
                decoration: BoxDecoration(
                    color: blue, borderRadius: BorderRadius.circular(20)),
                child: loading
                    ? const CircularProgressIndicator(
                        // color: Colors.white,
                        )
                    : const Text(
                        'Sign in My Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
              ),
            )),
            const SizedBox(
              height: 22,
            ),
            const Center(child: Text('Don’t have an account? - Sign Up'))
          ]),
        ),
      ),
    );
  }
}
