import 'package:finalprojectmovies/src/containers/user_container.dart';
import 'package:finalprojectmovies/src/models/index.dart';
import 'package:finalprojectmovies/src/presentation/home_page.dart';
import 'package:finalprojectmovies/src/presentation/login_page.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user != null) {
          return const HomePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
