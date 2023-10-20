import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobhub/controllers/signup_provider.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/custom_btn.dart';
import 'package:jobhub/views/common/custom_textfield.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/auth/login.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpNotifier>(
      builder: ((context, signUpNotifier, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: CustomAppBar(
              text: "Sign Up",
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(CupertinoIcons.arrow_left),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const HeightSpacer(size: 50),
                ReusableText(
                  text: "Hello Welcome",
                  style: appstyle(
                    30,
                    Color(kDark.value),
                    FontWeight.w600,
                  ),
                ),
                ReusableText(
                  text: "Fill the details to SignUp for an account",
                  style: appstyle(
                    16,
                    Color(kDark.value),
                    FontWeight.w400,
                  ),
                ),
                const HeightSpacer(size: 50),
                CustomTextField(
                  controller: name,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Full Name",
                  validator: (name) {
                    return (name!.isEmpty) ? "Please enter your Name" : "";
                  },
                ),
                const HeightSpacer(size: 20),
                CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Email",
                  validator: (email) {
                    return (email!.isEmpty || !email.contains('@'))
                        ? "Please enter a valid Email"
                        : "";
                  },
                ),
                const HeightSpacer(size: 20),
                CustomTextField(
                  controller: password,
                  obsecureText: signUpNotifier.isObsecure,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "password",
                  validator: (password) {
                    if (signUpNotifier.passwordValidator(password ?? '')) {
                      return 'Please Enter a  password with at least 6 char and one upperCase and a LowerCase and at leaset one special character';
                    }
                    return '';
                  },
                  suffixIcon: IconButton(
                    onPressed: () async {
                      signUpNotifier.isObsecure = !signUpNotifier.isObsecure;
                    },
                    icon: Icon(
                      (!signUpNotifier.isObsecure)
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(kDark.value),
                    ),
                  ),
                ),
                const HeightSpacer(size: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Get.to(() => const LoginPage()),
                    child: ReusableText(
                      text: "Login",
                      style: appstyle(
                        14,
                        Color(kLightBlue.value),
                        FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const HeightSpacer(size: 20),
                CustomButton(
                  ontap: () {},
                  text: 'SignUp',
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
