import 'package:dezzy_admin/src/config/app_style.dart';
import 'package:dezzy_admin/src/config/colors.dart';
import 'package:dezzy_admin/src/config/pallete.dart';
import 'package:dezzy_admin/src/widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? const SizedBox()
                : Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.jpg'),
                          fit: BoxFit.contain,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.dstATop,
                          ),
                        ),
                      ),
                    ),
                  ),
            Expanded(
              child: Container(
                height: height,
                margin: EdgeInsets.symmetric(
                    horizontal: ResponsiveWidget.isSmallScreen(context)
                        ? height * 0.032
                        : height * 0.12),
                color: Colors.black,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.2),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Let’s',
                                style: ralewayStyle.copyWith(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                )),
                            TextSpan(
                              text: ' Sign In 👇',
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        'Hey, Enter your details to get sign in \nto your account.',
                        style: ralewayStyle.copyWith(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: height * 0.064),
                      TextFormField(
                        style: ralewayStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Pallete.whiteColor,
                          fontSize: 12.0,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(27),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Pallete.borderColor,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Pallete.gradient2,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Email",
                          hintStyle: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.020),
                      TextFormField(
                        obscureText: true,
                        style: ralewayStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Pallete.whiteColor,
                          fontSize: 12.0,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(27),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Pallete.borderColor,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Pallete.gradient2,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Password",
                          hintStyle: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: ralewayStyle.copyWith(
                              fontSize: 12.0,
                              color: Pallete.gradient2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(16.0),
                          child: Ink(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 70.0, vertical: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Pallete.gradient2,
                            ),
                            child: Text(
                              'Sign In',
                              style: ralewayStyle.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Pallete.whiteColor,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
