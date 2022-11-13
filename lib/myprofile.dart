import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shift/edit_profile.dart';
import 'package:shift/models/User.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
  var top = 0.0;

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  Future<User> getUserInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String user = prefs.getString('user') as String;
    User userInfo = User.fromJson(jsonDecode(user.toString()));
    return userInfo;
  }

  String num = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<User>(
        future: getUserInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      elevation: 0,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
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
                                  child: snapshot.data!.image == ''
                                      ? Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Text(
                                              snapshot.data!.name.toString()[0],
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
                                              image: AssetImage(snapshot
                                                  .data!.image
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  snapshot.data!.name.toString(),
                                  style: const TextStyle(),
                                ),
                              ],
                            ),
                            background: Container(
                              color: Colors.blue[300],
                              child: snapshot.data!.image == ''
                                  ? Center(
                                      child: Text(
                                        snapshot.data!.image.toString()[0],
                                        style: const TextStyle(
                                          fontSize: 49,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : Image.asset(
                                      snapshot.data!.image.toString(),
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
                                    snapshot.data!.bio.toString(),
                                    style: const TextStyle(fontSize: 22),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 48.0),
                                  child: const Text(
                                    'Your bio is the first thing a visitor sees on your profile, just like meeting someone for the first time. So why take a chance? This post will help you to describe yourself on social media with examples and best ideas.',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 48.0),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: const Text('EDIT PROFILE'),
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
                                  delegate: SliverChildListDelegate([
                                const SizedBox(
                                  height: 150,
                                ),
                                const Text('data'),
                              ]))
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Please confirm'),
                                                      content: Text(
                                                        // ignore: prefer_interpolation_to_compose_strings
                                                        'Confirm that you want to unfollow ' +
                                                            friends[index]
                                                                ['name'],
                                                      ),
                                                      actions: <Widget>[
                                                        TextButton(
                                                          child: const Text(
                                                            'Confirm',
                                                          ),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                        TextButton(
                                                          child: const Text(
                                                              'Cancel'),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              style: OutlinedButton.styleFrom(
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      title: const Text(
                                                          'Please confirm'),
                                                      content: Text(
                                                        // ignore: prefer_interpolation_to_compose_strings
                                                        'Confirm that you want to follow ' +
                                                            friends[index]
                                                                ['name'],
                                                      ),
                                                      actions: <Widget>[
                                                        TextButton(
                                                          child: const Text(
                                                              'Confirm'),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                        TextButton(
                                                          child: const Text(
                                                              'Cancel'),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              style: OutlinedButton.styleFrom(
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
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
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
