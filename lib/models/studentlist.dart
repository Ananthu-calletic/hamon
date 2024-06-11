import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/screen/student/studentdetailpage.dart';
import 'package:hamon/utils/controller/getxcontroller.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: studentdatalist.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 13, right: 13, top: 7, bottom: 5),
            child: GestureDetector(
              onTap: () {
                Get.to(() => StudentDetailView(
                      studentdata: studentdatalist[index],
                    ));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: grey,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading17font400(
                                heading: studentdatalist[index]['name'],
                                color: blackcolor),
                            Heading13font400(
                                heading: studentdatalist[index]['email'],
                                color: blackcolor),
                          ],
                        ),
                        Heading17font400(
                            heading: "Age : ${studentdatalist[index]['age']}",
                            color: blackcolor),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
