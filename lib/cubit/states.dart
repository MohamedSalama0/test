abstract class CounterStates {}

class CounterInitialState extends CounterStates{}

class CounterIncrementState extends CounterStates
{
  final int counter;

  CounterIncrementState(this.counter);
}
class CounterdecrementState extends CounterStates
{
  final int counter;

  CounterdecrementState(this.counter);
}