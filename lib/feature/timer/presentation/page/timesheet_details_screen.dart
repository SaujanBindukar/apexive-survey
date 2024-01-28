import 'package:apexive_test/core/widgets/gradient_body.dart';
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
          child: Expanded(
            child: Column(
              children: [
                _Header(),
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
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        Text(
          'Create Timer',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Icon(Icons.edit),
      ],
    );
  }
}
