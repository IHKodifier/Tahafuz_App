import 'package:health_financer/packageLib.dart';

class HorizontalListView extends StatefulWidget {
  final String title;
  final String description;
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();

  HorizontalListView(
      {this.title = 'Horizontal Row',
      this.description = 'use the description property to set text here'});
}

class _HorizontalListViewState extends State<HorizontalListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: null);
    
  }
}
