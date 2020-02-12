import 'package:health_financer/packageLib.dart';
class CaseTile extends StatefulWidget {
  @override
  _CaseTileState createState() => _CaseTileState();


}

class _CaseTileState extends State<CaseTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffeeeeee),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Card(
        child: Text('hello'),
      ),
    );
  }
}
