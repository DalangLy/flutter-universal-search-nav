import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  final Widget body;
  final Widget nav;
  final Widget appBar;
  const DesktopLayout({Key? key, required this.body, required this.appBar, required this.nav,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Row(
          children: [
            Container(
              width: 200,
              color: Colors.black54,
              child: nav,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.black12,
                    child: appBar,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      child: body,
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
