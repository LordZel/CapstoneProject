import 'package:capstoneproject/widgets/action_buttons.dart';
import 'package:capstoneproject/widgets/home_action_button.dart';
import 'package:capstoneproject/widgets/workout_bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome,\nUser!",
              style: GoogleFonts.afacad(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ActionButtons(),
            SizedBox(height: 20),
            Text(
              "Workout Progress",
              style: GoogleFonts.afacad(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 300, child: WorkoutBarChart()),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceChip(
                    label:
                        Text("Duration", style: TextStyle(color: Colors.white)),
                    selected: true,

                    selectedColor: Colors.blue,
                    showCheckmark: false,
                    onSelected: (selected) {}),
                ChoiceChip(label: Text("Volume"), selected: false),
                ChoiceChip(label: Text("Reps"), selected: false)
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Macros",
              style: GoogleFonts.afacad(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            MacroCard()
          ],
        ),
      ),
    );
  }
}

class MacroCard extends StatelessWidget {
  const MacroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: SizedBox(
          height: 200,
          child: PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                  color: Colors.redAccent,
                  value: 30,
                  showTitle: false,
                  title: "Protein",
                  radius: 50,
                ),
                PieChartSectionData(
                  color: Colors.blueAccent,
                  value: 40,
                  title: "Carbs",
                  showTitle: false,
                  radius: 50,
                ),
                PieChartSectionData(
                  color: Colors.lightBlueAccent,
                  showTitle: false,
                  value: 30,
                  title: "Fat",
                  radius: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
