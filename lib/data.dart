import 'package:cloud_firestore/cloud_firestore.dart';

class Question {
  final String text;
  final List<String> options;

  Question({required this.text, required this.options});

  factory Question.fromFirestore(Map<String, dynamic> data) {
    // Check if the key is 'text' or 'questionText' based on your Firestore
    return Question(
      text: data['prompt'] ?? data['questionText'] ?? 'Question missing...',
      options: List<String>.from(data['options'] ?? []),
    );
  }
}

// Function to fetch questions from Firestore
Future<List<Question>> getQuestionsFromFirestore() async {
  try {
    print("Fetching questions...");
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection(
            'CreationQuizQuestions') // Check if this matches your Firebase collection name exactly
        .get();

    if (snapshot.docs.isEmpty) {
      print("No documents found in Firestore!");
      return [];
    }

    return snapshot.docs.map((doc) {
      return Question.fromFirestore(doc.data() as Map<String, dynamic>);
    }).toList();
  } catch (e) {
    print("❌ Error fetching questions: $e");
    return [];
  }
}

// Keep this empty or remove it since we are using real data now
final List<Question> sampleQuestions = [];
