import 'package:apexive_test/core/theme/app_colors.dart';
import 'package:apexive_test/core/widgets/custom_button.dart';
import 'package:apexive_test/core/widgets/gradient_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBody(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const _Header(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(),
                      Column(
                        children: [
                          Container(
                            height: 192,
                            width: 192,
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                            ),
                            child: const Icon(
                              Icons.schedule,
                              color: Colors.white,
                              size: 100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "You don't have any local time sheets",
                              style: Theme.of(context).textTheme.headlineMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            'Create a timer to be begin tracking time',
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      CustomButton(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        onPressed: () {
                          context.push('/create-timesheet');
                        },
                        label: 'Get Started',
                      ),
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
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Timesheets',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            size: 30,
          ),
        )
      ],
    );
  }
}
