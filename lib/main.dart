import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pirateshipcamera/gallery.dart';
import 'package:pirateshipcamera/camera.dart';

void main() {
  return runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Body());
  }
}

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: Row(children: [
      TextButton(
          onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Gallery(),
                ),
              ),
          child: Text("Gallery")),
      TextButton(
          onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Camera(),
                ),
              ),
          child: Text("Camera")),
    ]))));
  }
}
