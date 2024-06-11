import 'package:flutter/material.dart';
import 'package:hamon/models/studentlist.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class StudentDetailView extends StatefulWidget {
  const StudentDetailView({super.key, required this.studentdata});
  final Map<String, dynamic> studentdata;

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Threeh(),
            const Center(
              child: Heading22font700(
                heading: "Student Detail",
                color: blackcolor,
              ),
            ),
            const TopSpacing(),
            const TopSpacing(),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/studentpic.png"),
            ),
            const Twoh(),
            Heading22font400(
                heading: widget.studentdata['name'], color: blackcolor),
            const Oneh(),
            Heading22font400(
                heading: "Age : ${widget.studentdata['age'].toString()}",
                color: blackcolor),
            const Twoh(),
            Heading13font400(
                heading: widget.studentdata['email'], color: blackcolor)
          ],
        ),
      ),
    );
  }
}
