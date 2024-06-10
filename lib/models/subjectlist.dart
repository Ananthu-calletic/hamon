import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hamon/screen/student/studentdetailpage.dart';
import 'package:hamon/screen/subjects/subjectdetails.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class SubjectList extends StatelessWidget {
  const SubjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 14,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 13, right: 13, top: 7, bottom: 5),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const SubjectDetailView());
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: grey,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading17font400(
                                heading: "History", color: blackcolor),
                            Heading13font400(
                                heading: "Branda Miller", color: blackcolor),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading17font400(heading: "10", color: blackcolor),
                            Heading13font400(
                                heading: "Credit", color: blackcolor),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}