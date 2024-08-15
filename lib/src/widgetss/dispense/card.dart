import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/src/bloc/serial_data_bloc.dart';
import 'package:vending_machine/src/models/model_stock.dart';

class CardList extends StatefulWidget {
  const CardList({super.key, required this.stockModel, required this.indexCol});
  final StockModel stockModel;
  final int indexCol;

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  int _quantity = 1;
  final int maxCounter = 10;

  void writeSerialData(List<int> commands) {
    int checksum = 0;
    for (var element in commands) {
      if (element == 0xfa) {
        checksum = 0xfa;
      } else {
        checksum = checksum ^ element;
      }
    }
    commands.add(checksum);
    context.read<SerialDataBloc>().add(SerialDataWrite(commands));
    context.read<SerialDataBloc>().stream.firstWhere((newState) {
      return newState.writeData.isNotEmpty;
    }).then((newState) {
      var response =
          newState.writeData.map((e) => e.toRadixString(16)).toList();
      debugPrint("Sent: ${response.join(',')}");
    });
  }

  void _showCardDetails(
      String cardText, int colNum, int rowNum, int stockNum, int box) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      sheetAnimationStyle: AnimationStyle(
          curve: const ElasticInOutCurve(5.0),
          duration: const Duration(milliseconds: 300)),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return BlocBuilder<SerialDataBloc, SerialDataState>(
          builder: (context, state) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                void add() {
                  if (_quantity < maxCounter) {
                    setState(() {
                      _quantity++;
                    });
                  }
                }

                void remove() {
                  if (_quantity > 1) {
                    setState(() {
                      _quantity--;
                    });
                  }
                }

                void delivery(int stockNumsend) {
                  List<int> data = [
                    0xfa,
                    0xfb,
                    0x06,
                    0x05,
                    state.running,
                    0x01,
                    0x01,
                    0x00,
                    stockNumsend
                  ];
                  writeSerialData(data);
                  Navigator.pop(context);
                }

                return Container(
                  padding: const EdgeInsets.all(16.0),
                  // width: 700.0,
                  height: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        cardText,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'No: ${box.toString()}',
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: remove,
                            onLongPress: remove,
                            child: const Icon(Icons.remove),
                          ),
                          Container(
                            width: 50.0,
                            alignment: Alignment.center,
                            child: Text(
                              '$_quantity',
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: add,
                            onLongPress: add,
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15.0),
                        width: 500.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 90, 56, 253),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          onPressed: () => delivery(stockNum),
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    ).then((_) {
      setState(() {
        _quantity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          widget.stockModel.stock![widget.indexCol].medicines!.length, (index) {
        final medicine =
            widget.stockModel.stock![widget.indexCol].medicines![index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
          child: GestureDetector(
            onTap: () => _showCardDetails(medicine.name!, widget.indexCol,
                index, medicine.numberStock!, medicine.numberStock!),
            child: SizedBox(
              width: 240,
              height: 285,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      medicine.images!,
                      width: 120.0,
                      height: 150.0,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.info_outline,
                            size: 40.0,
                            color: Color.fromARGB(180, 90, 56, 253));
                      },
                    ),
                    const SizedBox(height: 10),
                    Text(
                      medicine.name!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 10, 10),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text(
                        'No: ${medicine.numberStock!}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
