import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:health_financer/packageLib.dart';

class CaseTile extends StatefulWidget {
  final DocumentSnapshot docsnap;
  CaseTile({this.docsnap});
  @override
  _CaseTileState createState() => _CaseTileState();
}

class _CaseTileState extends State<CaseTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () {},
      child: Container(
        // color: Colors.pink.shade300,
        height: 200,
        width: 220,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffeeeeee),
              blurRadius: 15.0,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Card(
          elevation: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 100,
                  width: 200,
                  child: Image.network('http://i.pravatar.cc/310',fit: BoxFit.contain,),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.docsnap.data['caseTitle'],
                      style: Theme.of(context).textTheme.title.copyWith(fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:4.0),
                      child: Text(
                        widget.docsnap.data['nokType'],
                        style: Theme.of(context)
                            .textTheme
                            .subtitle
                            .copyWith(fontSize: 12,fontStyle: FontStyle.italic),
                      ),
                    ),
                    Text(widget.docsnap.data['nokTitle'],
                        style: Theme.of(context).textTheme.title.copyWith(fontSize: 16),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
