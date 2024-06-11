import 'package:flutter/material.dart';
import 'package:hamon/models/classroomlist.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class ClassroomDataList extends StatefulWidget {
  const ClassroomDataList({super.key});

  @override
  State<ClassroomDataList> createState() => _ClassroomDataListState();
}

class _ClassroomDataListState extends State<ClassroomDataList> {
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
                heading: "Class Rooms",
                color: blackcolor,
              ),
            ),
            Threeh(),
            ClassRoomlist(),
          ],
        ),
      ),
    );
  }
}
