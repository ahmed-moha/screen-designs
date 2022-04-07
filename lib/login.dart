import 'package:design_project/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Theme.of(context).scaffoldBackgroundColor,
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        iconTheme: const IconThemeData( color: Colors.black),
        title: const Text(
          'Doctor Appointment',
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 180,
                height: 180,
                child: LottieBuilder.network(
                    'https://assets8.lottiefiles.com/private_files/lf30_tul1qoqd.json'),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              hintText: '   Enter your username',
              icon: CupertinoIcons.envelope,
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              hintText: '   Enter your password',
              icon: CupertinoIcons.lock,
              sufixIcon: Icons.remove_red_eye,
              isobscureText: true,
            ),
            Container(
              margin: const EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Or, login with',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LaunchButton(
                  onPressed: () {},
                  iconData: FontAwesomeIcons.facebook,
                  backgroundColor: kPrimaryColor,
                ),
                LaunchButton(
                  onPressed: () {},
                  iconData: FontAwesomeIcons.google,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t Have an Account?',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              width: 12.0,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.icon,
    this.sufixIcon,
    this.isobscureText = false,
    this.hintText,
    this.onChanged,
    this.onSufixIconPressed,
  }) : super(key: key);
  final IconData icon;
  final IconData? sufixIcon;
  final bool isobscureText;
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function()? onSufixIconPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 35),
      child: TextField(
        onChanged: onChanged,
        obscureText: isobscureText,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            prefixIconConstraints: const BoxConstraints.tightFor(),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 12),
            prefixIcon: Icon(icon, size: 18),
            suffixIcon: IconButton(
              icon: Icon(
                sufixIcon,
                size: 18,
              ),
              onPressed: onSufixIconPressed,
            ),
            focusColor: Colors.red,
            iconColor: Colors.red),
      ),
    );
  }
}

class LaunchButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final Color? backgroundColor;

  const LaunchButton(
      {required this.onPressed, required this.iconData, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 12.0,
          ),
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 12.0,
          )
        ],
      ),
      child: IconButton(
        icon: Icon(iconData, color: Colors.white, size: 22),
        onPressed: onPressed,
      ),
    );
  }
}
