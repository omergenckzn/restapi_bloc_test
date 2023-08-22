import 'package:flutter/material.dart';


class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {

  String text = "Testing";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          children: [
            Text(text),
          ],
        ),
      ),
    );
  }
}
