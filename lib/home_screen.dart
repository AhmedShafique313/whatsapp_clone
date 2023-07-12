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
            backgroundColor: Colors.black,
            title: const Text('Whatsapp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.groups),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.camera_alt),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        const PopupMenuItem(value: 1, child: Text('New group')),
                        const PopupMenuItem(
                            value: 1, child: Text('New broadcast')),
                        const PopupMenuItem(
                            value: 1, child: Text('Linked devices')),
                        const PopupMenuItem(
                            value: 1, child: Text('Starred messages')),
                        const PopupMenuItem(value: 1, child: Text('Settings')),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 8,
                itemBuilder: ((context, index) {
                  return ListTile(
                    subtitle: Text(index / 2 == 0
                        ? 'New Community'
                        : 'Haiqa Qaisers Community'),
                    trailing: Text(index / 2 == 0 ? 'Create' : '02/05/23'),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/474x/e5/aa/00/e5aa00cb0689382c9a3d3dd521a2a6c6--anime-dolls-bjd-dolls.jpg'),
                    ),
                  );
                })),
            // chats

            ListView.builder(
                itemCount: 100,
                itemBuilder: ((context, index) {
                  return const ListTile(
                    title: Text('Haiqa Qaiser'),
                    subtitle: Text('Kooi msla nahi :)'),
                    trailing: Text('4:30 AM'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/474x/e5/aa/00/e5aa00cb0689382c9a3d3dd521a2a6c6--anime-dolls-bjd-dolls.jpg'),
                    ),
                  );
                })),
            // Status area
            ListView.builder(
                itemCount: 20,
                itemBuilder: ((context, index) {
                  return ListTile(
                    subtitle:
                        Text(index / 2 == 0 ? 'My Status' : 'Haiqa Qaiser'),
                    trailing:
                        Text(index / 2 == 0 ? 'Just Now' : '28 minutes ago'),
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.green,
                              width: 3,
                              style: BorderStyle.solid)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/474x/e5/aa/00/e5aa00cb0689382c9a3d3dd521a2a6c6--anime-dolls-bjd-dolls.jpg'),
                      ),
                    ),
                  );
                })),
            // Calls section
            ListView.builder(
                itemCount: 100,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: const Text('Haiqa Qaiser'),
                    subtitle: Text(
                      index / 2 == 0
                          ? 'Video call 2:03:54'
                          : 'Audio call 1:09:54',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.video_call : Icons.phone),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/474x/e5/aa/00/e5aa00cb0689382c9a3d3dd521a2a6c6--anime-dolls-bjd-dolls.jpg'),
                    ),
                  );
                })),
          ]),
        ));
  }
}
