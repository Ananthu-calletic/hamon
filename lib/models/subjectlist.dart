import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/screen/subjects/subjectdetails.dart';
import 'package:hamon/utils/controller/getxcontroller.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class SubjectList extends StatelessWidget {
  const SubjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: subjectlist.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 13, right: 13, top: 7, bottom: 5),
            child: GestureDetector(
              onTap: () {
                Get.to(() => SubjectDetailView(
                      subjectdata: subjectlist[index],
                    ));
                selectedsubject.value = subjectlist[index]['name'];
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
                                heading: subjectlist[index]['name'],
                                color: blackcolor),
                            Heading13font400(
                                heading: subjectlist[index]['teacher'],
                                color: blackcolor),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Heading17font400(
                                heading:
                                    subjectlist[index]['credits'].toString(),
                                color: blackcolor),
                            const Heading13font400(
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
        }));
  }
}
