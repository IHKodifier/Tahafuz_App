import 'package:health_financer/packageLib.dart';
import 'package:health_financer/ui/apphomePage.dart';
import 'package:health_financer/ui/newAccountSuccess.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:health_financer/ui/signupPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Health Financer',
        debugShowCheckedModeBanner: false,
        home: LoginPage(
          retryLogin: false,
        ),
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => LoginPage(retryLogin: false),
          '/retryLogin': (BuildContext context) => LoginPage(
                retryLogin: true,
              ),
          '/appHome': (BuildContext context) => AppHomePage(),
          '/signup': (BuildContext context) => SignUpPage(),
          '/userHome': (BuildContext context) => UserHome(),
          '/newAccountSuccess': (BuildContext context) => NewAccountSuccess(),
        },
        theme: _buildThemeData());
  }

  ThemeData _buildThemeData() {
    final baseTheme = ThemeData().copyWith();

    return baseTheme.copyWith(
// set colors
      primaryColor: Colors.green.shade900,
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: const ButtonThemeData().copyWith(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        textTheme: ButtonTextTheme.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      appBarTheme: AppBarTheme(
        color: baseTheme.scaffoldBackgroundColor,
        iconTheme: baseTheme.iconTheme.copyWith(color: Colors.green[900]),
      ),
      textTheme: baseTheme.textTheme.copyWith(
        title: baseTheme.textTheme.title
            .copyWith(fontSize: 24.0, fontWeight: FontWeight.bold),
        subtitle: baseTheme.textTheme.subtitle.copyWith(
            fontSize: 16.0, color: Colors.black54, fontStyle: FontStyle.italic),
        headline: baseTheme.textTheme.headline.copyWith(),
        subhead: baseTheme.textTheme.subhead.copyWith(),
        body1: baseTheme.textTheme.body1.copyWith(),
        body2: baseTheme.textTheme.body2.copyWith(),
        caption: baseTheme.textTheme.caption.copyWith(),
        button: baseTheme.textTheme.button.copyWith(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 2.0,
            color: Colors.white),
        display1: baseTheme.textTheme.display1.copyWith(),
        display2: baseTheme.textTheme.display2.copyWith(),
        display3: baseTheme.textTheme.display3.copyWith(),
        display4: baseTheme.textTheme.display4.copyWith(),
      ),
    );
  }
}
