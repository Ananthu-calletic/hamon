import 'package:flutter/material.dart';
import 'package:hamon/models/studentlist.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class StudentDataList extends StatefulWidget {
  const StudentDataList({super.key});

  @override
  State<StudentDataList> createState() => _StudentDataListState();
}

class _StudentDataListState extends State<StudentDataList> {
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
                heading: "Students",
                color: blackcolor,
              ),
            ),
            Threeh(),
            StudentList(),
          ],
        ),
      ),
    );
  }
}
