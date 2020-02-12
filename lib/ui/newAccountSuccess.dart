import 'package:flutter/material.dart';
import 'package:health_financer/packageLib.dart';

class NewAccountSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Container(
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('You have succesfully created an account for yourself',style: Theme.of(context).textTheme.display1.copyWith(fontSize:22.0 ),),
              SizedBox(height: 8.0,),
              RaisedButton(
                  child: Text('Login & Continue '),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/login');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
