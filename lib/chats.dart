import 'package:flutter/material.dart';
import 'package:shift/chat.dart';
import 'package:shift/drawer.dart';
import 'package:shift/feed.dart';
import 'package:shift/post.dart';
import 'package:shift/profile.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? selectedFeed = "";
  bool showFeeds = false;

  List selectedChat = [];
  bool isChatSelected = false;

  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset('images/video.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  List feeds = [
    {
      'id': 1,
      'name': 'Josef',
      'image': 'images/user 1.jpg',
      'bio': 'Flutter Developer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': 'images/feed1.jfif',
      'video': '',
      'description': '',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': 'Just now'
    },
    {
      'id': 2,
      'name': 'Alexander',
      'image': 'images/user 2.jfif',
      'bio': 'Kotlin Developer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': false,
      'feed_image': 'images/feed2.jfif',
      'video': '',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '2 sec ago'
    },
    {
      'id': 3,
      'name': 'Antonio Baderas',
      'image': 'images/user 3.jfif',
      'bio': 'Front end dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': '',
      'video': 'images/video.mp4',
      'description': '',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '2 days ago'
    },
    {
      'id': 4,
      'name': 'Roy Fielding',
      'image': '',
      'bio': 'QA Engineer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': false,
      'feed_image': 'images/feed4.jfif',
      'video': '',
      'description': '',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': 'Yesterday'
    },
    {
      'id': 5,
      'name': 'Mike Dudikoff',
      'image': 'images/user 5.jfif',
      'bio': 'System Integrator',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': '',
      'video': 'images/video.mp4',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '2 days ago'
    },
    {
      'id': 6,
      'name': 'Ruy Hudson',
      'image': 'images/user 6.jfif',
      'bio': 'Full stack Dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': 'images/feed6.jfif',
      'video': '',
      'description': '',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '10 min ago'
    },
    {
      'id': 7,
      'name': 'Eric Allan',
      'image': 'images/user 7.jfif',
      'bio': 'Business man',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': '',
      'video': 'images/video.mp4',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '47 min ago'
    },
    {
      'id': 8,
      'name': 'Caleb Kiplangat',
      'image': 'images/user 8.jfif',
      'bio': 'Computer Engineer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': 'images/feed8.jfif',
      'video': '',
      'description': '',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '1 week ago'
    },
    {
      'id': 9,
      'name': 'Elsama Yego',
      'image': 'images/user 9.jfif',
      'bio': 'Project Manager',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': '',
      'video': '',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '2 days ago'
    },
    {
      'id': 10,
      'name': 'Brad Travesy',
      'image': 'images/user 10.jfif',
      'bio': 'Software Dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'feed_image': 'images/feed10.jfif',
      'video': '',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'active': '2 min ago',
      'createdOn': '4 days ago'
    },
  ];

  List messages = [
    {
      'id': 1,
      'sender_id': '3',
      'receiver_id': '1',
      'last_seen': '2 min ago',
      'sender_name': 'Antonio Baderas',
      'receiver_name': 'Josef',
      'sender_image': 'images/user 3.jfif',
      'receiver_image': 'images/user 1.jfif',
      'sender_bio': 'Front end dev',
      'receiver_bio': 'Front end dev',
      'message': 'Hello friend, how far have you reached with flutter',
      'unread_messages': '3',
      'time': '5:14 pm',
      'online': false,
    },
    {
      'id': 2,
      'sender_id': '4',
      'receiver_id': '1',
      'last_seen': '8 min ago',
      'sender_name': 'Roy Fielding',
      'receiver_name': 'Josef',
      'sender_image': '',
      'receiver_image': 'images/user 4.jfif',
      'sender_bio': 'Front end dev',
      'receiver_bio': 'Front end dev',
      'message': 'Hello friend, how far have you reached with flutter',
      'unread_messages': '1',
      'time': '3:14 pm',
      'online': false,
    },
    {
      'id': 3,
      'sender_id': '8',
      'receiver_id': '1',
      'last_seen': '10 hrs ago',
      'sender_name': 'Elsama Yego',
      'receiver_name': 'Josef',
      'sender_image': 'images/user 8.jfif',
      'receiver_image': 'images/user 1.jfif',
      'sender_bio': 'Front end dev',
      'receiver_bio': 'Front end dev',
      'message': 'Hello friend, how far have you reached with flutter',
      'unread_messages': '',
      'time': 'Yesterday',
      'online': true,
    },
    {
      'id': 4,
      'sender_id': '9',
      'receiver_id': '1',
      'last_seen': 'Last week',
      'sender_name': 'Caleb Kiplagat',
      'receiver_name': 'Josef',
      'sender_image': 'images/user 9.jfif',
      'receiver_image': 'images/user 1.jfif',
      'sender_bio': 'Front end dev',
      'receiver_bio': 'Front end dev',
      'message': 'Hello friend, how far have you reached with flutter',
      'unread_messages': '',
      'time': '08:14 pm',
      'online': true,
    },
    {
      'id': 5,
      'sender_id': '10',
      'receiver_id': '1',
      'last_seen': '2 min ago',
      'sender_name': 'Brad Travesy',
      'receiver_name': 'Josef',
      'sender_image': 'images/user 10.jfif',
      'receiver_image': 'images/user 1.jfif',
      'sender_bio': 'Front end dev',
      'receiver_bio': 'Front end dev',
      'message': 'Hello friend, how far have you reached with flutter',
      'unread_messages': '6',
      'time': '4:00 pm',
      'online': false,
    },
    {
      'id': 6,
      'sender_id': '7',
      'receiver_id': '1',
      'last_seen': '30 Sec ago',
      'sender_name': 'Eric Allan',
      'receiver_name': 'Josef',
      'sender_image': '',
      'receiver_image': 'images/user 1.jfif',
      'sender_bio': 'Front end dev',
      'receiver_bio': 'Front end dev',
      'message': 'Hello friend, how far have you reached with flutter',
      'unread_messages': '1',
      'time': '2: 29 pm',
      'online': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: isChatSelected == true && selectedChat.isNotEmpty
          ? null
          : const SideDrawer(),
      appBar: isChatSelected == true && selectedChat.isNotEmpty
          ? AppBar(
              elevation: 0,
              backgroundColor: Theme.of(context).brightness == Brightness.light
                  ? Colors.blue.shade100
                  : Colors.grey.shade400.withOpacity(0.05),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isChatSelected = false;
                        selectedChat.clear();
                      });
                    },
                    icon: const Icon(Icons.close),
                  ),
                  Text(selectedChat.length.toString()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.push_pin_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_up_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined),
                  ),
                ],
              ),
            )
          : AppBar(
              elevation: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              centerTitle: true,
              title: const Text('Shift'),
              actions: [
                const SizedBox(width: 4),
                showFeeds == true
                    ? Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey.shade300
                                  : Colors.grey.shade300.withOpacity(0.05),
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              showFeeds = false;
                            });
                          },
                          icon: const Icon(Icons.close),
                        ),
                      )
                    : Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey.shade300
                                  : Colors.grey.shade300.withOpacity(0.05),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Post(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit_outlined),
                        ),
                      ),
              ],
            ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            // buildSearch(),
            const SizedBox(
              height: 20,
            ),
            // buildTopFeeds(),
            buildMessages(),
          ],
        ),
      ),
    );
  }

  Widget buildSearch() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.grey.shade200
                : Colors.grey.shade300.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(top: 15), // add padding to adjust text
              hintText: "Search ...",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      );

  Widget buildTopFeeds() => showFeeds == true
      ? Container()
      : Visibility(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.grey.shade200
                    : Colors.grey.shade300.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Feeds',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              showFeeds = true;
                            });
                          },
                          child: const Text(
                            'View all',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 139, 179, 248),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: feeds.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext contet, index) {
                          var feed = feeds[index];

                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Feed(
                                    image: feed['image'],
                                    name: feed['name'],
                                    bio: feed['bio'],
                                    video: feed['video'],
                                    feedimage: feed['feed_image'],
                                    description: feed['description'],
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                // show feed
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, right: 10.0),
                                  // show video
                                  child: (feed['video'] != '')
                                      ? Container(
                                          height: 65,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue.shade300,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                                spreadRadius: 3,
                                                blurRadius: 6,
                                              ),
                                            ],
                                          ),
                                        )
                                      // show image
                                      : (feed['feed_image'] != '')
                                          ? Container(
                                              height: 65,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue.shade300,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 3,
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    feed['feed_image'],
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )
                                          : (feed['video'] == '' &&
                                                  feed['feed_image'] == '')
                                              ? Container(
                                                  height: 65,
                                                  width: 65,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.blue.shade300,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.4),
                                                        spreadRadius: 3,
                                                        blurRadius: 6,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Center(
                                                      child: Text(
                                                        feed['description'],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        maxLines: 3,
                                                        style: const TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Container(),
                                ),
                                // user image
                                Positioned(
                                  right: 0,
                                  bottom: 20,
                                  child: Stack(
                                    children: [
                                      feed['image'] == ''
                                          ? Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue.shade300,
                                                border: Border.all(
                                                  width: 2,
                                                  color: Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 3,
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  feed['name'][0],
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue.shade300,
                                                border: Border.all(
                                                  width: 2,
                                                  color: Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    spreadRadius: 3,
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    feed['image'],
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                      // online status
                                      Positioned(
                                        child: feed['online'] == true
                                            ? Container(
                                                height: 10,
                                                width: 10,
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
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );

  Widget buildMessages() => showFeeds == true
      ? Container(
          height: MediaQuery.of(context).size.height * 0.75,
          child: PageView.builder(
            itemCount: feeds.length,
            controller: PageController(
              initialPage: 1,
              viewportFraction: 0.9,
            ),
            itemBuilder: (BuildContext context, index) {
              final isMuted = videoPlayerController.value.volume == 0;
              var feed = feeds[index];

              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey.shade200
                      : Colors.grey.shade300.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Profile(
                                              id: feed['id'].toString(),
                                              image: feed['image'],
                                              name: feed['name'],
                                              bio: feed['bio'],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          feed['image'] == ''
                                              ? Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.blue,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      feed['name'][0],
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        feed['image'],
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                feed['name'],
                                                style: const TextStyle(
                                                  fontSize: 17,
                                                ),
                                              ),
                                              Text(
                                                feed['bio'],
                                                style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const Icon(Icons.more_vert_outlined)
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const SizedBox(
                                height: 8,
                              ),

                              // show video
                              feed['feed_image'] == '' &&
                                      feed['description'] == ''
                                  ? videoPlayerController.value.isInitialized
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  height: 275,
                                                  child: AspectRatio(
                                                    aspectRatio:
                                                        videoPlayerController
                                                            .value.aspectRatio,
                                                    child: VideoPlayer(
                                                      videoPlayerController,
                                                    ),
                                                  ),
                                                ),
                                                Positioned.fill(
                                                  child: GestureDetector(
                                                    behavior:
                                                        HitTestBehavior.opaque,
                                                    onTap: () {
                                                      setState(() {
                                                        videoPlayerController
                                                                .value.isPlaying
                                                            ? videoPlayerController
                                                                .pause()
                                                            : videoPlayerController
                                                                .play();
                                                      });
                                                    },
                                                    child: Stack(
                                                      children: [
                                                        videoPlayerController
                                                                .value.isPlaying
                                                            ? Container()
                                                            : Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                color: Colors
                                                                    .black26,
                                                                child:
                                                                    const Icon(
                                                                  Icons
                                                                      .play_arrow,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 70,
                                                                ),
                                                              ),
                                                        Positioned(
                                                          bottom: 0,
                                                          left: 0,
                                                          right: 0,
                                                          child: videoPlayerController
                                                                  .value
                                                                  .isPlaying
                                                              ? VideoProgressIndicator(
                                                                  videoPlayerController,
                                                                  allowScrubbing:
                                                                      true,
                                                                )
                                                              : Container(),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            if (videoPlayerController
                                                .value.isInitialized)
                                              Container(
                                                color: Colors.black,
                                                child: Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          videoPlayerController
                                                              .setVolume(
                                                            isMuted ? 1 : 0,
                                                          );
                                                        });
                                                      },
                                                      child: Icon(
                                                          isMuted
                                                              ? Icons
                                                                  .volume_mute
                                                              : Icons.volume_up,
                                                          color: Theme.of(context)
                                                                      .brightness ==
                                                                  Brightness
                                                                      .light
                                                              ? Colors.white
                                                              : Colors.white),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    Feed(
                                                              image:
                                                                  feed['image'],
                                                              name:
                                                                  feed['name'],
                                                              bio: feed['bio'],
                                                              video:
                                                                  feed['video'],
                                                              feedimage: feed[
                                                                  'feed_image'],
                                                              description: feed[
                                                                  'description'],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Icon(
                                                          Icons
                                                              .fullscreen_outlined,
                                                          color: Theme.of(context)
                                                                      .brightness ==
                                                                  Brightness
                                                                      .light
                                                              ? Colors.white
                                                              : Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                          ],
                                        )
                                      : Container(
                                          height: 300,
                                          color: Colors.black,
                                          child: const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        )
                                  // show image
                                  : feed['video'] == '' &&
                                          feed['description'] == ''
                                      ? InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Feed(
                                                  image: feed['image'],
                                                  name: feed['name'],
                                                  bio: feed['bio'],
                                                  video: feed['video'],
                                                  feedimage: feed['feed_image'],
                                                  description:
                                                      feed['description'],
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: 300,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  feed['feed_image'],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        )
                                      // show text
                                      : feed['video'] == '' &&
                                              feed['feed_image'] == ''
                                          ? InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => Feed(
                                                      image: feed['image'],
                                                      name: feed['name'],
                                                      bio: feed['bio'],
                                                      video: feed['video'],
                                                      feedimage:
                                                          feed['feed_image'],
                                                      description:
                                                          feed['description'],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                height: 300,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.light
                                                            ? Colors
                                                                .grey.shade300
                                                            : Colors
                                                                .grey.shade800),
                                                    bottom: BorderSide(
                                                        color: Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.light
                                                            ? Colors
                                                                .grey.shade300
                                                            : Colors
                                                                .grey.shade800),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    feed['description'],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 10,
                                                  ),
                                                ),
                                              ),
                                            )
                                          // show video and text
                                          : feed['feed_image'] == ''
                                              ? Column(
                                                  children: [
                                                    videoPlayerController
                                                            .value.isInitialized
                                                        ? Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Stack(
                                                                children: [
                                                                  Container(
                                                                    height: 280,
                                                                    child:
                                                                        AspectRatio(
                                                                      aspectRatio: videoPlayerController
                                                                          .value
                                                                          .aspectRatio,
                                                                      child:
                                                                          VideoPlayer(
                                                                        videoPlayerController,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Positioned
                                                                      .fill(
                                                                    child:
                                                                        GestureDetector(
                                                                      behavior:
                                                                          HitTestBehavior
                                                                              .opaque,
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          videoPlayerController.value.isPlaying
                                                                              ? videoPlayerController.pause()
                                                                              : videoPlayerController.play();
                                                                        });
                                                                      },
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          videoPlayerController.value.isPlaying
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
                                                                            bottom:
                                                                                0,
                                                                            left:
                                                                                0,
                                                                            right:
                                                                                0,
                                                                            child: videoPlayerController.value.isPlaying
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
                                                              if (videoPlayerController
                                                                  .value
                                                                  .isInitialized)
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    setState(
                                                                        () {
                                                                      videoPlayerController
                                                                          .setVolume(
                                                                        isMuted
                                                                            ? 1
                                                                            : 0,
                                                                      );
                                                                    });
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    color: Colors
                                                                        .black,
                                                                    child: Row(
                                                                      children: [
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            setState(() {
                                                                              videoPlayerController.setVolume(
                                                                                isMuted ? 1 : 0,
                                                                              );
                                                                            });
                                                                          },
                                                                          child: Icon(
                                                                              isMuted ? Icons.volume_mute : Icons.volume_up,
                                                                              color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.white),
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              10,
                                                                        ),
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => Feed(
                                                                                  image: feed['image'],
                                                                                  name: feed['name'],
                                                                                  bio: feed['bio'],
                                                                                  video: feed['video'],
                                                                                  feedimage: feed['feed_image'],
                                                                                  description: feed['description'],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child: Icon(
                                                                              Icons.fullscreen_outlined,
                                                                              color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.white),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          )
                                                        : Container(
                                                            height: 300,
                                                            color: Colors.black,
                                                            child: const Center(
                                                              child:
                                                                  CircularProgressIndicator(),
                                                            ),
                                                          ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      Feed(
                                                                image: feed[
                                                                    'image'],
                                                                name: feed[
                                                                    'name'],
                                                                bio:
                                                                    feed['bio'],
                                                                video: feed[
                                                                    'video'],
                                                                feedimage: feed[
                                                                    'feed_image'],
                                                                description: feed[
                                                                    'description'],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Text(
                                                          feed['description'],
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          maxLines: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              // show image and text
                                              : feed['video'] == ''
                                                  ? InkWell(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    Feed(
                                                              image:
                                                                  feed['image'],
                                                              name:
                                                                  feed['name'],
                                                              bio: feed['bio'],
                                                              video:
                                                                  feed['video'],
                                                              feedimage: feed[
                                                                  'feed_image'],
                                                              description: feed[
                                                                  'description'],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 300,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                image:
                                                                    AssetImage(
                                                                  feed[
                                                                      'feed_image'],
                                                                ),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              feed[
                                                                  'description'],
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 3,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  : Container()
                            ],
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                  padding: const EdgeInsets.all(5.0),
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
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        )
      : Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: messages.length,
            separatorBuilder: (BuildContext context, index) {
              return const Divider();
            },
            itemBuilder: (BuildContext context, index) {
              return messages[index]['sender_id'] == '1'
                  ? ListTile(
                      leading: Stack(
                        children: [
                          messages[index]['receiver_image'] == ''
                              ? Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      messages[index]['receiver_name'][0],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        messages[index]['receiver_image'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                        ],
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  messages[index]['receiver_name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(width: 8),
                                messages[index]['online'] == true
                                    ? const Text('')
                                    : Expanded(
                                        child: Text(
                                          messages[index]['last_seen'],
                                          style: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                              ],
                            ),
                          ),
                          messages[index]['unread_messages'] == ''
                              ? const Text('')
                              : Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      messages[index]['unread_messages'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                          messages[index]['online'] == true
                              ? Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                        ),
                                        color: Colors.blue,
                                        shape: BoxShape.circle),
                                  ),
                                )
                              : const Text(''),
                          selectedChat.contains(messages[index]['id'])
                              ? Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                        ),
                                        color: Colors.blue[200],
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                )
                              : const Text(''),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              messages[index]['message'],
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(messages[index]['time'])
                        ],
                      ),
                      onLongPress: () {
                        if (selectedChat.contains(messages[index]['id'])) {
                          setState(() {
                            selectedChat.remove(messages[index]['id']);
                          });
                        } else {
                          setState(() {
                            isChatSelected = true;
                            selectedChat.add(messages[index]['id']);
                          });
                        }
                      },
                      onTap: (() {
                        if (isChatSelected == true && selectedChat.isNotEmpty) {
                          if (selectedChat.contains(messages[index]['id'])) {
                            setState(() {
                              selectedChat.remove(messages[index]['id']);
                            });
                          } else {
                            setState(() {
                              isChatSelected = true;
                              selectedChat.add(messages[index]['id']);
                            });
                          }
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Chat(
                                id: messages[index]['receiver_id'],
                                image: messages[index]['receiver_image'],
                                name: messages[index]['receiver_name'],
                                bio: messages[index]['receiver_bio'],
                              ),
                            ),
                          );
                        }
                      }),
                    )
                  : ListTile(
                      leading: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(
                                id: messages[index]['sender_id'],
                                image: messages[index]['sender_image'],
                                name: messages[index]['sender_name'],
                                bio: messages[index]['sender_bio'],
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            messages[index]['sender_image'] == ''
                                ? Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        messages[index]['sender_name'][0],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          messages[index]['sender_image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                            messages[index]['online'] == true
                                ? Positioned(
                                    right: 0,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                          ),
                                          color: Colors.blue,
                                          shape: BoxShape.circle),
                                    ),
                                  )
                                : const Text(''),
                            selectedChat.contains(messages[index]['id'])
                                ? Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                          ),
                                          color: Colors.blue[200],
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  )
                                : const Text(''),
                          ],
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  messages[index]['sender_name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(width: 8),
                                messages[index]['online'] == true
                                    ? const Text('')
                                    : Expanded(
                                        child: Text(
                                          messages[index]['last_seen'],
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                              ],
                            ),
                          ),
                          messages[index]['unread_messages'] == ''
                              ? const Text('')
                              : Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      messages[index]['unread_messages'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              messages[index]['message'],
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(messages[index]['time'])
                        ],
                      ),
                      onLongPress: () {
                        if (selectedChat.contains(messages[index]['id'])) {
                          setState(() {
                            selectedChat.remove(messages[index]['id']);
                          });
                        } else {
                          setState(() {
                            isChatSelected = true;
                            selectedChat.add(messages[index]['id']);
                          });
                        }
                      },
                      onTap: (() {
                        if (isChatSelected == true && selectedChat.isNotEmpty) {
                          if (selectedChat.contains(messages[index]['id'])) {
                            setState(() {
                              selectedChat.remove(messages[index]['id']);
                            });
                          } else {
                            setState(() {
                              isChatSelected = true;
                              selectedChat.add(messages[index]['id']);
                            });
                          }
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Chat(
                                id: messages[index]['sender_id'],
                                image: messages[index]['sender_image'],
                                name: messages[index]['sender_name'],
                                bio: messages[index]['sender_bio'],
                              ),
                            ),
                          );
                        }
                      }),
                    );
            },
          ));
}
