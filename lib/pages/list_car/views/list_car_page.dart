import 'package:carline_flutter/pages/list_car/widgets/car_tile.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ListCarPage extends StatelessWidget {
  const ListCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Available Cars')),
      body: Column(
        children: [
          24.height,
          Container(),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (context, index) => 16.height,
            itemBuilder: (c, i) => const CarTile(),
          ).expand()
        ],
      ).paddingSymmetric(horizontal: 24.0),
    );
  }
}
