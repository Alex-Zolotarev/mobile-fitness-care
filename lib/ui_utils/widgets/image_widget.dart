import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {Key? key,
        required this.imageName,
        required this.top,
        required this.width,
        required this.height,
      }) : super(key: key);

  final String imageName;
  final double width;
  final double height;
  final double top;

  @override
  Widget build(BuildContext context) {
    AssetImage imageGet = AssetImage(imageName);

    return Container(
      margin:  EdgeInsets.only(top: top),
      child: Image(
        image: imageGet,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}