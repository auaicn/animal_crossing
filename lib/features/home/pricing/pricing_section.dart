import 'package:animal_crossing/common/d_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../common/d_icon.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        StaggeredGrid.extent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
          children: [
            ...DIcon$Name.values.map((iconName) {
              return Column(
                children: [
                  DIcon(
                    iconName: iconName,
                    size: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DText(
                    text: iconName.name,
                  ),
                ],
              );
            })
          ],
        ),
      ],
    );
  }
}