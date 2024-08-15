part of 'serial_data_bloc.dart';

sealed class SerialDataEvent extends Equatable {
  const SerialDataEvent();

  @override
  List<Object> get props => [];
}

class SerialDataRunning extends SerialDataEvent {}

class SerialDataRunningReset extends SerialDataEvent {}

class SerialDataMachineStatusDelivery extends SerialDataEvent {
  final bool machineStatusDelivery;

  const SerialDataMachineStatusDelivery(this.machineStatusDelivery);

  @override
  List<bool> get props => [machineStatusDelivery];
}

class SerialDataWrite extends SerialDataEvent {
  final List<int> commands;

  const SerialDataWrite(this.commands);

  @override
  List<Object> get props => [commands];
}

// class SerialDataSetInitialRunning extends SerialDataEvent {
//   final int initialRunning;

//   const SerialDataSetInitialRunning(this.initialRunning);
// }
