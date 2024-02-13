import 'package:apexive_test/core/widgets/gradient_body.dart';
import 'package:apexive_test/core/widgets/herader.dart';
import 'package:apexive_test/feature/timer/presentation/page/tab/details_tab.dart';
import 'package:apexive_test/feature/timer/presentation/page/tab/timesheet_tab.dart';
import 'package:flutter/material.dart';

class TimeSheetDetailScreen extends StatelessWidget {
  const TimeSheetDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 2,
        child: GradientBody(
          child: Column(
            children: [
              Header(
                text: '',
              ),
              TabBar(
                tabs: [
                  Tab(text: 'TimeSheets'),
                  Tab(text: 'Details'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    TimeSheetTabView(),
                    DetailsTabView(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
