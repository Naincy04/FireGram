import 'package:flutter/material.dart';
import 'package:instagram/utils/dimensions.dart';

class ResponsiveScreenLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveScreenLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webscreen) {
        //This is Desktop Screen
        return webScreenLayout;
      } else {
        //This is mobile Screen
        return mobileScreenLayout;
      }
    });
  }
}
