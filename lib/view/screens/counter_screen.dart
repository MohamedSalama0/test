import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app1/cubit/cubit.dart';
import 'package:todo_app1/cubit/states.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build===>Build');
    return BlocProvider(
        create: (BuildContext context) => CounterCubit(),
      child:  BlocConsumer<CounterCubit,CounterStates>(
        listener: (_ , state)
        {
          if(state is CounterIncrementState) print('plus ${state.counter}');
          if(state is CounterdecrementState) print('MINUS ${state.counter}');
        },
        builder: (context , state)
        {
          var cubit = CounterCubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  IconButton(
                      onPressed: ()
                      {
                        cubit.incrementCounter();
                      },
                      iconSize: 30.0,
                      icon: const Icon(Icons.add)
                  ),
                  const Spacer(),
                  Text(
                    '${cubit.counter}',
                  style: const TextStyle(
                    fontSize: 35.0,
                  ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: ()
                    {
                      cubit.decrementCounter();
                    },
                    iconSize: 30.0,
                    icon: const Icon(Icons.remove),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
