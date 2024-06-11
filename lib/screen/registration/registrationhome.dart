import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/models/registrationlist.dart';
import 'package:hamon/screen/registration/addregistration.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class Registrationhome extends StatefulWidget {
  const Registrationhome({super.key});

  @override
  State<Registrationhome> createState() => _RegistrationhomeState();
}

class _RegistrationhomeState extends State<Registrationhome> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: whitecolor,
      ),
      body: Column(
        children: [
          const Center(
              child:
                  Heading22font700(heading: 'Registration', color: blackcolor)),
          const Twoh(),
          const RegistrationList(),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Get.to(() => const AddRegistration());
            },
            child: Container(
              width: width * .5,
              height: 50,
              decoration: BoxDecoration(
                  color: pastalblue, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Heading17font600(
                  heading: "New Registration",
                  color: Color(0xff007AFF),
                ),
              ),
            ),
          ),
          const Fiveh(),
        ],
      ),
    );
  }
}
