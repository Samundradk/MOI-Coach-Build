import 'dart:convert';
import 'package:http/http.dart' as http;

class AIService {
  // Add your OpenAI API key later
  static const String apiKey = "YOUR_OPENAI_API_KEY";

  // Toggle this to true when OpenAI is ready
  static const bool useRealAI = false;

  static Future<String> getAIResponse({
    required String message,
    required String userName,
    required String brandType,
    required List<Map<String, String>> conversationHistory,
  }) async {
    if (!useRealAI) {
      return _fakeAIResponse(message, brandType);
    }

    try {
      final response = await http.post(
        Uri.parse("https://api.openai.com/v1/chat/completions"),
        headers: {
          "Authorization": "Bearer $apiKey",
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "model": "gpt-4o-mini",
          "messages": _buildMessages(
            message,
            userName,
            brandType,
            conversationHistory,
          ),
        }),
      );

      final data = jsonDecode(response.body);

      return data["choices"][0]["message"]["content"];
    } catch (e) {
      return "Sorry, I couldn't connect to the AI right now.";
    }
  }

  static List<Map<String, String>> _buildMessages(
    String userMessage,
    String userName,
    String brandType,
    List<Map<String, String>> history,
  ) {
    List<Map<String, String>> messages = [];

    // System prompt
    messages.add({
      "role": "system",
      "content": """
You are the MOI AI Coach.

Your job is to help users align their creativity,
daily actions, and content creation with their Brand DNA.

User name: $userName
Brand type: $brandType

Rules:
- Provide personality-based advice
- Encourage creativity and self-expression
- No financial advice
- No legal advice
- No medical advice
- Keep tone supportive, elegant, and empowering
"""
    });

    // Add conversation history
    for (var msg in history) {
      messages.add({
        "role": msg["role"]!,
        "content": msg["text"]!,
      });
    }

    // Add latest user message
    messages.add({
      "role": "user",
      "content": userMessage,
    });

    return messages;
  }

  static String _fakeAIResponse(String message, String brandType) {
    if (message.toLowerCase().contains("content")) {
      return "As a $brandType, your content works best when it reflects your authentic energy. Consider sharing a personal story or creative insight that reveals your unique perspective.";
    }

    if (message.toLowerCase().contains("day")) {
      return "For a $brandType, planning your day around your creative rhythm is key. Start with inspiration in the morning, move into creation midday, and reflect in the evening.";
    }

    return "As a $brandType, your strength lies in expressing your authentic creative identity. What are you currently feeling inspired to create?";
  }
}
