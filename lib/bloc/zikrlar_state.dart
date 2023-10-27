part of 'zikrlar_bloc.dart';

@immutable
abstract class ZikrlarState {}

class ZikrlarInitial extends ZikrlarState {
  final int count;
  ZikrlarInitial(this.count);
}

class ZikrlarQoshishState extends ZikrlarState {
  final int count;
  ZikrlarQoshishState(this.count);
}

class ZikrlarYangilashState extends ZikrlarState {
  final int count;
  ZikrlarYangilashState(this.count);
}