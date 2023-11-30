import 'package:basketball/widgets/custom_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


part 'counter_state.dart';
class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterIncrement());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterIncrement());
    }
  }

  void teamReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterIncrement());
    emit(CounterIncrement());
  }

  void teamResult(BuildContext context, int teamAPoints, int teamBPoints) {
    if (teamAPoints > teamBPoints) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const CustomAlertDialog(text: 'Team A Wins 🥳');
        },
      );
    } else if (teamAPoints < teamBPoints) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const CustomAlertDialog(text: 'Team B Wins 🥳');
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const CustomAlertDialog(text: "It's a Draw");

        },
      );
    }
    emit(CounterIncrement());
  }
}
