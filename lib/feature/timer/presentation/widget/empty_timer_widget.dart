import 'package:apexive_test/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyTimerWidget extends StatelessWidget {
  const EmptyTimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                color: Theme.of(context).colorScheme.primaryContainer,
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
    );
  }
}
