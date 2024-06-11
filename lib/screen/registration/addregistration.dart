import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/screen/student/studentdatalist.dart';
import 'package:hamon/screen/subjects/subjectdata.dart';
import 'package:hamon/utils/controller/getxcontroller.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class AddRegistration extends StatefulWidget {
  const AddRegistration({super.key});

  @override
  State<AddRegistration> createState() => _AddRegistrationState();
}

class _AddRegistrationState extends State<AddRegistration> {
  @override
  void initState() {
    super.initState();
    selectedsubject.value = 'Select a subject';
    selectedstudent.value = 'Select a student';
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: whitecolor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: whitecolor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13, top: 7, bottom: 5),
        child: Column(
          children: [
            const Center(
                child: Heading22font700(
                    heading: 'New Registration', color: blackcolor)),
            const Twoh(),
            GestureDetector(
              onTap: () {
                Get.to(() => const StudentDataList());
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: grey,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => Heading17font400(
                            heading: selectedstudent.value, color: blackcolor)),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: blackcolor,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Twoh(),
            GestureDetector(
              onTap: () {
                Get.to(() => const SubjectDataList());
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: grey,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() => Heading17font400(
                            heading: selectedsubject.value, color: blackcolor)),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: blackcolor,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Threeh(),
            GestureDetector(
              onTap: () {
                Get.to(() => const AddRegistration());
              },
              child: Container(
                width: width * .3,
                height: 45,
                decoration: BoxDecoration(
                    color: green, borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Heading17font600(
                    heading: "Register",
                    color: whitecolor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
