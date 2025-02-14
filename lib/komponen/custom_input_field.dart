import 'package:apps_donasi/komponen/color_palet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final TextInputType? keyboardType;
  const CustomInputField({
    super.key,
    this.label = 'hint',
    this.keyboardType,
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(color: Colors.white),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: ColorPalet.c5, fontSize: 15),
          
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          floatingLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: ColorPalet.c1),
          
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: ColorPalet.c4, width: 1.5),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: ColorPalet.c1,
              width: 2,
            ),
          ),
        ),
      );
  }
}

//======== SUBCLASS UNTUK NO TELEPON ========

class PhoneInputField extends CustomInputField {
  const PhoneInputField({super.key})
      : super(
          label: 'Masukan no Telepon',
          keyboardType: TextInputType.phone,
        );
}
