import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/screen/registration/registrationdetailview.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusablespacing/reusablespacing.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class RegistrationDetailList extends StatelessWidget {
  const RegistrationDetailList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 13, right: 13, top: 7, bottom: 5),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const RegistrationdetailView());
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: grey,
                  child: const Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 20, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading17font400(
                            heading: 'Student details', color: blackcolor),
                        Halfh(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Heading13font400(
                                heading: "Timothy Flares", color: blackcolor),
                            Heading13font400(
                                heading: "Age : 22", color: blackcolor),
                          ],
                        ),
                        Halfh(),
                        Heading13font400(
                            heading: "timothyflares@example.com",
                            color: blackcolor),
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
