import 'package:basketball/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/counter_cubit/counter_cubit.dart';
import 'custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/basketball.PNG',
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 110,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Team A ',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Belanosima',
                          fontWeight: FontWeight.w500,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Agdasima',
                          fontSize: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomButton(team: 'A', buttonNumber: 1),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomButton(team: 'A', buttonNumber: 2),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomButton(team: 'A', buttonNumber: 3),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 410,
                  child: VerticalDivider(
                    indent: 20,
                    endIndent: 0,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 450,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        ' Team B',
                        style: TextStyle(
                          fontFamily: 'Belanosima',
                          fontWeight: FontWeight.w500,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: const TextStyle(
                          fontFamily: 'Agdasima',
                          fontSize: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomButton(team: 'B', buttonNumber: 1),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomButton(team: 'B', buttonNumber: 2),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomButton(team: 'B', buttonNumber: 3),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).teamResult(
                      context,
                      BlocProvider.of<CounterCubit>(context).teamAPoints,
                      BlocProvider.of<CounterCubit>(context).teamBPoints);
                },
                color: kBlueColor,
                height: 50,
                minWidth: 300,
                child: const Text(
                  'View Result',
                  style: TextStyle(
                      fontFamily: 'Belanosima',
                      fontSize: 24,
                      color: Colors.white),
                )),
            TextButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).teamReset();
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                    fontFamily: 'Belanosima',
                    color: Colors.white,
                    fontSize: 24),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
