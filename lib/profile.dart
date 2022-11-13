import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
    @required this.id,
    @required this.image,
    @required this.name,
    @required this.bio,
  }) : super(key: key);

  final String? id;
  final String? image;
  final String? name;
  final String? bio;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List friends = [
    {
      'id': 1,
      'name': 'Josef',
      'image': 'images/user 1.jpg',
      'bio': 'Flutter Developer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': true
    },
    {
      'id': 2,
      'name': 'Alexander',
      'image': 'images/user 2.jfif',
      'bio': 'Kotlin Developer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': false,
      'active': '2 min ago',
      'friend': false
    },
    {
      'id': 3,
      'name': 'Antonio Baderas',
      'image': 'images/user 3.jfif',
      'bio': 'Front end dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': true
    },
    {
      'id': 4,
      'name': 'Roy Fielding',
      'image': 'images/user 4.jfif',
      'bio': 'QA Engineer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': false,
      'active': '2 min ago',
      'friend': true
    },
    {
      'id': 5,
      'name': 'Mike Dudikoff',
      'image': 'images/user 5.jfif',
      'bio': 'System Integrator',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': false
    },
    {
      'id': 6,
      'name': 'Ruy Hudson',
      'image': 'images/user 6.jfif',
      'bio': 'Full stack Dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': true
    },
    {
      'id': 7,
      'name': 'Eric Allan',
      'image': '',
      'bio': 'Business man',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': false
    },
    {
      'id': 8,
      'name': 'Caleb Kiplangat',
      'image': 'images/user 8.jfif',
      'bio': 'Computer Engineer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': false
    },
    {
      'id': 9,
      'name': 'Elsama Yego',
      'image': 'images/user 9.jfif',
      'bio': 'Project Manager',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': true
    },
    {
      'id': 10,
      'name': 'Brad Travesy',
      'image': 'images/user 10.jfif',
      'bio': 'Software Dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'active': '2 min ago',
      'friend': true
    },
  ];

  List blogs = [
    {
      'id': '1',
      'name': 'Josef',
      'image': 'images/user 1.jpg',
      'bio': 'Flutter Developer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': 'images/feed1.jfif',
      'video': '',
      'thumbnail': '',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': 'Just now'
    },
    {
      'id': '2',
      'name': 'Alexander',
      'image': 'images/user 2.jfif',
      'bio': 'Kotlin Developer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': false,
      'blog_image': 'images/feed2.jfif',
      'video': '',
      'thumbnail': '',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'likes': [
        {
          'uid': '',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '2 sec ago'
    },
    {
      'id': '3',
      'name': 'Antonio Baderas',
      'image': 'images/user 3.jfif',
      'bio': 'Front end dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': '',
      'video':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      'thumbnail':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
      'description': '',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '2 days ago'
    },
    {
      'id': '4',
      'name': 'Roy Fielding',
      'image': '',
      'bio': 'QA Engineer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': false,
      'blog_image': 'images/feed4.jfif',
      'video': '',
      'thumbnail': '',
      'description': '',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': 'Yesterday'
    },
    {
      'id': '5',
      'name': 'Mike Dudikoff',
      'image': 'images/user 5.jfif',
      'bio': 'System Integrator',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': '',
      'video':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      'thumbnail':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '2 days ago'
    },
    {
      'id': '6',
      'name': 'Ruy Hudson',
      'image': 'images/user 6.jfif',
      'bio': 'Full stack Dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': 'images/feed6.jfif',
      'video': '',
      'thumbnail': '',
      'description': '',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '10 min ago'
    },
    {
      'id': '7',
      'name': 'Eric Allan',
      'image': 'images/user 7.jfif',
      'bio': 'Business man',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': '',
      'video':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      'thumbnail':
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg",
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '47 min ago'
    },
    {
      'id': '8',
      'name': 'Caleb Kiplangat',
      'image': 'images/user 8.jfif',
      'bio': 'Computer Engineer',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': 'images/feed8.jfif',
      'video': '',
      'thumbnail': '',
      'description': '',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '1 week ago'
    },
    {
      'id': '9',
      'name': 'Elsama Yego',
      'image': 'images/user 9.jfif',
      'bio': 'Project Manager',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': '',
      'video': '',
      'thumbnail': '',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '2 days ago'
    },
    {
      'id': '10',
      'name': 'Brad Travesy',
      'image': 'images/user 10.jfif',
      'bio': 'Software Dev',
      'about':
          'Social media is internet-based and gives users quick electronic communication of content, such as personal information, documents, videos, and photos.',
      'online': true,
      'blog_image': 'images/feed10.jfif',
      'video': '',
      'thumbnail': '',
      'description':
          'Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content. Content shared on social media through a user\'s profile. It can be as simple as a blurb of text, but can also include images, videos, and links to other content.',
      'favorite': '2',
      'likes': [
        {
          'uid': '1',
          'name': 'Connie',
          'image': 'images/like1.jfif',
        },
        {
          'uid': '2',
          'name': 'Connie',
          'image': 'images/like2.jfif',
        },
        {
          'uid': '3',
          'name': 'Connie',
          'image': 'images/like3.jfif',
        },
        {
          'uid': '4',
          'name': 'Connie',
          'image': 'images/like4.jfif',
        },
        {
          'uid': '5',
          'name': 'Connie',
          'image': 'images/like5.jfif',
        },
        {
          'uid': '6',
          'name': 'Connie',
          'image': 'images/like6.jfif',
        },
      ],
      'active': '2 min ago',
      'createdOn': '4 days ago'
    },
  ];

  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                elevation: 0,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: 250,
                floating: false,
                pinned: true,
                flexibleSpace: LayoutBuilder(
                  builder: (context, cons) {
                    top = cons.biggest.height;
                    return FlexibleSpaceBar(
                      centerTitle: false,
                      title: Row(
                        children: [
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: top <= 130 ? 1.0 : 0.0,
                            child: '${widget.image}' == ''
                                ? Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
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
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          '${widget.image}',
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${widget.name}',
                            style: const TextStyle(),
                          ),
                        ],
                      ),
                      background: Container(
                        color: Colors.blue[300],
                        child: widget.image == ''
                            ? Center(
                                child: Text(
                                  '${widget.name}'[0],
                                  style: const TextStyle(
                                    fontSize: 49,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : Image.asset(
                                '${widget.image}',
                                fit: BoxFit.cover,
                              ),
                      ),
                    );
                  },
                ),
                actions: const [
                  Icon(
                    Icons.more_vert_outlined,
                  )
                ],
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            icon: Icon(Icons.info),
                            text: "About",
                          ),
                          Tab(
                            icon: Icon(Icons.feed_outlined),
                            text: "Blogs",
                          ),
                          Tab(
                              icon: Icon(Icons.people_outline),
                              text: "Followers"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Center(
                            child: Text(
                              '${widget.bio}',
                              style: const TextStyle(fontSize: 22),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 48.0),
                            child: const Text(
                              'Your bio is the first thing a visitor sees on your profile, just like meeting someone for the first time. So why take a chance? This post will help you to describe yourself on social media with examples and best ideas.',
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 48.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.grey.shade300
                                        : Colors.grey.shade300
                                            .withOpacity(0.05),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.message_outlined),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.grey.shade300
                                        : Colors.grey.shade300
                                            .withOpacity(0.05),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.video_call_outlined),
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.grey.shade300
                                        : Colors.grey.shade300
                                            .withOpacity(0.05),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.phone_outlined),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              const SizedBox(
                                height: 150,
                              ),
                              //  buildBlog(blog)
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      slivers: <Widget>[
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => ListTile(
                              leading: Stack(
                                children: [
                                  friends[index]['image'] == ''
                                      ? Container(
                                          height: 50,
                                          width: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Text(
                                              friends[index]['name'][0],
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
                                                friends[index]['image'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                  friends[index]['online'] == true
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
                                      : const Text('')
                                ],
                              ),
                              title: Row(
                                children: [
                                  Text(
                                    friends[index]['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      friends[index]['active'],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Text(friends[index]['bio']),
                              trailing: friends[index]['friend'] == true
                                  ? SizedBox(
                                      width: 75,
                                      child: OutlinedButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text(
                                                    'Please confirm'),
                                                content: Text(
                                                  // ignore: prefer_interpolation_to_compose_strings
                                                  'Confirm that you want to unfollow ' +
                                                      friends[index]['name'],
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    child: const Text(
                                                      'Confirm',
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: const Text('Cancel'),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        style: OutlinedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                          side: const BorderSide(
                                            width: 1.0,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        child: const Text('Added'),
                                      ),
                                    )
                                  : SizedBox(
                                      width: 75,
                                      child: OutlinedButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text(
                                                    'Please confirm'),
                                                content: Text(
                                                  // ignore: prefer_interpolation_to_compose_strings
                                                  'Confirm that you want to follow ' +
                                                      friends[index]['name'],
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    child:
                                                        const Text('Confirm'),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: const Text('Cancel'),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
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
                                          'Add',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                            ),
                            childCount: friends.length,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildBlog(blog) {
    // final isMuted = videoPlayerController.value.volume == 0;

    // video and text
    if (blog['video'] != '' &&
        blog['description'] != '' &&
        blog['blog_image'] == '') {
      return Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  blog['thumbnail'] == ''
                      ? Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    blog['thumbnail'],
                                  ),
                                ),
                              ),
                            ),
                            const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black45,
                              child: Icon(
                                Icons.play_arrow,
                                size: 40,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            blog['description'],
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
          const SizedBox(
            height: 20,
          )
        ],
      );
      // image and text'
    } else if (blog['blog_image'] != '' &&
        blog['description'] != '' &&
        blog['video'] == '') {
      return Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  blog['blog_image'],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            blog['description'],
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
          const SizedBox(
            height: 8,
          )
        ],
      );
      //video
    } else if (blog['video'] != '' &&
        blog['blog_image'] == '' &&
        blog['description'] == '') {
      return Column(
        children: [
          Stack(
            children: [
              blog['thumbnail'] == ''
                  ? Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                blog['thumbnail'],
                              ),
                            ),
                          ),
                        ),
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black45,
                          child: Icon(
                            Icons.play_arrow,
                            size: 40,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
            ],
          )
        ],
      );

      // image
    } else if (blog['blog_image'] != '' &&
        blog['video'] == '' &&
        blog['description'] == '') {
      return Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  blog['blog_image'],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      );
      // text
    } else {
      return Column(
        children: [
          Text(
            blog['description'],
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 14,
          ),
          const SizedBox(
            height: 8,
          )
        ],
      );
    }
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
