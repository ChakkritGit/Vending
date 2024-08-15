part of 'serial_data_bloc.dart';

class SerialDataState extends Equatable {
  final int running;
  final List<int> writeData;
  final bool machineStatusDelivery;

  const SerialDataState(
      {required this.running,
      required this.writeData,
      required this.machineStatusDelivery});

  SerialDataState copywith(
      {int? running, List<int>? writeData, bool? machineStatusDelivery}) {
    return SerialDataState(
        running: running ?? this.running,
        writeData: writeData ?? this.writeData,
        machineStatusDelivery:
            machineStatusDelivery ?? this.machineStatusDelivery);
  }

  @override
  List<Object> get props => [running, writeData, machineStatusDelivery];
}
