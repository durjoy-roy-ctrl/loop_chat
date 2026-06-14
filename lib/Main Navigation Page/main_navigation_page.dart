import 'package:flutter/material.dart';
import 'package:loop_chat/Features/chats_page.dart';
import 'package:loop_chat/Features/friends_page.dart';
import 'package:loop_chat/Features/find_friends_page.dart';
import 'package:loop_chat/Features/profile_page.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(Icons.chat_bubble_outline),text: "Chats",),
                Tab(icon: Icon(Icons.people_outline),text: "Friends",),
                Tab(icon: Icon(Icons.person_search_outlined),text: "Find Friends",),
                Tab(icon: Icon(Icons.person),text: "Profile",),
              ],
            ),
            body: TabBarView(
                children:[
                  ChatsPage(),
                  FriendsPage(),
                  FindFriendsPage(),
                  ProfilePage(),
                ]
            ),
          )
      ),
    );
  }
}
