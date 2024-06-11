import 'package:flutter/material.dart';
import 'package:hamon/models/registrationdetailsview.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class RegistrationdetailView extends StatefulWidget {
  const RegistrationdetailView({super.key});

  @override
  State<RegistrationdetailView> createState() => _RegistrationdetailViewState();
}

class _RegistrationdetailViewState extends State<RegistrationdetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: whitecolor,
      ),
      body: const Column(
        children: [
          Center(
              child:
                  Heading22font700(heading: 'Registration', color: blackcolor)),
          Fiveh(),
          RegistrationDetailList()
        ],
      ),
    );
  }
}
