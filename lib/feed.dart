import 'package:flutter/material.dart';
import 'package:shift/profile.dart';
import 'package:video_player/video_player.dart';

class Feed extends StatefulWidget {
  const Feed({
    Key? key,
    @required this.image,
    @required this.name,
    @required this.bio,
    @required this.video,
    @required this.feedimage,
    @required this.description,
  }) : super(key: key);

  final String? image;
  final String? name;
  final String? bio;
  final String? video;
  final String? feedimage;
  final String? description;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset('${widget.video}')
      ..initialize().then((_) {
        setState(() {});
        videoPlayerController.play();
      });
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
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(
                    // id: '${widget.id}',
                    image: '${widget.image}',
                    name: '${widget.name}',
                    bio: '${widget.bio}',
                  ),
                ),
              );
            },
            child: Row(
              children: [
                widget.image == ""
                    ? Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.shade300,
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
                              fontWeight: FontWeight.bold,
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 3,
                              blurRadius: 6,
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage('${widget.image}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${widget.name}'),
                    Text(
                      '${widget.bio}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.shade300
                  : Colors.grey.shade300.withOpacity(0.05),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ('${widget.video}' == '' && '${widget.feedimage}' == '')
                          ? const Text('')
                          : ('${widget.video}' == '')
                              ? Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('${widget.feedimage}'),
                                        fit: BoxFit.cover),
                                  ),
                                )
                              : Stack(
                                  children: [
                                    videoPlayerController.value.isInitialized
                                        ? Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            child: AspectRatio(
                                              aspectRatio: videoPlayerController
                                                  .value.aspectRatio,
                                              child: VideoPlayer(
                                                videoPlayerController,
                                              ),
                                            ),
                                          )
                                        : Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            color: Colors.black,
                                            child: const Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
                                          ),
                                    Positioned.fill(
                                      child: GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: () {
                                          setState(() {
                                            videoPlayerController
                                                    .value.isPlaying
                                                ? videoPlayerController.pause()
                                                : videoPlayerController.play();
                                          });
                                        },
                                        child: Stack(
                                          children: [
                                            videoPlayerController
                                                    .value.isPlaying
                                                ? Container()
                                                : Container(
                                                    alignment: Alignment.center,
                                                    color: Colors.black26,
                                                    child: const Icon(
                                                      Icons.play_arrow,
                                                      color: Colors.white,
                                                      size: 70,
                                                    ),
                                                  ),
                                            Positioned(
                                              bottom: 0,
                                              left: 0,
                                              right: 0,
                                              child: videoPlayerController
                                                      .value.isPlaying
                                                  ? VideoProgressIndicator(
                                                      videoPlayerController,
                                                      allowScrubbing: true,
                                                    )
                                                  : Container(),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                      if (videoPlayerController.value.isInitialized)
                        Container(
                          color: Colors.black,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    videoPlayerController.setVolume(
                                      isMuted ? 1 : 0,
                                    );
                                  });
                                },
                                child: Icon(
                                    isMuted
                                        ? Icons.volume_mute
                                        : Icons.volume_up,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.white
                                        : Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                child: Icon(Icons.fullscreen_outlined,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.white
                                        : Colors.white),
                              )
                            ],
                          ),
                        ),
                      ('${widget.description}' == '')
                          ? const Text('')
                          : Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 12, bottom: 20, left: 12),
                              child: Text('${widget.description}'),
                            )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Follow member',
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              // height: 20,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  'Follow me',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: const [
                            Icon(Icons.favorite_outline),
                            SizedBox(width: 20),
                            Icon(Icons.bookmark_outline),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
