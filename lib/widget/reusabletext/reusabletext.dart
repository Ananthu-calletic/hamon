import 'package:flutter/widgets.dart';

class Heading28font700 extends StatelessWidget {
  const Heading28font700(
      {super.key, required this.heading, required this.color});
  final String heading;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(heading,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Sf-Pro',
            fontSize: 28,
            color: color));
  }
}

class Heading22font400 extends StatelessWidget {
  const Heading22font400(
      {super.key, required this.heading, required this.color});
  final String heading;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(heading,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Sf-Pro',
            fontSize: 22,
            color: color));
  }
}

class Heading22font700 extends StatelessWidget {
  const Heading22font700(
      {super.key, required this.heading, required this.color});
  final String heading;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(heading,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Sf-Pro',
            fontSize: 22,
            color: color));
  }
}

class Heading17font600 extends StatelessWidget {
  const Heading17font600(
      {super.key, required this.heading, required this.color});
  final String heading;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(heading,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Sf-Pro',
            fontSize: 17,
            color: color));
  }
}

class Heading17font400 extends StatelessWidget {
  const Heading17font400(
      {super.key, required this.heading, required this.color});
  final String heading;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(heading,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Sf-Pro',
            fontSize: 17,
            color: color));
  }
}

class Heading13font400 extends StatelessWidget {
  const Heading13font400(
      {super.key, required this.heading, required this.color});
  final String heading;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(heading,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'Sf-Pro',
            fontSize: 13,
            color: color));
  }
}
