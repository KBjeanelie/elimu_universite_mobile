import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CarreerScreen extends StatelessWidget {
  const CarreerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Texte"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(3, (index) {
            return Center(child: cardCareer(context));
          }),
        ),
      ),
    );
  }
}