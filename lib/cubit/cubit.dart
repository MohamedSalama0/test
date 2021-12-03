import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app1/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(BuildContext context)
  {
    return BlocProvider.of(context);
  }
  int counter = 0;
  void incrementCounter ()
  {
    counter++;
    emit(CounterIncrementState(counter));
  }
  void decrementCounter ()
  {
    counter--;
    emit(CounterdecrementState(counter));
  }


}