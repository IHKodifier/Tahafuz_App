import 'package:health_financer/packageLib.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      elevation: 0.0,
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            margin: EdgeInsets.all(8.0),
            accountName: new Text('Dr. Otaba Mukarram'),
            accountEmail: new Text('testemail@test.com'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
            ),
          ),
          new ListTile(
            title: new Text('About Page'),
            onTap: () {
              // Navigator.of(context).pop();
              // Navigator.push(
              //     context,
              //     new MaterialPageRoute(
              //         builder: (BuildContext context) => new AboutPage()));
            },
          ),
        ],
      ),
    );
  }
}
