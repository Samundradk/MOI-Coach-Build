import 'package:flutter/material.dart';

class AIPage extends StatefulWidget {
  final String userName;
  final String brandType;

  const AIPage({
    super.key,
    required this.userName,
    required this.brandType,
  });

  @override
  State<AIPage> createState() => _AIPageState();
}

class _AIPageState extends State<AIPage> {
  final TextEditingController messageController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  List<Map<String, String>> messages = [];

  @override
  void initState() {
    super.initState();

    // Initial AI greeting
    messages.add({
      "role": "ai",
      "text":
          "Hi ${widget.userName}, I'm your MOI AI Coach. I see your Brand IT Factor type is ${widget.brandType}. How can I support you today?"
    });
  }

  void sendMessage() {
    if (messageController.text.trim().isEmpty) return;

    String userMessage = messageController.text;

    setState(() {
      messages.add({"role": "user", "text": userMessage});
    });

    messageController.clear();

    scrollToBottom();

    fakeAIResponse();
  }

  void fakeAIResponse() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        messages.add({
          "role": "ai",
          "text":
              "As a ${widget.brandType}, your energy thrives when you act in alignment with your natural creative rhythm. What are you currently working on?"
        });
      });

      scrollToBottom();
    });
  }

  void scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 200), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  Widget buildMessage(Map<String, String> message) {
    bool isUser = message["role"] == "user";

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(14),
        constraints: const BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(
          color: isUser ? const Color(0xFFA194A2) : const Color(0xFFEDEBED),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          message["text"]!,
          style: TextStyle(
            color: isUser ? Colors.white : Colors.black,
            height: 1.4,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F8),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu, color: Colors.white),
                  ),
                  Image.asset(
                    "assets/moi_moi_small_logo.png",
                    height: 70,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Chat Messages
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return buildMessage(messages[index]);
                },
              ),
            ),

            // Message Input
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                        hintText: "Type your message...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
