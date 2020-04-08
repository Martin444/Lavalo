import 'package:flutter/material.dart';
import 'package:lavalo/User/Bloc/user_bloc.dart';
import 'package:lavalo/User/Screens/sign_in_screen.dart';

import 'package:generic_bloc_provider/generic_bloc_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lavalo',
          home: SignIn(),
          //PlatziTrips(),
        ),
        bloc: UserBloc()
    );
  }
}
