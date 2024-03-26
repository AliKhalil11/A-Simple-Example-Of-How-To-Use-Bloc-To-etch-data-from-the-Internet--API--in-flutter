import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class showLodingIndicator extends StatelessWidget {
  const showLodingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: 
    CircularProgressIndicator(
      color: MyColors.MyPurple,
    ));
}
}