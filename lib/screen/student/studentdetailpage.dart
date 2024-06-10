import 'package:flutter/material.dart';
import 'package:hamon/models/studentlist.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class StudentDetailView extends StatefulWidget {
  const StudentDetailView({super.key});

  @override
  State<StudentDetailView> createState() => _StudentDetailViewState();
}

class _StudentDetailViewState extends State<StudentDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: whitecolor,
      ),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Threeh(),
            Center(
              child: Heading22font700(
                heading: "Student Detail",
                color: blackcolor,
              ),
            ),
            TopSpacing(),
            TopSpacing(),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/studentpic.png"),
            ),
            Twoh(),
            Heading22font400(heading: "Lourie Thomas", color: blackcolor),
            Oneh(),
            Heading22font400(heading: "Age : 22", color: blackcolor),
            Twoh(),
            Heading13font400(
                heading: 'louriethomas@example.com', color: blackcolor)
          ],
        ),
      ),
    );
  }
}
