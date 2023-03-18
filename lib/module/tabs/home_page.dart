import 'package:flutter/material.dart';

import '../../utils/custom_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Container(
      color: tab1BgColor,
        height: size.height,
        width: size.width,
        child: const Center(child: Text("Home Page",style: TextStyle(color: Colors.white),)));
  }
}
