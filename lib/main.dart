import 'package:basketball/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/counter_cubit/counter_cubit.dart';


void main() {
  runApp(const Basketball());
}

class Basketball extends StatelessWidget {
  const Basketball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(CounterIncrement()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
