import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shift/imageview.dart';
import 'package:video_player/video_player.dart';

class Blog extends StatefulWidget {
  const Blog({
    Key? key,
    required this.name,
    required this.image,
    required this.bio,
    required this.about,
    required this.online,
    required this.blogimage,
    required this.video,
    required this.description,
    required this.likes,
    required this.active,
    required this.createdOn,
  }) : super(key: key);

  final String? name;
  final String? image;
  final String? bio;
  final String? about;
  final bool? online;
  final String? blogimage;
  final String? video;
  final String? description;
  final List? likes;
  final String? active;
  final String? createdOn;

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network('${widget.video}')
      ..addListener(() => {setState(() {})})
      ..setLooping(true)
      ..initialize().then((_) => videoPlayerController.play());
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = videoPlayerController.value.volume == 0;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.shade100
                  : Colors.grey.shade300.withOpacity(0.05),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  buildTop(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildBlog(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.grey.shade100
                    : Colors.grey.shade800,
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 36,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.blue.shade50
                                      : Colors.grey.shade300.withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.favorite,
                                        color: Colors.blue,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${widget.likes!.length} likes',
                                        style: const TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.comment_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '13 comments',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTop() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Stack(
                    children: [
                      '${widget.image}' == ''
                          ? Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue.shade300,
                                border: Border.all(
                                  width: 2,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 3,
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  '${widget.name}'[0],
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          : Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue.shade300,
                                border: Border.all(
                                  width: 2,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 3,
                                    blurRadius: 6,
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage(
                                    '${widget.image}',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      // online status
                      Positioned(
                        right: 0,
                        child: '${widget.online}' == true
                            ? Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                ),
                              )
                            : const Text(''),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.name}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '${widget.active}',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    controller: ModalScrollController.of(context),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.edit_outlined),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Edit')
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.copy_outlined),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Copy')
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.cut_outlined),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Cut')
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.delete_outlined),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Move')
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Icon(Icons.more_horiz_outlined),
            )
          ],
        ),
      );

  buildBlog() {
    final isMuted = videoPlayerController.value.volume == 0;

    // video and text
    if ('${widget.video}' != '' &&
        '${widget.description}' != '' &&
        '${widget.blogimage}' == '') {
      return Column(
        children: [
          videoPlayerController.value.isInitialized
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: AspectRatio(
                            aspectRatio:
                                videoPlayerController.value.aspectRatio,
                            child: VideoPlayer(videoPlayerController),
                          ),
                        ),
                        Positioned.fill(
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              setState(() {
                                videoPlayerController.value.isPlaying
                                    ? videoPlayerController.pause()
                                    : videoPlayerController.play();
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                videoPlayerController.value.isPlaying
                                    ? Container()
                                    : const CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.black45,
                                        child: Icon(
                                          Icons.play_arrow,
                                          size: 40,
                                          color: Colors.white,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.black87,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (videoPlayerController.value.isPlaying) {
                                videoPlayerController.pause();
                              } else {
                                videoPlayerController.play();
                              }
                              setState(() {});
                            },
                            icon: Icon(
                              videoPlayerController.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              videoPlayerController.seekTo(
                                const Duration(seconds: 0),
                              );
                              setState(() {});
                            },
                            icon: const Icon(Icons.stop, color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              videoPlayerController.setVolume(
                                isMuted ? 1 : 0,
                              );
                              setState(() {});
                            },
                            icon: Icon(
                                isMuted
                                    ? Icons.volume_mute_outlined
                                    : Icons.volume_up,
                                color: Colors.white),
                          ),
                          Container(
                            child: Text(
                              "${videoPlayerController.value.duration}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.zero,
                              child: VideoProgressIndicator(
                                videoPlayerController,
                                allowScrubbing: true,
                                colors: VideoProgressColors(
                                  backgroundColor: Colors.blue.shade100,
                                  playedColor: Colors.blue,
                                  bufferedColor: Colors.purple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.fullscreen,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${widget.description}',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      );
      // image and text'
    } else if ('${widget.blogimage}' != '' &&
        '${widget.description}' != '' &&
        '${widget.video}' == '') {
      return Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageView(
                    image: '${widget.blogimage}',
                  ),
                ),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    '${widget.blogimage}',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${widget.description}',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      );
      //video
    } else if ('${widget.video}' != '' &&
        '${widget.blogimage}' == '' &&
        '${widget.description}' == '') {
      return videoPlayerController.value.isInitialized
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: AspectRatio(
                        aspectRatio: videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(videoPlayerController),
                      ),
                    ),
                    Positioned.fill(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          setState(() {
                            videoPlayerController.value.isPlaying
                                ? videoPlayerController.pause()
                                : videoPlayerController.play();
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            videoPlayerController.value.isPlaying
                                ? Container()
                                : const CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.black45,
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.black87,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (videoPlayerController.value.isPlaying) {
                            videoPlayerController.pause();
                          } else {
                            videoPlayerController.play();
                          }
                          setState(() {});
                        },
                        icon: Icon(
                          videoPlayerController.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          videoPlayerController.seekTo(
                            const Duration(seconds: 0),
                          );
                          setState(() {});
                        },
                        icon: const Icon(Icons.stop, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {
                          videoPlayerController.setVolume(
                            isMuted ? 1 : 0,
                          );
                          setState(() {});
                        },
                        icon: Icon(
                            isMuted
                                ? Icons.volume_mute_outlined
                                : Icons.volume_up,
                            color: Colors.white),
                      ),
                      Container(
                        child: Text(
                          "${videoPlayerController.value.duration}",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.zero,
                          child: VideoProgressIndicator(
                            videoPlayerController,
                            allowScrubbing: true,
                            colors: VideoProgressColors(
                              backgroundColor: Colors.blue.shade100,
                              playedColor: Colors.blue,
                              bufferedColor: Colors.purple,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.fullscreen,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            )
          : Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                // borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );

      // image
    } else if ('${widget.blogimage}' != '' &&
        '${widget.video}' == '' &&
        '${widget.description}' == '') {
      return Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageView(
                    image: '${widget.blogimage}',
                  ),
                ),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    '${widget.blogimage}',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      );
      // text
    } else {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${widget.description}',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      );
    }
  }
}
