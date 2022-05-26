import 'package:flutter/material.dart';

void main() {
  runApp(ScreenWidget());
}

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(),
        body: SimpleWidget(),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.imageName}) : super(key: key);

  final String imageName;

  @override
  Widget build(BuildContext context) {
    AssetImage ImageGet = AssetImage(imageName);

    return Container(
      margin: EdgeInsets.only(top: 138),
      child: Image(
        image: ImageGet,
        fit: BoxFit.cover,
        width: 268,
        height: 268,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.width,
      required this.fontSize,
      required this.top})
      : super(key: key);

  final String text;
  final Color color;
  final double width;
  final double fontSize;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top),
      alignment: Alignment.center,
      width: width,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 60,
      child: RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(99.0)),
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(99.0)),
          ),
          child: Container(
            alignment: Alignment.center,
            child: const Text('Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                )),
          ),
        ),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  //const SimpleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      // mainAxisAlignment: MainAxisAlignment.start,
      //mainAxisSize: MainAxisSize.max,
      children: [
        Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              ImageWidget(imageName: "assets/images/photo1.png"),
              TextWidget(
                color: Color(0xFF7C6DDB),
                width: 124,
                text: 'Welcome To',
                fontSize: 20,
                top: 30,
              ),
              TextWidget(
                color: Color(0xFF7C6DDB),
                width: 284,
                text: 'OUR FITNESS CARE',
                fontSize: 32,
                top: 10,
              ),
              //App(),
            ],
          ),
        ),
        Positioned(
          bottom: 52,
          width: MediaQuery.of(context).size.width,
          child: Center(child: App()),
        ),
      ],
    );
  }
}
