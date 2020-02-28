import 'package:health_financer/packageLib.dart';

class HorizontalListView extends StatefulWidget {
  final String title;
  final String description;
  // HorizontalListView({this.title, this.description});
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState(
      title: this.title, description: this.description);

  HorizontalListView({this.title, this.description});
}

class _HorizontalListViewState extends State<HorizontalListView> {
  final String title;
  final String description;

  _HorizontalListViewState({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      
      child: Container(
        height: 800,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Text(
                    this.title,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: 18, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 4,bottom: 16),
                  child: Text(
                    this.description,
                    style: Theme.of(context)
                        .textTheme
                        .subhead
                        .copyWith(fontSize: 14, color: Colors.black38,fontStyle: FontStyle.italic),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 220,
                          height: 250,
                          
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 4),
                            child: CaseTile(),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
