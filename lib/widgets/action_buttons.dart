import 'package:capstoneproject/widgets/home_action_button.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: HomeActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/workouts");
                },
                icon: Icons.fitness_center,
                label: "Statistics",
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: HomeActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/workouts");
                },
                icon: Icons.fitness_center,
                label: "Exercises",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: HomeActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/workouts");
                },
                icon: Icons.fitness_center,
                label: "Measures",
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: HomeActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/workouts");
                },
                icon: Icons.calendar_month,
                label: "Calender",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: HomeActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/workouts");
                },
                icon: Icons.history,
                label: "History",
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: HomeActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/workouts");
                },
                icon: Icons.dinner_dining,
                label: "Food",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
