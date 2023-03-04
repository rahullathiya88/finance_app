import 'package:finance_app/presentation/screens/landing_page/home_screen.dart';
import 'package:finance_app/presentation/screens/landing_page/landing_page.dart';
import 'package:finance_app/presentation/screens/widget/constant_textfield.dart';
import 'package:finance_app/presentation/screens/widget/custom_button.dart';
import 'package:finance_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool _passwordVisible = false.obs;
  bool _autoValidate = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: Form(
          key: _formKey,
          autovalidateMode: _autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade400, shape: BoxShape.circle),
              ),
              const SizedBox(
                height: 50,
              ),
              ConstTextField(
                controller: emailController,
                hintText: 'Email',
                labelText: 'Email Address',
                validator: (value) {
                  String pattern =
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                      r"{0,253}[a-zA-Z0-9])?)*$";
                  RegExp regex = RegExp(pattern);
                  if (value!.isEmpty) {
                    return "Email cannot be empty";
                  } else if (!regex.hasMatch(value)) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Obx(
                () => ConstTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Password cannot be empty"),
                    LengthRangeValidator(
                        min: 6,
                        max: 20,
                        errorText: 'Password must be at least 6 characters')
                  ]),
                  labelText: 'Password',
                  obscureText: _passwordVisible.value ? false : true,
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                  suffixIcon: Obx(
                    () => GestureDetector(
                        onTap: () {
                          _passwordVisible.value = !_passwordVisible.value;
                        },
                        child: Icon(
                            _passwordVisible.value
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.black)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onTap: () {
                  final FormState? form = _formKey.currentState;
                  if (form!.validate()) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                        (route) => false);
                  }
                },
                title: 'Login',
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Signup',
                    style: TextStyle(
                        color: KColor.disableText,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: KColor.disableText,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
              const Spacer()
            ],
          ),
        ),
      )),
    );
  }
}
