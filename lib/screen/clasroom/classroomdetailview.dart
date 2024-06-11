import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/screen/subjects/subjectdata.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class ClassroomDetailView extends StatefulWidget {
  const ClassroomDetailView({super.key, required this.classroomdata});

  final Map<String, dynamic> classroomdata;
  @override
  State<ClassroomDetailView> createState() => _ClassroomDetailViewState();
}

class _ClassroomDetailViewState extends State<ClassroomDetailView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

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
            Center(
              child: Heading22font700(
                heading: widget.classroomdata['name'],
                color: blackcolor,
              ),
            ),
            const Threeh(),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: width * .9,
                height: height * .09,
                color: grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Fivew(),
                    const Heading17font400(
                        heading: 'Add Subject', color: blackcolor),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const SubjectDataList());
                      },
                      child: Container(
                        width: width * .2,
                        height: height * .05,
                        decoration: BoxDecoration(
                            color: pastalgreen,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Heading17font600(
                            heading: 'Add',
                            color: green,
                          ),
                        ),
                      ),
                    ),
                    const Fivew(),
                  ],
                ),
              ),
            ),
            const Fiveh(),
            widget.classroomdata['layout'] == "classroom"
                ? Padding(
                    padding: const EdgeInsets.only(left: 22, right: 22),
                    child: Image.asset('images/classroom.png'),
                  )
                : Padding(
                    padding: const EdgeInsets.only(
                      left: 22,
                      right: 22,
                    ),
                    child: Image.asset(
                      'images/conference.png',
                      height: height * .5,
                    ),
                  ),
            const Twoh(),
          ],
        ),
      ),
    );
  }
}
