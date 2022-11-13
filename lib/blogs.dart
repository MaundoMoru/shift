import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shift/blog.dart';
import 'package:shift/drawer.dart';
import 'package:shift/post.dart';
import 'package:shift/profile.dart';
import 'package:video_player/video_player.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
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

  List messages = [
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

  List comments = [
    {
      'id': '1',
      'r_id': '0',
      'name': 'Joe',
      'image': 'images/user2.jfif',
      'comment': 'This is very amazing!',
      'timestamp': 'jul 19, 2022, 12: 14 PM',
    },
    {
      'id': '2',
      'r_id': '0',
      'name': 'Omar',
      'image': 'images/user3.jfif',
      'comment': 'This is good!',
      'timestamp': 'jul 19, 2022, 12: 14 PM'
    },
    {
      'id': '3',
      'r_id': '2',
      'name': 'Kelvin',
      'image': 'images/user4.jfif',
      'comment': 'Wonderful! Wonderful!',
      'timestamp': 'jul 19, 2022, 12: 14 PM'
    },
    {
      'id': '4',
      'r_id': '0',
      'name': 'Flutter',
      'image': 'images/user5.jfif',
      'comment': 'We wait',
      'timestamp': 'jul 19, 2022, 12: 14 PM'
    }
  ];

  late VideoPlayerController videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
  String? replyComment;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: const Text('Shift'),
        actions: [
          const SizedBox(width: 4),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Post(),
                  ),
                );
              },
              icon: const Icon(
                Icons.edit_outlined,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // buildMessages(),
            const SizedBox(
              height: 20,
            ),
            buildTopText(),
            const SizedBox(
              height: 20,
            ),
            buildBlogs(),
          ],
        ),
      ),
    );
  }

  Widget buildTopText() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Latest blogs',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.shuffle_outlined)
          ],
        ),
      );

  Widget buildBlogs() => ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: blogs.length,
        separatorBuilder: (BuildContext context, index) {
          return Container(
            height: 10,
          );
        },
        itemBuilder: (BuildContext context, index) {
          var blog = blogs[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Blog(
                    name: blog['name'],
                    image: blog['image'],
                    bio: blog['bio'],
                    about: blog['about'],
                    online: blog['online'],
                    blogimage: blog['blog_image'],
                    video: blog['video'],
                    description: blog['description'],
                    likes: blog['likes'],
                    active: blog['active'],
                    createdOn: blog['createdOn'],
                  ),
                ),
              );
            },
            child: Container(
              // height: 550,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.grey.shade100
                    : Colors.grey.shade300.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(
                                  id: blog['id'],
                                  image: blog['image'],
                                  name: blog['name'],
                                  bio: blog['bio'],
                                ),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  blog['image'] == ''
                                      ? Container(
                                          height: 50,
                                          width: 50,
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
                                              blog['name'][0],
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
                                                blog['image'],
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                  // online status
                                  Positioned(
                                    right: 0,
                                    child: blog['online'] == true
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
                                    blog['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    blog['active'],
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
                            child: const Icon(Icons.more_horiz_outlined))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    buildBlog(blog),
                    const SizedBox(
                      height: 20,
                    ),

                    // bottom comments and likes
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 75,
                              height: 28,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[200],
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                blog['likes'][0]['image']),
                                            fit: BoxFit.cover),
                                      ),
                                      child: const Center(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 15,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[200],
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                blog['likes'][1]['image']),
                                            fit: BoxFit.cover),
                                      ),
                                      child: const Center(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[200],
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                blog['likes'][2]['image']),
                                            fit: BoxFit.cover),
                                      ),
                                      child: const Center(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 45,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[200],
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+${blog['likes'].length - 3}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                                '${blog['likes'][0]['name']} and ${blog['likes'].length - 1} others likes it')
                          ],
                        ),

                        // likes and comments
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),

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
                                        : Colors.grey.shade300
                                            .withOpacity(0.05),
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
                                          '${blog['likes'].length} likes',
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
                            InkWell(
                              onTap: () {
                                buildComments();
                              },
                              child: Row(
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
          );
        },
      );

  buildBlog(blog) {
    final isMuted = videoPlayerController.value.volume == 0;

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

  Future buildComments() => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.6,
              maxChildSize: 0.9,
              expand: false,
              builder: (_, controller) {
                return ListView.builder(
                  controller: controller,
                  itemCount: comments.length,
                  itemBuilder: (BuildContext context, index) {
                    var comment = comments[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey.shade200,
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          comment['name'],
                                          style: TextStyle(
                                            color: Colors.blue.shade200,
                                          ),
                                        ),
                                        Text(
                                          comment['timestamp'],
                                          style: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(comment['comment']),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.favorite_outline,
                                              size: 18,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: 5),
                                            Text('2')
                                          ],
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(
                                          Icons.share_outlined,
                                          size: 18,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(width: 20),
                                        Icon(
                                          Icons.delete,
                                          size: 18,
                                          color: Colors.red.shade300,
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              replyComment = comment['id'];
                                            });
                                          },
                                          child: replyComment == comment['id']
                                              ? const Text('')
                                              : const Text('Reply'),
                                        ),
                                      ],
                                    ),
                                    comment['id'] == replyComment
                                        ? Row(
                                            children: [
                                              Expanded(
                                                child: TextFormField(
                                                  minLines: 1,
                                                  maxLines: 5,
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets.only(
                                                            top: 10,
                                                            right: 15,
                                                            bottom: 5,
                                                            left: 15),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    hintText:
                                                        'Write comment ...',
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Container(
                                                height: 45,
                                                width: 45,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.light
                                                      ? Colors.grey.shade300
                                                      : Colors.grey.shade300
                                                          .withOpacity(0.05),
                                                ),
                                                child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      replyComment = '';
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons.send,
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        : const Text('')
                                  ],
                                ),
                                Positioned(
                                  bottom: 1,
                                  left: 20,
                                  child: Column(
                                    children: [
                                      comments.contains(comment['r_id'] == '2')
                                          ? Text('data')
                                          : Text(''),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  },
                );
              },
            );
          });
        },
      );
}
