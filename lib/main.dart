import 'package:health_financer/packageLib.dart';
import 'package:health_financer/services/userManagement.dart';
import 'package:health_financer/ui/apphomePage.dart';
import 'package:health_financer/ui/newAccountSuccess.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:health_financer/ui/signupPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tahafuz',
        debugShowCheckedModeBanner: false,
        home: UserManagement().handleAuth(),
        routes: <String, WidgetBuilder>{
          // '/login': (BuildContext context) => LoginPage(retryLogin: false),
          // '/retryLogin': (BuildContext context) => LoginPage(
                // retryLogin: true,
              // ),
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
      accentColor: Colors.green.shade400,
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: const ButtonThemeData().copyWith(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        textTheme: ButtonTextTheme.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
        counterStyle: GoogleFonts.roboto(color: Colors.black),
      ),

      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      appBarTheme: AppBarTheme(
        color: baseTheme.scaffoldBackgroundColor,
        iconTheme: baseTheme.iconTheme.copyWith(color: Colors.green[900]),
      ),

      textTheme: baseTheme.textTheme.copyWith(
        title: GoogleFonts.raleway(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        subtitle: GoogleFonts.raleway(
            fontSize: 16.0, color: Colors.black54, fontStyle: FontStyle.italic),
        headline: GoogleFonts.raleway(),
        subhead: GoogleFonts.raleway(),
        body1: GoogleFonts.raleway(),
        body2: baseTheme.textTheme.body2.copyWith(color: Colors.black),
        caption: GoogleFonts.raleway(color: Colors.black),
        button: GoogleFonts.raleway(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 5.5,
            // fontStyle:,
            color: Colors.white),
        display1: baseTheme.textTheme.display1.copyWith(color: Colors.black),
        display2: baseTheme.textTheme.display2.copyWith(color: Colors.black),
        display3: baseTheme.textTheme.display3.copyWith(color: Colors.black),
        display4: baseTheme.textTheme.display4.copyWith(color: Colors.black),
      ),
    );
  }
}
