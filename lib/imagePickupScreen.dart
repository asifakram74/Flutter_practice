import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:practice/main.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickingScreen extends StatefulWidget {
  const ImagePickingScreen({super.key});

  @override
  State<ImagePickingScreen> createState() => _ImagePickingScreenState();
}

class _ImagePickingScreenState extends State<ImagePickingScreen> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Image Picking')),
        body: Column(
          children: [
            image == null ? withoutSelectedImage() : withSelectedImage(),
            galleryButton(),
            cameraButton(),
          ],
        ));
  }
}

//________________________________________WITHOUT SELECTED IMAGE
withoutSelectedImage() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Container(
      height: 250,
      color: Colors.red,
    ),
  );
}

//_________________________________________WITH SELECTED IMAGE
withSelectedImage() {
  return Container(
    height: 250,
    color: Colors.orangeAccent,
    // child: Image.file(
    //   image!,
    //     fit: BoxFit.fill,
    // )
  );
}

galleryButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Container(
      height: 50,
      color: Colors.blue,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          selectImageFromGallery();
        },
        child: const Text(
          'Select Image From Gallery',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

//__________________________________________CAMERA BUTTON
cameraButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 15,
    ),
    child: Container(
      height: 50,
      color: Colors.blue,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          selectImageFromCamera();
        },
        child: const Text(
          'Select Image From Camera',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

//______________________________________________SELECT IMAGE
selectImageFromGallery() async {
  ImagePicker imagePicker = ImagePicker();
  var imageFile = await imagePicker.pickImage(source: ImageSource.gallery);
  // image = File(imageFile!.path);
  // setState(() {});
}

//______________________________________________SELECT IMAGE
selectImageFromCamera() async {
  ImagePicker imagePicker = ImagePicker();
  var imageFile = await imagePicker.pickImage(source: ImageSource.camera);
  // image = File(imageFile!.path);
  // setState(() {});
}
