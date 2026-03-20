import 'dart:convert';
import 'package:http/http.dart' as http;

class AIService {
  // 🔐 Step 1: Add your REAL OpenAI API key here (DO NOT commit to GitHub)
  static const String apiKey = "";

  /// Sends a user message to OpenAI Chat Completions API and returns the AI's response
  static Future<String> getAIResponse({
    required String message,
    required String userName,
    required String brandType,
    required List<Map<String, String>> conversationHistory,
  }) async {
    try {
      // Prepare the messages array for the API
      List<Map<String, String>> messages = [
        {
          "role": "system",
          "content": """
You are the MOI AI Coach.
Your role is to guide users in aligning their daily life, creativity, and content with their Brand DNA.

User Name: $userName
Brand Type: $brandType

Rules:
- Provide personality-based advice only
- No financial, medical, or legal advice
- Tone: elegant, supportive, empowering
- Be adaptive and creative. Avoid repeating the same phrases.
"""
        },
        // Add previous conversation history
        ...conversationHistory.map((msg) => {
              "role": msg["role"]!,
              "content": msg["text"]!,
            }),
        // Add the latest user message
        {"role": "user", "content": message}
      ];

      // Make the POST request to OpenAI
      final response = await http.post(
        Uri.parse("https://api.openai.com/v1/chat/completions"),
        headers: {
          "Authorization": "Bearer $apiKey",
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo", // or "gpt-4" if you have access
          "messages": messages,
          "temperature": 0.7, // makes responses more creative
          "max_tokens": 300
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // Extract AI reply
        return data["choices"][0]["message"]["content"] ??
            "Sorry, I couldn't generate a response.";
      } else {
        return "Error ${response.statusCode}: Unable to get a response from AI.";
      }
    } catch (e) {
      return "Sorry, I couldn't connect to your MOI Coach right now.";
    }
  }
}
