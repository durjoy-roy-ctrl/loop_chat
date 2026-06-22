import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDark = false;
  bool about = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8FAFC),
        appBar: AppBar(
          backgroundColor: Color(0xff1E3A8A),
          toolbarHeight: 80,
          leading: IconButton(
            onPressed: () {
              setState(() {
                about = false;
              });
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: Text(
            about ? "About App" : "Profile",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  about = !about;
                });
              },
              icon: Icon(Icons.settings, color: Colors.white),
            ),
          ],
        ),

        body: about
            ? Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Loop Chat 🚀",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Welcome to Loop Chat, a modern, super-fast, and secure real-time messaging application designed to keep you connected with your friends and community seamlessly.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "✨ Key Features",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "• Real-Time Messaging with instant delivery:Experience lightning-fast text delivery with instant read and receive updates.\n"
                        "• Minimalist & Clean UI focused purely on chats : A beautiful, eye-friendly design that focuses purely on your conversations without any clutter.\n"
                        "• Secure Firebase Authentication : Built with robust Firebase Security to keep your account and personal data completely safe.\n"
                        "• Smart Dark Mode : Seamlessly switch between light and dark themes to protect your eyes during late-night chatting.\n"
                        "• Effortless Friend Management: Easily track your connections and see your total friends count at a glance from your profile.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "💎 Key Benefits",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "• Stay connected instantly with no communication lag.\n"
                        "• Highly optimized, ensuring it's battery & performance friendly.\n"
                        "• Privacy-first architecture to keep conversations secure.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 30),
                      const Divider(height: 1, thickness: 0.5),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Developed with ❤️ by:",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Durjoy Roy✨",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Column(
                children: [
                  const SizedBox(height: 25),
                  Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.blueAccent,
                      child: Text(
                        "D",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Dear",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "dearprogrammerofficial@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey[100]!,
                          width: 1.5,
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Icons.people_outline,
                              color: Color(0xFF4F46E5),
                              size: 24,
                            ),
                            title: Text(
                              "Total Friends",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                "12",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const Divider(height: 1, thickness: 0.5),
                          ListTile(
                            leading: const Icon(
                              Icons.dark_mode_outlined,
                              color: Color(0xFF4F46E5),
                            ),
                            title: const Text(
                              "Dark Mode",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: Switch(
                              value: isDark,
                              onChanged: (value) {
                                setState(() {
                                  isDark = value;
                                });
                              },
                            ),
                          ),
                          const Divider(height: 1, thickness: 0.5),
                          ListTile(
                            leading: const Icon(
                              Icons.security,
                              color: Color(0xFF6366F1),
                            ),
                            title: const Text(
                              "Change Password",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black,
                            ),
                            onTap: () {},
                          ),
                          const Divider(height: 1, thickness: 0.5),
                          ListTile(
                            leading: const Icon(
                              Icons.delete_outline,
                              color: Colors.redAccent,
                            ),
                            title: const Text(
                              "Delete Account",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black,
                            ),
                            onTap: () {},
                          ),
                          const Divider(height: 1, thickness: 0.5),
                          ListTile(
                            leading: const Icon(
                              Icons.logout,
                              color: Colors.orangeAccent,
                            ),
                            title: const Text(
                              "Sign Out",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.black,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
