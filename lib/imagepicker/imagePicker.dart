import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:v_cart/imagepicker/app_image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? image;

  Future<void> pickImage(ImageSource source) async {
    AppImagePicker(source: source).pick(onPick: (File? pickedImage) {
      setState(() {
        image = pickedImage;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFFFE680),
        title: Text(
          'Pick Image',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFF343434), // text color
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14), // button's shape
                      ),
                    ),
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    child: Text('Camera',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14
                      ),),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFF343434), // text color
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14), // button's shape
                      ),
                    ),
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    child: Text('Gallery',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14
                    ),),
                  ),
                ],
              ),
            ),
            if (image != null) ...[
              SizedBox(height: 20),
              Image.file(image!),
            ],
            SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
               //  Navigator.push(context,
               //      MaterialPageRoute(builder: (context) => Feed()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFF343434), // text color
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14), // button's shape
                  ),
                ),
                child:  Text(
                  'Upload Image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
