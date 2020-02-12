import 'package:health_financer/packageLib.dart';
import 'package:health_financer/services/userManagement.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_financer/widgets/TahafuzLogo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _email;
  String _password;
  String _confirmPassword;
  bool _passwordMatchError = false;

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up ',
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TahafuzLogo(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter a valid email to set as username',
                      labelText: 'Email',
                      labelStyle: localTheme.textTheme.title.copyWith(
                        color: localTheme.primaryColor,
                        fontSize: 16.0,
                      ),
                      hintStyle: localTheme.textTheme.subhead.copyWith(
                        fontSize: 16.0,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    onChanged: (value) {
                      _email = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: localTheme.inputDecorationTheme.border,
                      hintText: 'Choose a password',
                      hintStyle: localTheme.textTheme.subhead.copyWith(
                        fontSize: 16.0,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                      ),
                      labelText: 'Password',
                      labelStyle: localTheme.textTheme.title.copyWith(
                        color: localTheme.primaryColor,
                        fontSize: 16.0,
                      ),
                    ),
                    obscureText: true,
                    onChanged: (value) {
                      _password = value;
                    },
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: localTheme.inputDecorationTheme.border,
                    hintText: 'enter Password once again...',
                    hintStyle: localTheme.textTheme.subhead.copyWith(
                      fontSize: 16.0,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                    labelText: 'Confirm password',
                    labelStyle: localTheme.textTheme.title.copyWith(
                      color: localTheme.primaryColor,
                      fontSize: 16.0,
                    ),
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    _confirmPassword = value;
                  },
                ),
                (_passwordMatchError)
                    ? _buildPasswordMatchError(context)
                    : Text(''),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28.0,
                    top: 16.0,
                    right: 16.0,
                    bottom: 8
                  ),
                  child: Text(
                    'By clicking the \"Sign Up\" button, you agree to the terms and Conditions set by the TAHAFUZ program.',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 45.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Sign up ',
                        style: localTheme.textTheme.button
                            .copyWith(color: Colors.white, fontSize: 20.0),
                      ),
                      onPressed: () {
                        if (_password == _confirmPassword) {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: _email, password: _password)
                              .then((signedInUser) {
                            UserManagement()
                                .createNewUser(signedInUser, context);
                            Navigator.popAndPushNamed(
                                context, '/newAccountSuccess');
                          }).catchError((e) {});

                          Navigator.of(context).pushNamed('/newAccountSuccess');
                        } else {
                          setState(() {
                            _passwordMatchError = true;
                          });
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildPasswordMatchError(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28.0,
        top: 16.0,
        right: 16.0,
      ),
      child: Text(
        'The psswords entered do not match. \n Please try again',
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(color: Colors.red.shade800, fontSize: 14.0),
      ),
    );
  }
}
