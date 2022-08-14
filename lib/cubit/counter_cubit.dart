import 'package:basketball/cubit/counterStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());
  int teamApoints = 0;
  int teamBpoints = 0;

  void TeamIncrement(String team, int buttonNumber) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void CounterReset() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterInitialState());
  }
}
