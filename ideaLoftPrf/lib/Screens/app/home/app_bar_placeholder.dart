import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppBarPlaceholder extends PreferredSize {
  final Widget child;
  final double height;

  AppBarPlaceholder({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: color2,
      alignment: Alignment.center,
      child: child,
    );
  }
}
