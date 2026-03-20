/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart';

class ResultPage extends StatelessWidget {
  final int resultIndex; // index from quiz page

  const ResultPage({super.key, required this.resultIndex});

  // Personality data class
  static const List<Map<String, dynamic>> personalities = [
    {
      "name": "THE MUSICAL SOUL",
      "asset": "assets/musical_soul.png",
      /* "icon": Icons.music_note,*/
      "description": "Driven by rhythm, melody, and musical expression...",
    },
    {
      "name": "THE IMMERSIVE SOUL",
      "asset": "assets/immersive_soul.png",
      /*"icon": Icons.theater_comedy,*/
      "description": "Loves deep experiences and getting fully immersed...",
    },
    {
      "name": "THE MEDITATIVE SOUL",
      "asset": "assets/meditative_soul.png",
      /*"icon": Icons.self_improvement,*/
      "description": "Calm, reflective, and spiritually attuned...",
    },
    {
      "name": "THE PAMPERED SOUL",
      "asset": "assets/pampered_soul.png",
      /*"icon": Icons.spa,*/
      "description":
          "Alignment through pleasure, beauty, and gentle indulgence...",
    },
    {
      "name": "THE IGNITED SOUL",
      "asset": "assets/ignited_soul.png",
      /*"icon": Icons.flash_on,*/
      "description": "Energetic, passionate, and always on fire...",
    },
    {
      "name": "THE ARTIST SOUL",
      "asset": "assets/artist_soul.png",
      /*"icon": Icons.brush,*/
      "description": "Creative, imaginative, and visually expressive...",
    },
    {
      "name": "THE VISUALIZER SOUL",
      "asset": "assets/visualizer_soul.png",
      /*"icon": Icons.visibility,*/
      "description": "Sees patterns, details, and visual harmony everywhere...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final personality = personalities[resultIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Premium",
            style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        flexibleSpace: Center(
            child: Container(constraints: const BoxConstraints(maxWidth: 600))),
      ),
      body: ResponsiveContainer(
        isDark: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),

              // Personality Name
              Text(personality['name'],
                  style: GoogleFonts.montserrat(
                      fontSize: 26, color: const Color(0xFF333333))),
              const SizedBox(height: 20),

              // Personality Image
              Image.asset(
                personality['asset'],
                height: 360,
              ),
              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                    "Top restaurant results for your area. Click below to view restaurants.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ),

              ElevatedButton(
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2D3E50),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
                child: const Text("Return to Dashboard",
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets.dart';

class ResultPage extends StatelessWidget {
  final int resultIndex;

  const ResultPage({super.key, required this.resultIndex});

  static const List<Map<String, dynamic>> personalities = [
    {
      "name": "THE MUSICAL SOUL™",
      "asset": "assets/musical_soul.png",
      "description": """
You manifest through sound, rhythm, and frequency.

You are deeply attuned to the power of sound—music, voice, chanting, or even silence. Your energy responds to tones and frequencies that awaken dormant ideas and elevate your emotions.

Core Attributes:
• Emotionally sensitive
• Expressive
• Spiritually attuned
• Sonic memory recall
• Energized by music or sound baths

Your Manifesting Superpowers:
• You align quickly through sound healing, singing, chanting, or curated playlists.
• You can shift your emotional state rapidly with music and spoken affirmations.
• Your voice has power—when you speak or sing your dreams, they magnetize.

Your Key Actions:
• Start your day with intentional music that evokes the emotion of what you want to feel.
• Record affirmations in your voice and listen often.
• Use music to visualize or activate specific dreams.

Your Mindset to Adopt:
"My voice is a vibration of power. What I feel, I can attract."

Common Block:
• Doubting that something as simple as music can shift reality.
• Overstimulating your nervous system with noise instead of intentional sound.

Your Mantra:
“When I tune in, I tune UP.”

Your Activation:
✨ Want to go deeper? Book a 1:1 Soul Session or join The Aphrodite Code™.
"""
    },
    {
      "name": "THE IMMERSIVE SOUL™",
      "asset": "assets/immersive_soul.png",
      "description": """
You manifest best when your external environment matches your internal desire.
 Beauty, place, and experience matter. You need sensory, physical immersion to ignite your next-level life.

Core Attributes:
• Sensory driven
• Loves travel and ambiance
• Deeply emotional
• Inspired by nature, culture, and movement
• Needs change of environment to reawaken energy

Your Manifesting Superpowers:
• Being in the “right place” reactivates clarity and purpose.
• You are most alive in elevated surroundings.
• Travel, luxury, beauty, or nature refuels your magnetism.

Your Key Actions:
• Go on a mini getaway to spark a new vision.
• Curate your environment with scents, textures, and sounds that match your next level.
• Work from a beautiful café, co-working space, or hotel to elevate frequency.

Your Mindset to Adopt:
 "Where I am shapes who I become."

Common Block:
• Feeling stuck or uninspired in mundane environments.
• Waiting too long to change scenery, leading to stagnation.

Your Mantra:
 “I shift my space, I shift my fate.”

Your Activation:
 ✨ Craving an immersive reset? Join The Aphrodite Code™ and elevate your environment to match your manifestations.

"""
    },
    {
      "name": "THE MEDITATIVE SOUL™",
      "asset": "assets/meditative_soul.png",
      "description": """
You manifest through stillness, inner vision, and spiritual alignment.
 You are most powerful when you quiet the noise and connect with your higher self.

Core Attributes:
• Introspective
• Highly intuitive
• Emotionally aware
• Grounded when alone
• Needs space to feel divine guidance

Your Manifesting Superpowers:
• You receive clear downloads in meditation or solitude.
• Your imagination is a divine projector.
• Stillness strengthens your emotional authority.

Your Key Actions:
• Practice daily breathwork or meditation (even 5 mins).
• Create silent space before making big decisions.
• Journal your dreams and visions immediately upon waking.

Your Mindset to Adopt:
 "Stillness is where I meet the divine version of me."

Common Block:
• Over-isolating and procrastinating action steps.
• Not sharing your ideas, keeping them hidden.

Your Mantra:
 “Silence reveals my soul’s next step.”

Your Activation:
 ✨ Ready to harness your spiritual rhythm? Deepen your practice in The Aphrodite Code™.

"""
    },
    {
      "name": "THE PAMPERED SOUL™",
      "asset": "assets/pampered_soul.png",
      "description": """
You manifest through self-love, beauty, and pleasure.
When you feel luxurious, cared for, and radiant, you naturally attract your desires.

Core Attributes:
• Drawn to ritual and elegance
• Magnetic and feminine
• Attracts through pleasure, not pressure
• Energetically sensitive
• Uplifted by indulgence and care

Your Manifesting Superpowers:
• You manifest more when you feel nourished and adored.
• Beauty, skincare, and ritual raise your vibration.
• You attract abundance through delight and ease.

Your Key Actions:
• Curate a daily self-love ritual (baths, oils, massages).
• Dress like your higher self—even at home.
• Create beauty in your schedule, meals, and workspace.

Your Mindset to Adopt:
 "The more I receive, the more I magnetize."

Common Block:
• Guilt around rest or pleasure.
• Overgiving to others while neglecting self.

Your Mantra:
 “My pleasure is my power.”

Your Activation:
 ✨ You don’t have to hustle. Learn how to receive in The Aphrodite Code™.

"""
    },
    {
      "name": "THE IGNITED SOUL™",
      "asset": "assets/ignited_soul.png",
      "description": """
You manifest through inspiration, connection, and human story.
You need to feel emotionally moved and mentally activated through others' journeys.

Core Attributes:
• Passionate and curious
• Fueled by community and ideas
• Emotional transmuter
• Vision expands through story and exposure
• High emotional resonance

Your Manifesting Superpowers:
• Hearing the right story at the right time unlocks your potential.
• You are energized through honest, soulful conversation.
• You see yourself more clearly through the lens of others.

Your Key Actions:
• Attend live events, talks, or intimate gatherings.
• Surround yourself with high-vibration friends and mentors.
• Journal what you feel when inspired—then act on it.

Your Mindset to Adopt:
 "Connection creates ignition."

Common Block:
• Waiting for external validation instead of activating your own inner fire.
• Overidentifying with other people's journeys.

Your Mantra:
 “When I witness greatness, I remember my own.”

Your Activation:
 ✨ Want to be lit from within? Join The Aphrodite Code™ and surround yourself with soul-expanding voices.

"""
    },
    {
      "name": "THE ARTIST SOUL™",
      "asset": "assets/artist_soul.png",
      "description": """
You manifest through hands-on creation, beauty, and emotional expression.
Your creative energy is a channel for divine inspiration and manifestation.

Core Attributes:
• Visually imaginative
• Expresses through art, writing, or design
• Processes emotions through creation
• Needs tactile, sensory engagement
• Finds joy in making things beautiful

Your Manifesting Superpowers:
• You activate your next level through creation.
• Journaling, painting, cooking, or crafting opens your intuitive channel.
• Your creations are portals of transformation.

Your Key Actions:
• Engage in a creative hobby weekly—without pressure.
• Start a “dream journal” or visual diary.
• Use your hands to bring emotions into form (clay, food, drawing, etc.)

Your Mindset to Adopt:
 "When I create, I become."

Common Block:
• Perfectionism or fear of not being “good enough.”
• Comparing your work to others.

Your Mantra:
 “My creation is my invocation.”

Your Activation:
 ✨ Let your creativity call your future into form. Join The Aphrodite Code™.

"""
    },
    {
      "name": "THE VISUALIZER SOUL™",
      "asset": "assets/visualizer_soul.png",
      "description": """
You manifest through vivid inner vision and detailed imagination.
You can see what others cannot. Your mind’s eye is your magic wand.

Core Attributes:
• Highly imaginative
• Future-focused
• Visionary thinker
• Often receives “downloads” as visuals or symbols
• Visual memory or dream recall

Your Manifesting Superpowers:
• You see your goals clearly before they manifest.
• Vision boards and mental rehearsal amplify results.
• You are wired to dream BIG.

Your Key Actions:
• Create a moodboard or visualization map.
• Practice scripting your dream life in vivid detail.
• Use guided imagery to rehearse desired outcomes.

Your Mindset to Adopt:
 "If I can see it, I can summon it."

Common Block:
• Getting stuck in vision without action.
• Feeling frustrated when reality doesn’t match your ideal (yet).

Your Mantra:
 “My vision is my superpower.”

Your Activation:
 ✨ Ready to turn vision into reality? Step into The Aphrodite Code™ to bridge imagination with action.


"""
    },
  ];

  @override
  Widget build(BuildContext context) {
    final personality = personalities[resultIndex];

    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveContainer(
        isDark: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Text(
                personality["name"],
                textAlign: TextAlign.center,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 25),
              Image.asset(
                personality["asset"],
                height: 340,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  padding: const EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    personality["description"],
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Return to Dashboard",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
