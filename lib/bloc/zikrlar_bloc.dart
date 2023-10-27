import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'zikrlar_event.dart';
part 'zikrlar_state.dart';

class ZikrlarBloc extends Bloc<ZikrlarEvent, ZikrlarState> {
  int count = 0;

  ZikrlarBloc() : super(ZikrlarInitial(0)) {
    on<ZikrlarQoshishEvent>(_onIncrement);
    on<ZikrlarYangilashEvent>(_onNewIncrement);
  }

  _onIncrement(ZikrlarQoshishEvent event, Emitter<ZikrlarState> emit) {
    count++;
    emit(ZikrlarQoshishState(count));
  }

  _onNewIncrement(ZikrlarYangilashEvent event, Emitter<ZikrlarState> emit) {
    count = 0;
    emit(ZikrlarYangilashState(count));
  }
}
