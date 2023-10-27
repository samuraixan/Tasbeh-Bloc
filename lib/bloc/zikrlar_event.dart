part of 'zikrlar_bloc.dart';

@immutable
abstract class ZikrlarEvent {}

class ZikrlarQoshishEvent extends ZikrlarEvent {}

class ZikrlarYangilashEvent extends ZikrlarEvent {}