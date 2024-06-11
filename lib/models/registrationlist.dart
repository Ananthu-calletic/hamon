import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamon/screen/registration/registrationdetailview.dart';
import 'package:hamon/utils/helper/color.dart';
import 'package:hamon/widget/reusabletext/reusabletext.dart';

class RegistrationList extends StatelessWidget {
  const RegistrationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 1,
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
                        top: 20.0, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Heading17font400(
                            heading: "Registration Id : #660",
                            color: blackcolor),
                        Icon(
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
          );
        });
  }
}
