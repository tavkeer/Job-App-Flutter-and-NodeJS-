import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhub/controllers/login_provider.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/custom_btn.dart';
import 'package:jobhub/views/common/custom_textfield.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/auth/signup.dart';
import 'package:jobhub/views/ui/mainscreen.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginNotifier>(
      builder: ((context, loginNotifier, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: CustomAppBar(
              text: "Login",
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(CupertinoIcons.arrow_left),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const HeightSpacer(size: 50),
                ReusableText(
                  text: "Welcome Back!",
                  style: appstyle(
                    30,
                    Color(kDark.value),
                    FontWeight.w600,
                  ),
                ),
                ReusableText(
                  text: "Fill the details to login to your account",
                  style: appstyle(
                    16,
                    Color(kDark.value),
                    FontWeight.w400,
                  ),
                ),
                const HeightSpacer(size: 50),
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
                  obsecureText: loginNotifier.obsecureText,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "password",
                  validator: (password) {
                    return (password!.isEmpty || password.length < 7)
                        ? "Please enter a valid passord"
                        : "";
                  },
                  suffixIcon: IconButton(
                    onPressed: () async {
                      loginNotifier.obsecureText = !loginNotifier.obsecureText;
                    },
                    icon: Icon(
                      (!loginNotifier.obsecureText)
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
                    onTap: () => Get.to(() => const RegistrationPage()),
                    child: ReusableText(
                      text: "Register",
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
                  ontap: () => Get.to(() => const MainScreen()),
                  text: 'Login',
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
