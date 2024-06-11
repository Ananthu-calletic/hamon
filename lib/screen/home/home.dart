import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/screen/clasroom/classroomdata.dart';
import 'package:hamon/screen/registration/registrationhome.dart';
import 'package:hamon/screen/student/studentdatalist.dart';
import 'package:hamon/screen/subjects/subjectdata.dart';
import 'package:hamon/utils/api/apicalls.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map<String, dynamic>> homedatalist = [
    {"name": "Students", "icon": "images/student.png", "color": pastalgreen},
    {"name": "Subjetcs", "icon": "images/subject.png", "color": pastalblue},
    {"name": "Class Rooms", "icon": "images/classrom.png", "color": pastelred},
    {
      "name": "Registration",
      "icon": "images/registration.png",
      "color": pastelyellow
    }
  ];
  @override
  void initState() {
    super.initState();
    getsubjectfromserver();
    getstudentsfromserver();
    getclassroomfromserver();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: width * .05, right: width * .05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopSpacing(),
            const Threeh(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Heading28font700(
                  heading: 'Hello,',
                  color: blackcolor,
                ),
                Icon(
                  Icons.menu,
                  color: blackcolor,
                )
              ],
            ),
            const Heading22font400(
              heading: "Good Morning",
              color: blackcolor,
            ),
            const TopSpacing(),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 22.0,
                    crossAxisSpacing: 7.0,
                    childAspectRatio: .8),
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  top: 1.0,
                ),
                itemCount: homedatalist.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Get.to(() => const StudentDataList());
                        } else if (index == 1) {
                          Get.to(() => const SubjectDataList());
                        } else if (index == 2) {
                          Get.to(() => const ClassroomDataList());
                        } else {
                          Get.to(() => const Registrationhome());
                        }
                      },
                      child: Container(
                        color: homedatalist[index]['color'],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              homedatalist[index]['icon'],
                              width: 40,
                            ),
                            Heading17font600(
                              heading: homedatalist[index]['name'],
                              color: blackcolor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
