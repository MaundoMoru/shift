import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List users = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: const Text('Users'),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            buildSearch(),
            buildUsers(context),
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

  Widget buildUsers(context) => Padding(
        padding: const EdgeInsets.only(top: 14),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: users.length,
          separatorBuilder: (BuildContext context, index) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              leading: Stack(
                children: [
                  users[index]['image'] == ''
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              users[index]['name'][0],
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
                                users[index]['image'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                  users[index]['online'] == true
                      ? Positioned(
                          right: 0,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
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
                    users[index]['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      users[index]['active'],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: Text(users[index]['bio']),
              trailing: users[index]['friend'] == true
                  ? SizedBox(
                      width: 75,
                      child: OutlinedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Please confirm'),
                                content: Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  'Confirm that you want to unfollow ' +
                                      users[index]['name'],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text(
                                      'Confirm',
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
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
                                title: const Text('Please confirm'),
                                content: Text(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  'Confirm that you want to follow ' +
                                      users[index]['name'],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Confirm'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
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
            );
          },
        ),
      );
}
