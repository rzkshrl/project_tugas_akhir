import 'package:flutter/material.dart';
import 'package:project_tugas_akhir/app/theme/theme.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: CircularProgressIndicator(
          color: Blue1,
        ),
      )),
    );
  }
}
