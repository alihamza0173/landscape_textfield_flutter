import 'package:flutter/material.dart';
import 'package:landscape_textfield_flutter/config/components/landscape_textfield.dart';
import 'package:landscape_textfield_flutter/config/extentions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(context.locale.appTitle),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Test'),
          LandScapeTextField(),
        ],
      ),
    );
  }
}
