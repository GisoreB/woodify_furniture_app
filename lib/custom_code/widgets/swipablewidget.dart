// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_slidable/flutter_slidable.dart';

class Swipablewidget extends StatefulWidget {
  const Swipablewidget({
    super.key,
    this.width,
    this.height,
    this.action,
  });

  final double? width;
  final double? height;
  final Future Function()? action;

  @override
  State<Swipablewidget> createState() => _SwipablewidgetState();
}

class _SwipablewidgetState extends State<Swipablewidget> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: FFAppState().itemList.length,
      itemBuilder: (context, index) {
        final item = FFAppState().itemList[index];
        return Padding(
          padding: const EdgeInsets.only(top: 16.0, right: 16.0),
          child: Slidable(
            key: Key('$item'),
            startActionPane: ActionPane(
              extentRatio: 0.15,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  borderRadius: BorderRadius.circular(16.0),
                  onPressed: (context) async {
                    setState(() async {
                      await widget.action?.call();
                    });
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                ),
              ],
            ),
            endActionPane: ActionPane(
              extentRatio: 0.15,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  borderRadius: BorderRadius.circular(16),
                  onPressed: (context) async {
                    setState(() async {
                      await widget.action?.call();
                    });
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(right: 20),
              height: 89,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Color(0xffF5F5F5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      item.image,
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          item.price,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            if (count > 0) count--;
                          },
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xff5B8078),
                              child: Icon(
                                color: Colors.white,
                                Icons.remove,
                                size: 15,
                              ))),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          '$count',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            count++;
                          },
                          child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xff5B8078),
                              child: Icon(
                                color: Colors.white,
                                Icons.add,
                                size: 15,
                              ))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
