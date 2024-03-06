// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// Define your CategoryDetail class
class CategoryDetail {
  final String category;

  CategoryDetail({required this.category});

  get textColor => null;
}

// Define your categoryDetailList
final List<CategoryDetail> categoryDetailList = [
  CategoryDetail(category: 'kalenjin'),
  CategoryDetail(category: 'kikuyu'),
  CategoryDetail(category: 'meru'),
  // Add more categories as needed
];

class QuizDataRepository {
  final String category;
  final String difficulty;

  QuizDataRepository({required this.category, required this.difficulty});

  Future<List<Map<String, dynamic>>> getData() async {
    try {
      // Simulate fetching data locally based on category and difficulty
      List<Map<String, dynamic>> data = mockQuizData[category]![difficulty]!;
      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

// Mock data structure
final Map<String, Map<String, List<Map<String, dynamic>>>> mockQuizData = {
  'kikuyu': {
   'easy': [
        {
            'question': 'How do you say "hello" in Kikuyu?',
            'correct_answer': 'waweru',
            'answers': ['murango', 'nyaga', 'waweru', 'karibu']
        },
        {
            'question': 'In Kikuyu, what is the word for "mother"?',
            'correct_answer': 'maitu',
            'answers': ['muthuri', 'gikeno', 'maitu', 'mucii']
        },
        {
            'question': 'What is the traditional Kikuyu term for God or the Supreme Being?',
            'correct_answer': 'Ngai',
            'answers': ['Mwene Nyaga', 'Mumbi', 'Ngai', 'Wangai']
        },
        {
            'question': 'How do you say "water" in Kikuyu?',
            'correct_answer': 'mai',
            'answers': ['nyeri', 'iri', 'mai', 'gwaka']
        },
        {
            'question': 'What is the common Kikuyu greeting for "good morning"?',
            'correct_answer': 'wega',
            'answers': ['murata', 'wega', 'mwega', 'mugwe']
        },
        {
            'question': 'In Kikuyu, what is the term for "father"?',
            'correct_answer': 'baba',
            'answers': ['papa', 'muciimi', 'baba', 'athuri']
        },
        {
            'question': 'Identify the Kikuyu traditional dance among the options:',
            'correct_answer': 'mugithi',
            'answers': ['tangatanga', 'kigoco', 'mugithi', 'igiza']
        },
        {
            'question': 'Translate "tree" into Kikuyu:',
            'correct_answer': 'mugumo',
            'answers': ['muhoti', 'mucii', 'mugumo', 'mwaki']
        },
        {
            'question': 'In Kikuyu folklore, who is considered the creator of humanity?',
            'correct_answer': 'Mumbi',
            'answers': ['Gikuyu', 'Mumbi', 'Wanjiru', 'Nyaga']
        },
        {
            'question': 'What is the traditional Kikuyu attire for women called?',
            'correct_answer': 'nguo ya mwiri',
            'answers': ['ruracio', 'nyama choma', 'nguo ya mwiri', 'mugunda']
        }
    ],
    'medium': [
        {
            'question': 'What is the Kikuyu term for traditional medicine or herbal healing?',
            'correct_answer': 'mugunda wa mbari',
            'answers': ['mugunda wa mbari', 'muthi', 'mucii wa kahiu', 'wendo wa kahiu']
        },
        {
            'question': 'What does "nyamu" mean in Kikuyu culture?',
            'correct_answer': 'traditional proverbs',
            'answers': ['traditional songs', 'traditional proverbs', 'cultural dance', 'ancestral spirits']
        },
        {
            'question': 'Which river holds cultural significance in Kikuyu mythology?',
            'correct_answer': 'Thika',
            'answers': ['Sagana', 'Tana', 'Thika', 'Chania']
        },
        {
            'question': 'What does the term "mucamo" refer to in Kikuyu culture?',
            'correct_answer': 'circumcision ceremony',
            'answers': ['initiation dance', 'circumcision ceremony', 'harvest festival', 'wedding celebration']
        },
        {
            'question': 'How is a traditional Kikuyu wedding ceremony celebrated?',
            'correct_answer': 'ruracio',
            'answers': ['kihii', 'ruracio', 'ngurario', 'wendo']
        },
        {
            'question': 'What role does "nyotu" play in Kikuyu society?',
            'correct_answer': 'community storyteller',
            'answers': ['traditional healer', 'community storyteller', 'ritual dancer', 'elders\' advisor']
        },
        {
            'question': 'Translate "rain" into Kikuyu:',
            'correct_answer': 'mataara',
            'answers': ['mwaki', 'mucii', 'mataara', 'rurimi']
        },
        {
            'question': 'Which animal is considered sacred in Kikuyu mythology?',
            'correct_answer': 'mumbura',
            'answers': ['nyamu', 'ngombe', 'mumbura', 'ngarara']
        },
        {
            'question': 'What is the traditional Kikuyu method of storytelling called?',
            'correct_answer': 'muthumbi',
            'answers': ['wendo', 'ruracio', 'muthumbi', 'nyamu']
        },
        {
            'question': 'What does "mwiri wa ciana" signify in Kikuyu culture?',
            'correct_answer': 'family unity',
            'answers': ['prosperity', 'family unity', 'cultural identity', 'ancestral blessings']
        }
    ],
     'hard': [
        {
            'question': 'Who is the legendary Kikuyu freedom fighter known for resisting British colonial rule?',
            'correct_answer': 'Dedan Kimathi',
            'answers': ['Jomo Kenyatta', 'Waiyaki wa Hinga', 'Wangari Maathai', 'Dedan Kimathi']
        },
        {
            'question': 'What is the significance of "ngoma cia ngariama" in Kikuyu spirituality?',
            'correct_answer': 'rainmaking dance',
            'answers': ['marriage ceremony', 'warrior initiation', 'rainmaking dance', 'ancestral worship']
        },
        {
            'question': 'Who is considered the "father of Kikuyu music"?',
            'correct_answer': 'Joseph Kamaru',
            'answers': ['Kariuki wa Kiarutara', 'Mary Wambui', 'Paul Njoroge', 'Joseph Kamaru']
        },
        {
            'question': 'Interpret the Kikuyu proverb: "Nyaga ni kurira njamba"',
            'correct_answer': 'leadership comes with responsibility',
            'answers': ['unity is strength', 'perseverance pays off', 'leadership comes with responsibility', 'wisdom is wealth']
        },
        {
            'question': 'Which mountain is sacred in Kikuyu cosmology?',
            'correct_answer': 'Mount Kenya',
            'answers': ['Mount Elgon', 'Aberdare Range', 'Mount Kenya', 'Mount Kilimanjaro']
        },
        {
            'question': 'What belief surrounds the "muugi" (spiritual leader) in Kikuyu culture?',
            'correct_answer': 'communicates with ancestors',
            'answers': ['born with divine powers', 'chosen by elders', 'communicates with ancestors', 'possesses healing abilities']
        },
        {
            'question': 'Name the traditional Kikuyu instrument played during celebrations.',
            'correct_answer': 'nyatiti',
            'answers': ['kameme', 'kiru', 'nyatiti', 'mwomboko']
        },
        {
            'question': 'Define the Kikuyu concept of "wairimu."',
            'correct_answer': 'good character and virtue',
            'answers': ['sacred land', 'eternal life', 'good character and virtue', 'spiritual growth']
        },
        {
            'question': 'Who is the renowned Kikuyu artist known for his paintings depicting Kikuyu culture and history?',
            'correct_answer': 'Elijah Kamau',
            'answers': ['John Thiongo', 'Wanyiri Kihoro', 'Lois Mailou Jones', 'Elijah Kamau']
        },
        {
            'question': 'What is the traditional Kikuyu dance performed during harvest celebrations?',
            'correct_answer': 'kirimu',
            'answers': ['gathu', 'njamba', 'kirimu', 'ngariama']
        }
     ],
  },
  
  'kalenjin': {
    'easy': [
      {
            'question': 'What is "hello" in Kalenjin?',
            'correct_answer': 'chamgei',
            'answers': ['mutyo', 'watindata', 'sasa', 'chamgei']
        },
        {
            'question': 'In Kalenjin, a mother is referred to as "iyoo." What about a father?',
            'correct_answer': 'pamongo',
            'answers': ['pops', 'papa', 'pamongo', 'muthamaki']
        },
        {
            'question': 'What is the Kalenjin term for the creator of all beings?',
            'correct_answer': 'Cheptailel',
            'answers': ['Mungu', 'Nyasaye', 'Cheptailel', 'Ngai']
        },
        {
            'question': 'How do you say "sky" in Kalenjin?',
            'correct_answer': 'kokwet',
            'answers': ['silalek', 'kipsang', 'nono', 'kokwet']
        },
        {
            'question': 'What is the traditional Kalenjin farewell greeting?',
            'correct_answer': 'kosgei',
            'answers': ['koitalel', 'chamgei', 'saitoti', 'kosgei']
        },
        {
            'question': 'Which term in Kalenjin refers to a father?',
            'correct_answer': 'pamongo',
            'answers': ['pops', 'papa', 'pamongo', 'muthamaki']
        },
        {
            'question': 'Identify the Kalenjin traditional dance among the options:',
            'correct_answer': 'kapchonge',
            'answers': ['bororiet', 'kipkenda', 'kimasai', 'kapchonge']
        },
        {
            'question': 'Translate "mountain" into Kalenjin:',
            'correct_answer': 'tororot',
            'answers': ['barng\'etuny', 'kaptilil', 'chepkorio', 'tororot']
        },
        {
            'question': 'In Kalenjin folklore, who is known as the "first man" or "ancestor"?',
            'correct_answer': 'Kipture',
            'answers': ['Kimnyole', 'Chebororwa', 'Kiptalam', 'Kipture']
        },
        {
            'question': 'What is the traditional attire worn by Kalenjin warriors called?',
            'correct_answer': 'kong\'asis',
            'answers': ['kiptarakwa', 'kalasot', 'sikirr', 'kong\'asis']
        }
    ],
    'medium': [
      {
            'question': 'What is the traditional Kalenjin way of greeting elders?',
            'correct_answer': 'koitalel',
            'answers': ['kosgei', 'kipande', 'kobonyo', 'koitalel']
        },
        {
            'question': 'What does "nyong\'onyong\'" signify in Kalenjin culture?',
            'correct_answer': 'warrior\'s chant',
            'answers': ['dance', 'sacred plant', 'warrior\'s chant', 'traditional instrument']
        },
        {
            'question': 'Which river holds cultural importance in Kalenjin mythology?',
            'correct_answer': 'Nzoia',
            'answers': ['Kerio', 'Soin', 'Nzoia', 'Sondu']
        },
        {
            'question': 'What does the term "bororiet" refer to in Kalenjin culture?',
            'correct_answer': 'dance',
            'answers': ['food', 'dance', 'traditional ceremony', 'mythical creature']
        },
        {
            'question': 'How is a traditional Kalenjin wedding ceremony celebrated?',
            'correct_answer': 'koriny',
            'answers': ['kaplek', 'kipketer', 'kalyet', 'koriny']
        },
        {
            'question': 'What role does "kamogi" play in Kalenjin society?',
            'correct_answer': 'elder\'s assistant',
            'answers': ['warrior training', 'storytelling', 'traditional medicine', 'elder\'s assistant']
        },
        {
            'question': 'Translate "rain" into Kalenjin:',
            'correct_answer': 'kimosop',
            'answers': ['kemboi', 'kiptalam', 'kimosop', 'kapsiror']
        },
        {
            'question': 'Which animal is considered sacred in Kalenjin mythology?',
            'correct_answer': 'cheborgei',
            'answers': ['chepkorio', 'kobo', 'tororot', 'cheborgei']
        },
        {
            'question': 'What is the traditional Kalenjin method of storytelling called?',
            'correct_answer': 'kemetet',
            'answers': ['kiptalam', 'kimsugut', 'kimarwei', 'kemetet']
        },
        {
            'question': 'What does "kipchumba" mean in Kalenjin?',
            'correct_answer': 'peaceful one',
            'answers': ['joyous celebration', 'one who laughs', 'brave warrior', 'peaceful one']
        }
    ],
    
'hard': [
     {
            'question': 'Name the legendary Kalenjin athlete who set a world record in the 3000 meters steeplechase at the 1972 Olympics.',
            'correct_answer': 'Kipchoge Keino',
            'answers': ['Henry Rono', 'Wilson Kiprugut', 'Amos Biwott', 'Kipchoge Keino']
        },
        {
            'question': 'What is the significance of "kimojoo" in Kalenjin spirituality?',
            'correct_answer': 'cleansing ceremony',
            'answers': ['sacred dance', 'ritual sacrifice', 'cleansing ceremony', 'ancestral worship']
        },
        {
            'question': 'Who is considered the "father of Kalenjin music"?',
            'correct_answer': 'Kipsigis Kipsang\'',
            'answers': ['Kimnyole', 'Kiprop arap Boit', 'Ole Tundo', 'Kipsigis Kipsang\'']
        },
        {
            'question': 'Interpret the Kalenjin proverb: "Chepkiiteng\'"',
            'correct_answer': 'the journey is as important as the destination',
            'answers': ['unity is strength', 'perseverance pays off', 'the journey is as important as the destination', 'wisdom is wealth']
        },
        {
            'question': 'Which mountain is sacred in Kalenjin cosmology?',
            'correct_answer': 'Mount Kapchorwa',
            'answers': ['Mount Elgon', 'Mount Kenya', 'Mount Kapchorwa', 'Mount Kilimanjaro']
        },
        {
            'question': 'What belief surrounds the "kapchepkendi" (spiritual leader) in Kalenjin culture?',
            'correct_answer': 'communicates with ancestors',
            'answers': ['born with divine powers', 'chosen by elders', 'communicates with ancestors', 'possesses healing abilities']
        },
        {
            'question': 'Name the traditional Kalenjin instrument played during celebrations.',
            'correct_answer': 'kipsigis',
            'answers': ['kiptalam', 'sipatia', 'kipande', 'kipsigis']
        },
        {
            'question': 'Define the Kalenjin concept of "rotich."',
            'correct_answer': 'harmonious existence',
            'answers': ['sacred land', 'eternal life', 'harmonious existence', 'spiritual growth']
        },
        {
            'question': 'Name the legendary Kalenjin warrior who resisted British colonial rule.',
            'correct_answer': 'Koitalel arap Samoei',
            'answers': ['Chemelil arap Tanui', 'Kipkemboi arap Kiprop', 'Cheserem arap Sang', 'Koitalel arap Samoei']
        },
        {
            'question': 'What is the traditional Kalenjin way of resolving disputes?',
            'correct_answer': 'kored',
            'answers': ['kaplelach', 'kobor', 'kored', 'kipatimo']
        }
    ],
  },
 'meru': {
       'easy': [
        {
            'question': 'How do you say "hello" in Meru?',
            'correct_answer': 'maitu',
            'answers': ['muretu', 'maitu', 'mucii', 'murango']
        },
        {
            'question': 'In Meru, what is the word for "mother"?',
            'correct_answer': 'mama',
            'answers': ['nkirote', 'mama', 'mukuru', 'miraa']
        },
        {
            'question': 'What is the traditional Meru term for God or the Supreme Being?',
            'correct_answer': 'Murungu',
            'answers': ['Nkunga', 'Mumbi', 'Murungu', 'Ntirandia']
        },
        {
            'question': 'How do you say "water" in Meru?',
            'correct_answer': 'miru',
            'answers': ['mweru', 'mucii', 'miru', 'mukaro']
        },
        {
            'question': 'What is the common Meru greeting for "good morning"?',
            'correct_answer': 'maitu naugwo',
            'answers': ['murata', 'maitu naugwo', 'mwega', 'mugwe']
        },
        {
            'question': 'In Meru, what is the term for "father"?',
            'correct_answer': 'baba',
            'answers': ['papa', 'muciimi', 'baba', 'athuri']
        },
        {
            'question': 'Identify the Meru traditional dance among the options:',
            'correct_answer': 'kiugo',
            'answers': ['kiugo', 'kigoco', 'kithiri', 'igiza']
        },
        {
            'question': 'Translate "tree" into Meru:',
            'correct_answer': 'miti',
            'answers': ['muri', 'mucii', 'miti', 'mwaki']
        },
        {
            'question': 'In Meru folklore, who is considered the creator of humanity?',
            'correct_answer': 'Murungu',
            'answers': ['Nkunga', 'Mumbi', 'Murungu', 'Ntirandia']
        },
        {
            'question': 'What is the traditional Meru attire for women called?',
            'correct_answer': 'ntongori',
            'answers': ['ruracio', 'mucii wa itara', 'ntongori', 'mugunda']
        }
    ],
        'medium': [
        {
            'question': 'What is the Meru term for traditional medicine or herbal healing?',
            'correct_answer': 'mugwe',
            'answers': ['mugwe', 'muthi', 'mucii wa kahiu', 'wendo wa kahiu']
        },
        {
            'question': 'What does "kithiri" mean in Meru culture?',
            'correct_answer': 'abundance',
            'answers': ['strength', 'abundance', 'unity', 'ancestral spirits']
        },
        {
            'question': 'Which river holds cultural significance in Meru mythology?',
            'correct_answer': 'Thuci',
            'answers': ['Ruguti', 'Tana', 'Thuci', 'Chania']
        },
        {
            'question': 'What does the term "mugweru" refer to in Meru culture?',
            'correct_answer': 'initiation ceremony',
            'answers': ['initiation dance', 'circumcision ceremony', 'harvest festival', 'initiation ceremony']
        },
        {
            'question': 'How is a traditional Meru wedding ceremony celebrated?',
            'correct_answer': 'ruracio',
            'answers': ['kihii', 'ruracio', 'ngurario', 'wendo']
        },
        {
            'question': 'What role does "muguruka" play in Meru society?',
            'correct_answer': 'ritual dancer',
            'answers': ['traditional healer', 'community storyteller', 'ritual dancer', 'elders\' advisor']
        },
        {
            'question': 'Translate "rain" into Meru:',
            'correct_answer': 'mucii',
            'answers': ['mucii', 'mwaki', 'mataara', 'rurimi']
        },
        {
            'question': 'Which animal is considered sacred in Meru mythology?',
            'correct_answer': 'mukima',
            'answers': ['mbura', 'ngombe', 'mukima', 'ngarara']
        },
        {
            'question': 'What is the traditional Meru method of storytelling called?',
            'correct_answer': 'kithiri',
            'answers': ['wendo', 'ruracio', 'kithiri', 'nyamu']
        },
        {
            'question': 'What does "mwiiri wa iria" signify in Meru culture?',
            'correct_answer': 'family unity',
            'answers': ['prosperity', 'family unity', 'cultural identity', 'ancestral blessings']
        }
    ],
     'hard': [
     {
    'question': 'Who is the legendary Meru leader known for advocating for cultural preservation and education during the colonial era?',
    'correct_answer': 'Japhet Nkanya Nkuba',
    'answers': ['Field Marshal Dedan Kimathi', 'Japhet Nkanya Nkuba', 'Wangari Maathai', 'Kithinji Kiragu']
    },

         {
            'question': 'What is the significance of "kiugo cia matiri" in Meru spirituality?',
            'correct_answer': 'rainmaking dance',
            'answers': ['marriage ceremony', 'warrior initiation', 'rainmaking dance', 'ancestral worship']
        },
        {
            'question': 'Who is considered the "father of Meru music"?',
            'correct_answer': 'John Ntongai Miriti',
            'answers': ['Kariuki wa Kiarutara', 'Mary Wambui', 'Paul Njoroge', 'John Ntongai Miriti']
        },
        {
            'question': 'Interpret the Meru proverb: "Mweru ni mbathi ciana cii"',
            'correct_answer': 'water is the source of life for the family',
            'answers': ['unity is strength', 'perseverance pays off', 'water is the source of life for the family', 'wisdom is wealth']
        },
        {
            'question': 'Which mountain is sacred in Meru cosmology?',
            'correct_answer': 'Mount Kenya',
            'answers': ['Mount Elgon', 'Aberdare Range', 'Mount Kenya', 'Mount Kilimanjaro']
        },
        {
            'question': 'What belief surrounds the "muugi" (spiritual leader) in Meru culture?',
            'correct_answer': 'communicates with ancestors',
            'answers': ['born with divine powers', 'chosen by elders', 'communicates with ancestors', 'possesses healing abilities']
        },
        {
            'question': 'Name the traditional Meru instrument played during celebrations.',
            'correct_answer': 'igurushwa',
            'answers': ['ngoma', 'kiru', 'igurushwa', 'mwomboko']
        },
        {
            'question': 'Define the Meru concept of "muriri."',
            'correct_answer': 'spiritual purity',
            'answers': ['sacred land', 'eternal life', 'spiritual purity', 'spiritual growth']
        },
        {
            'question': 'Who is the renowned Meru artist known for his paintings depicting Meru culture and history?',
            'correct_answer': 'Isaac Nderitu',
            'answers': ['John Thiong\'o', 'Wanyiri Kihoro', 'Lois Mailou Jones', 'Isaac Nderitu']
        },
        {
            'question': 'What is the traditional Meru dance performed during harvest celebrations?',
            'correct_answer': 'kirimu',
            'answers': ['gathu', 'njamba', 'kirimu', 'ngariama']
        }
    ]
}
};

class YourWidget extends StatelessWidget {
  final List<CategoryDetail> categoryDetailList;
  final int index;
  final String selectedDif;

  const YourWidget({super.key, 
    required this.categoryDetailList,
    required this.index,
    required this.selectedDif,
  });

  @override
  Widget build(BuildContext context) {
    final quizDataRepository = QuizDataRepository(
      category: categoryDetailList[index].category,
      difficulty: selectedDif,
    );

    Future<void> fetchData() async {
      try {
        final quizData = await quizDataRepository.getData();
        print(quizData);
      } catch (e) {
        print('Error fetching quiz data: $e');
      }
    }

    fetchData();

    // Continue building your widget...
    return Container(
      // Your widget implementation...
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: YourWidget(
          categoryDetailList: categoryDetailList,
          index: 0, // Specify the index based on your requirements
          selectedDif: 'easy', // Specify the difficulty level based on your requirements
        ),
      ),
    ),
  );
}
