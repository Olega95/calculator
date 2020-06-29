/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Model Viewer")),
        body: Container(
          child: SizedBox(
            height: 200,
            child: ModelViewer(
              backgroundColor: Colors.grey,
              src: 'https://olega95.github.io/calculator1/m1.glb',
              alt: "A 3D model of an astronaut",
              ar: false,
              autoRotate: true,
              cameraControls: true,
            ),
          ),
        ),
      ),
    );
  }
}
