// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:readmore/readmore.dart';

class Readmoretext extends StatefulWidget {
  const Readmoretext({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Readmoretext> createState() => _ReadmoretextState();
}

class _ReadmoretextState extends State<Readmoretext> {
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      'The biggest persuader for buying an Adirondack chairs is their ability to deliver a heavy dose of comfort and support. The Adirondack chair was designed for comfort,',
      style: TextStyle(
          color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
      trimMode: TrimMode.Line,
      trimLines: 3,
      colorClickableText: Color(0xff5B8078),
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      lessStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff5B8078)),
      moreStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff5B8078)),
    );
  }
}
