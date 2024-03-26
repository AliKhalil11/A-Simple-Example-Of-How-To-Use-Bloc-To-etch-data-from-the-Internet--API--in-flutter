import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class buildAppBarTitle extends StatelessWidget {
  const buildAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Text(
      'Characters',
      style: TextStyle(color: MyColors.Mygrey),
    );
}
}