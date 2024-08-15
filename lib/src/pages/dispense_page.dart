import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/src/bloc/serial_data_bloc.dart';
import 'package:vending_machine/src/models/model_stock.dart';
import 'package:vending_machine/src/widgetss/dispense/card.dart';
import 'package:vending_machine/src/widgetss/dispense/dialog.dart';

class DispensePage extends StatefulWidget {
  const DispensePage({super.key});

  @override
  State<DispensePage> createState() => _DispensePageState();
}

class _DispensePageState extends State<DispensePage> {
  BuildContext? dialogContext;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        dialogContext = dialogContext;
        return const DialogStatus();
      },
    ).then((_) {
      dialogContext = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> json = {
      "Stock": [
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images":
                  "https://cth.co.th/wp-content/uploads/2021/09/Paracetamol-1.jpg",
              "numberStock": 1
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2020/12/ZJ/AW/OY/73501929/ibuprofen-tablet-1000x1000.jpg",
              "numberStock": 2
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images":
                  "https://m.media-amazon.com/images/I/71DMJlhRvxL.__AC_SX300_SY300_QL70_ML2_.jpg",
              "numberStock": 3
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images":
                  "https://www.nutrifactor.com.pk/cdn/shop/files/NutraC.png?v=1716383636",
              "numberStock": 4
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images":
                  "https://res.cloudinary.com/dk0z4ums3/image/upload/v1637737071/attached_image_th/%E0%B9%84%E0%B8%82%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B9%80%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD-amoxicillin-%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%82%E0%B9%89%E0%B8%AB-pobpad.jpg",
              "numberStock": 5
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2023/4/302099086/RT/BD/KJ/7034457/welldox-100-doxycycline-100mg-capsules-1000x1000.jpg",
              "numberStock": 6
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images":
                  "https://online-pharmacy4u.co.uk/cdn/shop/files/bmv_-_cetirizine_10mg_-_hay_fever_allergy_relief_-_360_tablets_2_1024x1024@2x.webp?v=1699975067",
              "numberStock": 7
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2022/7/CD/MN/UA/147460468/ranitidine-150mg--500x500.jpg",
              "numberStock": 8
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images":
                  "https://www.scharoen.com/wp-content/uploads/2022/07/Metformin-500-mg-100X10.jpg",
              "numberStock": 9
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "images":
                  "https://res.cloudinary.com/zava-www-uk/image/upload/fl_progressive/a_exif,f_auto,e_sharpen:100,c_fit,w_1080,h_810,q_70,fl_lossy/v1708099490/sd/uk/services-setup/high-blood-pressure-unit/lisinopril/ouewpwnfzg3eyrk9fcqq.png",
              "numberStock": 10
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images":
                  "https://cth.co.th/wp-content/uploads/2021/09/Paracetamol-1.jpg",
              "numberStock": 11
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2020/12/ZJ/AW/OY/73501929/ibuprofen-tablet-1000x1000.jpg",
              "numberStock": 12
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images":
                  "https://m.media-amazon.com/images/I/71DMJlhRvxL.__AC_SX300_SY300_QL70_ML2_.jpg",
              "numberStock": 13
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images":
                  "https://www.nutrifactor.com.pk/cdn/shop/files/NutraC.png?v=1716383636",
              "numberStock": 14
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images":
                  "https://res.cloudinary.com/dk0z4ums3/image/upload/v1637737071/attached_image_th/%E0%B9%84%E0%B8%82%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B9%80%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD-amoxicillin-%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%82%E0%B9%89%E0%B8%AB-pobpad.jpg",
              "numberStock": 15
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2023/4/302099086/RT/BD/KJ/7034457/welldox-100-doxycycline-100mg-capsules-1000x1000.jpg",
              "numberStock": 16
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images":
                  "https://online-pharmacy4u.co.uk/cdn/shop/files/bmv_-_cetirizine_10mg_-_hay_fever_allergy_relief_-_360_tablets_2_1024x1024@2x.webp?v=1699975067",
              "numberStock": 17
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2022/7/CD/MN/UA/147460468/ranitidine-150mg--500x500.jpg",
              "numberStock": 18
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images":
                  "https://www.scharoen.com/wp-content/uploads/2022/07/Metformin-500-mg-100X10.jpg",
              "numberStock": 19
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "images":
                  "https://res.cloudinary.com/zava-www-uk/image/upload/fl_progressive/a_exif,f_auto,e_sharpen:100,c_fit,w_1080,h_810,q_70,fl_lossy/v1708099490/sd/uk/services-setup/high-blood-pressure-unit/lisinopril/ouewpwnfzg3eyrk9fcqq.png",
              "numberStock": 20
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images":
                  "https://cth.co.th/wp-content/uploads/2021/09/Paracetamol-1.jpg",
              "numberStock": 21
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2020/12/ZJ/AW/OY/73501929/ibuprofen-tablet-1000x1000.jpg",
              "numberStock": 22
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images":
                  "https://m.media-amazon.com/images/I/71DMJlhRvxL.__AC_SX300_SY300_QL70_ML2_.jpg",
              "numberStock": 23
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images":
                  "https://www.nutrifactor.com.pk/cdn/shop/files/NutraC.png?v=1716383636",
              "numberStock": 24
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images":
                  "https://res.cloudinary.com/dk0z4ums3/image/upload/v1637737071/attached_image_th/%E0%B9%84%E0%B8%82%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B9%80%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD-amoxicillin-%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%82%E0%B9%89%E0%B8%AB-pobpad.jpg",
              "numberStock": 25
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2023/4/302099086/RT/BD/KJ/7034457/welldox-100-doxycycline-100mg-capsules-1000x1000.jpg",
              "numberStock": 26
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images":
                  "https://online-pharmacy4u.co.uk/cdn/shop/files/bmv_-_cetirizine_10mg_-_hay_fever_allergy_relief_-_360_tablets_2_1024x1024@2x.webp?v=1699975067",
              "numberStock": 27
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2022/7/CD/MN/UA/147460468/ranitidine-150mg--500x500.jpg",
              "numberStock": 28
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images":
                  "https://www.scharoen.com/wp-content/uploads/2022/07/Metformin-500-mg-100X10.jpg",
              "numberStock": 29
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "images":
                  "https://res.cloudinary.com/zava-www-uk/image/upload/fl_progressive/a_exif,f_auto,e_sharpen:100,c_fit,w_1080,h_810,q_70,fl_lossy/v1708099490/sd/uk/services-setup/high-blood-pressure-unit/lisinopril/ouewpwnfzg3eyrk9fcqq.png",
              "numberStock": 30
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images":
                  "https://cth.co.th/wp-content/uploads/2021/09/Paracetamol-1.jpg",
              "numberStock": 31
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2020/12/ZJ/AW/OY/73501929/ibuprofen-tablet-1000x1000.jpg",
              "numberStock": 32
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images":
                  "https://m.media-amazon.com/images/I/71DMJlhRvxL.__AC_SX300_SY300_QL70_ML2_.jpg",
              "numberStock": 33
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images":
                  "https://www.nutrifactor.com.pk/cdn/shop/files/NutraC.png?v=1716383636",
              "numberStock": 34
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images":
                  "https://res.cloudinary.com/dk0z4ums3/image/upload/v1637737071/attached_image_th/%E0%B9%84%E0%B8%82%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B9%80%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD-amoxicillin-%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%82%E0%B9%89%E0%B8%AB-pobpad.jpg",
              "numberStock": 35
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2023/4/302099086/RT/BD/KJ/7034457/welldox-100-doxycycline-100mg-capsules-1000x1000.jpg",
              "numberStock": 36
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images":
                  "https://online-pharmacy4u.co.uk/cdn/shop/files/bmv_-_cetirizine_10mg_-_hay_fever_allergy_relief_-_360_tablets_2_1024x1024@2x.webp?v=1699975067",
              "numberStock": 37
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2022/7/CD/MN/UA/147460468/ranitidine-150mg--500x500.jpg",
              "numberStock": 38
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images":
                  "https://www.scharoen.com/wp-content/uploads/2022/07/Metformin-500-mg-100X10.jpg",
              "numberStock": 39
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "images":
                  "https://res.cloudinary.com/zava-www-uk/image/upload/fl_progressive/a_exif,f_auto,e_sharpen:100,c_fit,w_1080,h_810,q_70,fl_lossy/v1708099490/sd/uk/services-setup/high-blood-pressure-unit/lisinopril/ouewpwnfzg3eyrk9fcqq.png",
              "numberStock": 40
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images":
                  "https://cth.co.th/wp-content/uploads/2021/09/Paracetamol-1.jpg",
              "numberStock": 41
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2020/12/ZJ/AW/OY/73501929/ibuprofen-tablet-1000x1000.jpg",
              "numberStock": 42
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images":
                  "https://m.media-amazon.com/images/I/71DMJlhRvxL.__AC_SX300_SY300_QL70_ML2_.jpg",
              "numberStock": 43
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images":
                  "https://www.nutrifactor.com.pk/cdn/shop/files/NutraC.png?v=1716383636",
              "numberStock": 44
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images":
                  "https://res.cloudinary.com/dk0z4ums3/image/upload/v1637737071/attached_image_th/%E0%B9%84%E0%B8%82%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B9%80%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD-amoxicillin-%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%82%E0%B9%89%E0%B8%AB-pobpad.jpg",
              "numberStock": 45
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2023/4/302099086/RT/BD/KJ/7034457/welldox-100-doxycycline-100mg-capsules-1000x1000.jpg",
              "numberStock": 46
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images":
                  "https://online-pharmacy4u.co.uk/cdn/shop/files/bmv_-_cetirizine_10mg_-_hay_fever_allergy_relief_-_360_tablets_2_1024x1024@2x.webp?v=1699975067",
              "numberStock": 47
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2022/7/CD/MN/UA/147460468/ranitidine-150mg--500x500.jpg",
              "numberStock": 48
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images":
                  "https://www.scharoen.com/wp-content/uploads/2022/07/Metformin-500-mg-100X10.jpg",
              "numberStock": 49
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "images":
                  "https://res.cloudinary.com/zava-www-uk/image/upload/fl_progressive/a_exif,f_auto,e_sharpen:100,c_fit,w_1080,h_810,q_70,fl_lossy/v1708099490/sd/uk/services-setup/high-blood-pressure-unit/lisinopril/ouewpwnfzg3eyrk9fcqq.png",
              "numberStock": 50
            }
          ]
        },
        {
          "medicines": [
            {
              "name": "Paracetamol",
              "quantity": 5,
              "images":
                  "https://cth.co.th/wp-content/uploads/2021/09/Paracetamol-1.jpg",
              "numberStock": 51
            },
            {
              "name": "Ibuprofen",
              "quantity": 2,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2020/12/ZJ/AW/OY/73501929/ibuprofen-tablet-1000x1000.jpg",
              "numberStock": 52
            },
            {
              "name": "Aspirin",
              "quantity": 10,
              "images":
                  "https://m.media-amazon.com/images/I/71DMJlhRvxL.__AC_SX300_SY300_QL70_ML2_.jpg",
              "numberStock": 53
            },
            {
              "name": "Vitamin C",
              "quantity": 8,
              "images":
                  "https://www.nutrifactor.com.pk/cdn/shop/files/NutraC.png?v=1716383636",
              "numberStock": 54
            },
            {
              "name": "Amoxicillin",
              "quantity": 6,
              "images":
                  "https://res.cloudinary.com/dk0z4ums3/image/upload/v1637737071/attached_image_th/%E0%B9%84%E0%B8%82%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B9%80%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD-amoxicillin-%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%82%E0%B9%89%E0%B8%AB-pobpad.jpg",
              "numberStock": 55
            },
            {
              "name": "Doxycycline",
              "quantity": 4,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2023/4/302099086/RT/BD/KJ/7034457/welldox-100-doxycycline-100mg-capsules-1000x1000.jpg",
              "numberStock": 56
            },
            {
              "name": "Cetirizine",
              "quantity": 7,
              "images":
                  "https://online-pharmacy4u.co.uk/cdn/shop/files/bmv_-_cetirizine_10mg_-_hay_fever_allergy_relief_-_360_tablets_2_1024x1024@2x.webp?v=1699975067",
              "numberStock": 57
            },
            {
              "name": "Ranitidine",
              "quantity": 3,
              "images":
                  "https://5.imimg.com/data5/SELLER/Default/2022/7/CD/MN/UA/147460468/ranitidine-150mg--500x500.jpg",
              "numberStock": 58
            },
            {
              "name": "Metformin",
              "quantity": 9,
              "images":
                  "https://www.scharoen.com/wp-content/uploads/2022/07/Metformin-500-mg-100X10.jpg",
              "numberStock": 59
            },
            {
              "name": "Lisinopril",
              "quantity": 12,
              "images":
                  "https://res.cloudinary.com/zava-www-uk/image/upload/fl_progressive/a_exif,f_auto,e_sharpen:100,c_fit,w_1080,h_810,q_70,fl_lossy/v1708099490/sd/uk/services-setup/high-blood-pressure-unit/lisinopril/ouewpwnfzg3eyrk9fcqq.png",
              "numberStock": 60
            }
          ]
        }
      ]
    };

    final StockModel stockModel = StockModel.fromJson(json);

    return BlocListener<SerialDataBloc, SerialDataState>(
      listenWhen: (previous, current) =>
          previous.machineStatusDelivery != current.machineStatusDelivery,
      listener: (context, state) {
        debugPrint(state.machineStatusDelivery.toString());
        if (state.machineStatusDelivery) {
          _showDialog(context);
          dialogContext = context;
        } else if (dialogContext != null) {
          Navigator.of(dialogContext!).pop();
          dialogContext = null;
        }
      },
      child: Scaffold(
        body: Container(
          color: Colors.grey.shade200,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: 70.0,
                backgroundColor: Colors.white,
                centerTitle: false,
                floating: true,
                systemOverlayStyle: SystemUiOverlayStyle.light,
                flexibleSpace: FlexibleSpaceBar(
                  background: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                    child: Container(
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ),
                title: const Text('Dispense'),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 10.0),
                sliver: SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                        children: List.generate(
                            stockModel.stock!.length,
                            (index) => CardList(
                                stockModel: stockModel, indexCol: index))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
