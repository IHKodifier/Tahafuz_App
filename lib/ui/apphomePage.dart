import 'package:health_financer/packageLib.dart';
import 'package:health_financer/ui/appDrawer.dart';
// import 'package:health_financer/ui/bottomNavBar.dart';
// import 'package:health_financer/ui/caseTile.dart';
// import 'package:health_financer/ui/myFelexibleAppBar.dart';
// import 'package:health_financer/ui/newcase.dart'

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabcontroller;
  List<Tab> _tabs = <Tab>[];
  List<Widget> _tabViews = [];

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
    _tabs = [
      Tab(
        icon: Icon(
          Icons.home,
          // color: Colors.black,
        ),
        // text: 'Home',
        child: Text(
          'Home',
          // style: Theme.of(context)
          // .textTheme
          // .subhead
          // .copyWith(color: Colors.black),
        ),
      ),
      Tab(
        icon: Icon(Icons.pie_chart),
        text: 'Dashboard',
      ),
      Tab(
        icon: Icon(Icons.chat),
        text: 'Chat',
      )
    ];
    _tabViews = [
      UserHome(),
      DashBoard(),
      AppMessage(),
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actionsIconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
        // backgroundColor: hhfScaffoldBackgroundLight,
        title: Text(
          'Health Financer',
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
      ),
      body: TabBarView(
        children: _tabViews,
        controller: _tabcontroller,
      ),
      bottomNavigationBar: Material(
          color: Theme.of(context).primaryColor,
          // color: Colors.blueGrey.shade200,
          // color: Colors.blueGrey.shade50,
          elevation: 10.0,
          child: Container(
            height: 70.0,
            child: TabBar(
              tabs: _tabs,
              controller: _tabcontroller,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              indicatorColor: Colors.white,
              // isScrollable: true,
            ),
          )),
      drawer: AppDrawer(),
    );
  }
}
