import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(' WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New Group '),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('New Group '),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Log out '),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),

            //chatssssssss
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                    ),
                    title: Text('Jawad Ahmad'),
                    subtitle: Text('Where are you now? '),
                    trailing: Text('9:50'),
                  );
                }),

            //Status

            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('News Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                              ),
                            ),
                            title: Text('Jawad Ahmad'),
                            subtitle: Text('35m ago'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                        ),
                      ),
                      title: Text('Jawad Ahmad'),
                      subtitle: Text('35m ago'),
                    );
                  }
                }),

            //calls
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                    ),
                    title: Text('Jawad Ahmad'),
                    subtitle: Text(index / 2 == 0
                        ? 'You missed call'
                        : 'You have missed video call'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
