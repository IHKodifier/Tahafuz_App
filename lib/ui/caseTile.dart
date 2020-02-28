// import 'dart:js';

import 'package:health_financer/packageLib.dart';

class CaseTile extends StatefulWidget {
  @override
  _CaseTileState createState() => _CaseTileState();
}

class _CaseTileState extends State<CaseTile> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
          child: Container(
        height: 320,
        width :350,
         decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 2.0,
                spreadRadius: 25,
                offset: new Offset(50, 50)),
          ],
        ),
        child: Container(
          height: 300,
          child: Card(
            elevation: 1,
            child: Placeholder(
              color: Colors.green.shade100,
            ),
          ),
        ),
      ),
    );
  }
}
