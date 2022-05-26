import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.imageName}) : super(key: key);

  final String imageName;

  @override
  Widget build(BuildContext context) {
    AssetImage imageGet = AssetImage(imageName);

    return Container(
      margin: const EdgeInsets.only(top: 138),
      child: Image(
        image: imageGet,
        fit: BoxFit.cover,
        width: 268,
        height: 268,
      ),
    );
  }
}