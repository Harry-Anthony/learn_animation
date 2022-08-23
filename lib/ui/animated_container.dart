import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _width = 200;
  double _height = 200;

  void setContainerSize() {
    setState(() {
      if(_width == 300) {
        _width = 200;
        _height = 200;
      } else {
        _width = 300;
        _height = 300;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              width: _width,
              height: _height,
              color: Colors.blue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setContainerSize();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}