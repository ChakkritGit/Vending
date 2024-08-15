// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// import 'package:shared_preferences/shared_preferences.dart';
part 'serial_data_event.dart';
part 'serial_data_state.dart';

class SerialDataBloc extends Bloc<SerialDataEvent, SerialDataState> {
  SerialDataBloc()
      : super(const SerialDataState(
            running: 1, writeData: [], machineStatusDelivery: false)) {
    // _loadInitialRunningValue();
    // running = 1;
    on<SerialDataRunning>((event, emit) async {
      final newRunningValue = state.running + 1;
      emit(state.copywith(running: newRunningValue));
      // await _saveRunningValue(newRunningValue);
    });
    // reset running to 1
    on<SerialDataRunningReset>((event, emit) {
      emit(state.copywith(running: 1));
    });
    // writeData = [];
    on<SerialDataWrite>((event, emit) {
      // Update state.writeData with the commands passed from the event
      emit(state.copywith(writeData: event.commands));
    });
    // machine status
    on<SerialDataMachineStatusDelivery>((event, emit) {
      emit(state.copywith(machineStatusDelivery: event.machineStatusDelivery));
    });
    // on<SerialDataSetInitialRunning>((event, emit) {
    //   emit(state.copywith(running: event.initialRunning));
    // });
  }

  // void _loadInitialRunningValue() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final initialRunning = prefs.getInt('running') ?? 1;
  //   add(SerialDataSetInitialRunning(initialRunning));
  // }

  // Future<void> _saveRunningValue(int running) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('running', running);
  // }
}
