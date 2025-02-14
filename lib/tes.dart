import 'package:apps_donasi/komponen/custom_input_field.dart';
import 'package:flutter/material.dart';


class Tes extends StatelessWidget {
  const Tes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Text Box Rounded'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Text Box 1
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2), // Warna dan ketebalan border
                    borderRadius: BorderRadius.circular(10), // Tingkat rounded corner
                    ),
                  child: Center(
                    child: Text('Box 1'), // Teks di dalam text box
                  ),
                ),
              ),

              SizedBox(width: 15),
              Expanded(
                child: PhoneInputField(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}