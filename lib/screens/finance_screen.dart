import 'package:elimu_universite_mobile/config/themes.dart';
import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColorFromHex("#E2E2E2"),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Hello"),
      ),
      body: DefaultTabController(length: 3,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              height: 40,
              child: TabBar(
                indicatorColor: getColorFromHex("#04294B"),
                tabs: [
                  Tab(
                    child: customeTextStyle("Réglé", size: 16, fontWeight: FontWeight.w600),
                  ),
                  Tab(
                    child: customeTextStyle("Non-Réglé", size: 16, fontWeight: FontWeight.w600),
                  ),
                  Tab(
                    child: customeTextStyle("Total annuel", size: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      children: List.generate(3, (index) {
                        return cardFinance(context);
                      }),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(1, (index) {
                        return customeTextStyle("text1");
                      }),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(1, (index) {
                        return customeTextStyle("text");
                      }),
                    ),
                  ),
                ],
              )
            )

          ],
        ),
      )
    );
  }
}