import 'package:flutter/material.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class SubjectDetailView extends StatefulWidget {
  const SubjectDetailView({super.key, required this.subjectdata});

  final Map<String, dynamic> subjectdata;
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Threeh(),
            const Center(
              child: Heading22font700(
                heading: "Subject Detail",
                color: blackcolor,
              ),
            ),
            const TopSpacing(),
            const TopSpacing(),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/sub.png"),
            ),
            const Twoh(),
            Heading22font400(
                heading: widget.subjectdata['name'], color: blackcolor),
            const Oneh(),
            Heading22font400(
                heading: widget.subjectdata['teacher'], color: blackcolor),
            const Twoh(),
            Heading13font400(
                heading: "Credits: ${widget.subjectdata['credits']}".toString(),
                color: blackcolor)
          ],
        ),
      ),
    );
  }
}
