import 'package:flutter/material.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class SubjectDetailView extends StatefulWidget {
  const SubjectDetailView({super.key});

  @override
  State<SubjectDetailView> createState() => _SubjectDetailViewState();
}

class _SubjectDetailViewState extends State<SubjectDetailView> {
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
                heading: "Subject Detail",
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
            Heading22font400(heading: "History", color: blackcolor),
            Oneh(),
            Heading22font400(heading: "Branda Miller", color: blackcolor),
            Twoh(),
            Heading13font400(heading: 'Credit : 10', color: blackcolor)
          ],
        ),
      ),
    );
  }
}
