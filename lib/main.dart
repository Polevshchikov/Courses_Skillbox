import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Demo Home Page'),
          ),
          body: ImageWidget()),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetNameSvg = 'assets/icons/secret.svg';

    SvgPicture imageFromAssetSvg = SvgPicture.asset(
      assetNameSvg,
    );

    return Container(
      alignment: Alignment.center,
      child: imageFromAssetSvg,
    );
  }
}
