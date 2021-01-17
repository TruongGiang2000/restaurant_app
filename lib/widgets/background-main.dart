import 'package:flutter/material.dart';
import 'package:restaurant_app/ui/base_widget.dart';

class BackgroundMain extends StatelessWidget {
  final Widget child;
  const BackgroundMain({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
            child: child,
          ),
        );
      },
    );
  }
}
