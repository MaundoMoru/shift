import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final ImagePicker imagePicker = ImagePicker();
  XFile? image;
  XFile? video;

  late VideoPlayerController videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: const Text(
          'Post',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/user 1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              TextFormField(
                autofocus: true,
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type here ...',
                ),
              ),
              Divider(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.grey.shade300
                    : Colors.grey.shade100.withOpacity(0.05),
                height: 1,
              ),
              image == null && video == null
                  ? Container()
                  : Stack(
                      children: [
                        video == null && image != null
                            ? Container(
                                height: 350,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: FileImage(
                                        File(image!.path),
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              )
                            : videoPlayerController.value.isInitialized
                                ? Container(
                                    height: 350,
                                    width: MediaQuery.of(context).size.width,
                                    child: AspectRatio(
                                      aspectRatio: videoPlayerController
                                          .value.aspectRatio,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: VideoPlayer(
                                          videoPlayerController,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 350,
                                    width: MediaQuery.of(context).size.width,
                                    child: const Center(
                                        child: CircularProgressIndicator()),
                                  ),
                        Positioned(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                image = null;
                                video = null;
                              });
                            },
                            icon: const Icon(Icons.close),
                          ),
                        )
                      ],
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _pickImage();
                        },
                        icon: const Icon(
                          Icons.image_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          _pickVideo();
                        },
                        icon: const Icon(
                          Icons.video_camera_back_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      backgroundColor: Colors.blue,
                      side: const BorderSide(
                        width: 1.0,
                        color: Colors.blue,
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.grey.shade300
                    : Colors.grey.shade100.withOpacity(0.05),
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    XFile? img = await imagePicker.pickImage(source: ImageSource.gallery);
    if (img == null) {
      return;
    } else {
      setState(() {
        image = img;
      });
    }
  }

  Future<void> _pickVideo() async {
    XFile? vid = await imagePicker.pickVideo(source: ImageSource.gallery);
    if (vid == null) {
      return;
    } else {
      setState(() {
        video = vid;
      });
      videoPlayerController = VideoPlayerController.file(File(video!.path))
        ..initialize().then((_) {
          setState(() {});
          videoPlayerController.play();
        });
    }
  }
}
