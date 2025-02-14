import 'package:apps_donasi/komponen/custom_input_field.dart';
import 'package:apps_donasi/komponen/color_palet.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //===BG GRADIEN===
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color.fromARGB(255, 0, 39, 73), ColorPalet.c2],
                stops: [0.1, 1]),
          ),

          //===KONTEN===
          child: SizedBox.expand(
            child: Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: 'Disnut -',
                    fontSize: 35,
                  ),
                  CustomText(
                    text: 'Coldstar',
                    fontSize: 20,
                    letterSpacing: 6,
                  ),

                  SizedBox(height: 40),

                  CustomText(
                    text: 'Buat akun atau Masuk untuk melanjutkan',
                    fontSize: 15,
                  ),

                  SizedBox(height: 20),

                  //===FORM INPUT===
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorPalet.c4, width: 1.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(11),
                            child: Center(
                              child: Text(
                                '+62',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white54),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        flex: 4,
                        child: PhoneInputField(),
                      )
                    ],
                  ),
                  Text('asdfasdf', style: TextStyle(color: Colors.white60)),

                  SizedBox(height: 150),

                  Row(
                    children: [
                      CustomText(
                        text: 'Terdapat masalah saat Masuk atau Daftar?',
                        fontSize: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomButtonText(text: 'Bantuan'),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  const CustomText(
      {super.key,
      this.text = 'Text',
      this.fontSize = 35.0,
      this.color,
      this.fontWeight,
      this.letterSpacing = 0.5});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: TextStyle(color: color ?? ColorPalet.c1, fontSize: fontSize, letterSpacing: letterSpacing),
      ),
    );
  }
}

class CustomTextBold extends CustomText {
  const CustomTextBold({super.key})
      : super(color: ColorPalet.c1, fontWeight: FontWeight.bold);
}

class CustomButtonText extends CustomText {
  const CustomButtonText({
    super.key, required String text
  }) : super(text: text, fontSize: 12, color: ColorPalet.c3);
}
