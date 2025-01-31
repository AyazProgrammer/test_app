import 'package:flutter/material.dart';
import 'package:interview/presentation/di/get_it.dart';
import 'package:interview/presentation/pages/user_list_page.dart';
import 'package:interview/presentation/viewmodel/user_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => locator<UserViewmodel>(),
        ),
      ],
      child: MaterialApp(
        title: 'Clean Architecture',
        home: UserLlistPage(),
      ),
    );
  }
}
