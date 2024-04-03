import 'dart:io';

import 'package:demo_app/conf/const.dart';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEdited = false;
  File? _selectedImage;

  setEdit() {
    setState(() {
      isEdited = !isEdited;
    });
  }

  Future<void> _openFilePicker() async {
    final result = await ImagePicker.platform
        .getImageFromSource(source: ImageSource.gallery);
    if (result == null) {
      return;
    }

    setState(() {
      _selectedImage = File(result.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: customOrange,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Column(
            children: [
              // profile avatar
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: InkWell(
                      onTap: () {
                        if (isEdited == true) {
                          _openFilePicker();
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          image: _selectedImage != null
                              ? DecorationImage(
                                  image: FileImage(_selectedImage!),
                                  fit: BoxFit.cover,
                                )
                              : const DecorationImage(
                                  image: AssetImage(defaultUserImage),
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  color: Colors.black.withOpacity(.5))
                            ],
                            borderRadius: BorderRadius.circular(100),
                            color: customWhite),
                        child: InkWell(
                          onTap: () {
                            if (isEdited == true) {
                              _openFilePicker();
                            }
                          },
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 24,
                          ),
                        ),
                      ))
                ],
              ),

              const SizedBox(
                height: 50,
              ),

              // profile form
              Form(
                  child: Column(
                children: [
                  // fullname field
                  TextFormField(
                    enabled: isEdited,
                    decoration: InputDecoration(
                        label: const Text('Full Name'),
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.black)),
                        labelStyle: const TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // email field
                  TextFormField(
                    enabled: isEdited,
                    decoration: InputDecoration(
                        label: const Text('Email'),
                        prefixIcon: const Icon(Icons.mail_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.black)),
                        labelStyle: const TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // phone number field
                  TextFormField(
                    enabled: isEdited,
                    decoration: InputDecoration(
                        label: const Text('Phone Number'),
                        prefixIcon: const Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.black)),
                        labelStyle: const TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // date of birth field
                  TextFormField(
                      enabled: isEdited,
                      readOnly: true,
                      onTap: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(1900),
                            maxTime: DateTime.now(),
                            onChanged: (date) {},
                            onConfirm: (date) {},
                            currentTime: DateTime.now(),
                            locale: LocaleType.en);
                      },
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
                        prefixIcon: const Icon(Icons.calendar_month),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.black)),
                        labelStyle: const TextStyle(color: Colors.black),
                      )),
                  const SizedBox(
                    height: 20,
                  ),

                  // edit profile button
                  ElevatedButton(
                    onPressed: () {
                      if (isEdited == false) {
                        setEdit();
                      } else {
                        // update func
                        setEdit();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: customOrange,
                        foregroundColor: Colors.white),
                    child: Text(isEdited == false ? 'Edit' : 'Save'),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
