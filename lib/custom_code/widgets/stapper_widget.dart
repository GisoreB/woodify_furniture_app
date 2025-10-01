// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:easy_stepper/easy_stepper.dart';

class StapperWidget extends StatefulWidget {
  const StapperWidget({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<StapperWidget> createState() => _StapperWidgetState();
}

class _StapperWidgetState extends State<StapperWidget> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      padding: EdgeInsets.only(left: 20, right: 20),
      activeStep: FFAppState().select,
      lineStyle: LineStyle(
        lineLength: 134,
        lineSpace: 0,
        lineType: LineType.normal,
        defaultLineColor: Color(0xffCFCFCF),
      ),
      activeStepTextColor: Color(0xff5B8078),
      finishedStepTextColor: Color(0xff696969),
      internalPadding: 0,
      showLoadingAnimation: false,
      stepRadius: 14,
      showStepBorder: false,
      steps: [
        EasyStep(
          customStep: CircleAvatar(
            radius: FFAppState().select >= 0 ? 24 : 8,
            backgroundColor: Color(0xffCFCFCF),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: FFAppState().select >= 0
                  ? Color(0xff5B8078)
                  : Color(0xffCFCFCF),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: FFAppState().select >= 0
                      ? Colors.white
                      : Color(0xffCFCFCF),
                ),
              ),
            ),
          ),
          title: 'Address',
        ),
        EasyStep(
          customStep: CircleAvatar(
            radius: FFAppState().select >= 1 ? 24 : 8,
            backgroundColor: Color(0xffCFCFCF),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: FFAppState().select >= 1
                  ? Color(0xff5B8078)
                  : Color(0xffCFCFCF),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: FFAppState().select >= 1
                      ? Colors.white
                      : Color(0xffCFCFCF),
                ),
              ),
            ),
          ),
          title: 'Payment',
        ),
        EasyStep(
          customStep: CircleAvatar(
            radius: FFAppState().select >= 2 ? 24 : 8,
            backgroundColor: Color(0xffCFCFCF),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: FFAppState().select >= 2
                  ? Color(0xff5B8078)
                  : Color(0xffCFCFCF),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: FFAppState().select >= 2
                      ? Colors.white
                      : Color(0xffCFCFCF),
                ),
              ),
            ),
          ),
          title: 'Confirm',
        ),
      ],
      onStepReached: (index) => FFAppState().update(() {
        FFAppState().select = index;
      }),
    );
  }
}
