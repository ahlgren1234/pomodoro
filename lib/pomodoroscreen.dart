import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/progresswidget.dart';
import 'package:pomodoro/widgets/timecontroller.dart';
import 'package:pomodoro/widgets/timeoptions.dart';
import 'package:pomodoro/widgets/timercard.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Text(
          "POMODORO",
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const TimerCard(),
              const SizedBox(
                height: 40,
              ),
              TimeOptions(),
              const SizedBox(
                height: 30,
              ),
              const TimeController(),
              const SizedBox(
                height: 30,
              ),
              const ProgressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
