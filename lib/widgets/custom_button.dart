import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../cubits/counter_cubit/counter_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.team, required this.buttonNumber})
      : super(key: key);
  final String team;

  final int buttonNumber;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: const OutlineInputBorder(),
        onPressed: () {
          BlocProvider.of<CounterCubit>(context)
              .teamIncrement(team: team, buttonNumber: buttonNumber);
        },
        color: kRedColor,
        height: 50,
        child: Text(
          'Add $buttonNumber point',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ));
  }
}
