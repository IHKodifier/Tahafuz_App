// import 'package:health_financer/main.dart';
import 'package:health_financer/packageLib.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:health_financer/ui/horizontal_list_View.dart';

class UserHome extends StatefulWidget {
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
//   List<HfCase> _cases;

//   StreamSubscription<QuerySnapshot> _caseStream;

  @override
  void initState() {
    super.initState();
    // _caseStream.onData(build(context));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection('Cases').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return buildProgressIndicator(context);
          } else {
            return ListView(
              children: <Widget>[
                SizedBox(height: 5),
                buildHorizontalListView('New and Un -Acknowleged',
                    'Cases that await Doctor\'s Acknowledgment'),
                buildHorizontalListView('Recently Acknowleged',
                    'Cases thar are recently acknowledged by the Doctor'),
                buildHorizontalListView('Awaiting assessment',
                    'Cases that await \"inclusion/exclusion evaluations\"'),
                buildHorizontalListView('Recently assessed',
                    'Caes that have recently been evaluated for \"inclusion/exclusion\"'),
                buildHorizontalListView('Recently Approved',
                    'eligible for inclusion in Tahafuz Program'),
                buildHorizontalListView('Awaiting procedure', ''),
                buildHorizontalListView(
                    'Awaiting follow up & documentation', ''),
                buildHorizontalListView('Recently Approved', ''),
              ],
            );
          }
        });
  }

  Container buildHorizontalListView(String title, String description) {
    return Container(
      height: 300,
      width: 220,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8),
        child: HorizontalListView(
          title: title,
          description: description,
        ),
      ),
      // color: Colors.yellow,
    );
  }

  Center buildProgressIndicator(BuildContext context) {
    return Center(
      child: Container(
        height: 350,
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text(
              '...Loading Data...',
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .copyWith(fontSize: 22, fontStyle: FontStyle.italic),
            ),
            Text('Please wait...'),
          ],
        ),
      ),
    );
  }
}
