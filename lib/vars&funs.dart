import 'dart:ui';

int quizNum=0;
List choosenAnswers = [];

Color barColor =const Color(0xff2b3e56);
Color bodyColor =const Color(0xff24283d);
Color fieldColor =const Color(0xdff5eeff);
Color orangeOne =const Color(0xffe88331);

var a = false;
String name = '';


List<Map<String, dynamic>> questionsss = [
  {
    'question': 'What is Flutter?',

    'answers': ['A programming language',
                'A mobile app development framework',
                'A database management system',
                'An operating system'],

    'correctAnswer': 'A mobile app development framework',
  },
  {
    'question': 'Which programming language is used for Flutter development?',
    
    'answers': ['Java', 'Swift', 'Python', 'Dart'],

    'correctAnswer': 'Dart',
  },
  {
    'question': 'What is the purpose of the Flutter Engine?',

    'answers': ['To compile Dart code to machine code',
                'To provide a library of pre-built widgets',
                'To manage the state of the application',
                'To handle HTTP requests'],

    'correctAnswer': 'To compile Dart code to machine code',
  },
  {
    'question': 'What is a widget in Flutter?',

    'answers': ['A visual element in the user interface',
                'A block of code that performs a specific task',
                'A method for handling user input',
                'A type of data structure'],

    'correctAnswer': 'A visual element in the user interface',
  },
  {
    'question': 'What is the purpose of the runApp() function in Flutter?',

    'answers': ['To define the layout of the user interface',
                'To manage the state of the application',
                'To handle user input',
                'To start the Flutter application'],

    'correctAnswer': 'To start the Flutter application',
  },
  {
    'question': 'Which widget is used to create a button in Flutter?',

    'answers': ['Text',
                'Image',
                'RaisedButton',
                'IconButton'],

    'correctAnswer': 'RaisedButton',
  },
  {
    'question': 'Which widget is used to create a text input field in Flutter?',

    'answers': ['TextField',
                'Text',
                'TextInput',
                'InputField'],

    'correctAnswer': 'TextField',
  },
  {
    'question': 'What is the purpose of the setState() method in Flutter?',

    'answers': ['To create a new widget',
                'To manage the state of the application',
                'To handle user input',
                'To define the layout of the user interface'],

    'correctAnswer': 'To manage the state of the application',
  },
  {
    'question': 'Which widget is used to display an image in Flutter?',

    'answers': ['ImageField',
                'ImageWidget',
                'Image',
                'ImageView'],

    'correctAnswer': 'Image',
  },
  {
    'question': 'What is the key configuration file used when building a Flutter project?',

    'answers': ['pubspec.yaml',
                'pubspec.xml',
                'config.html',
                'root.xml'],

    'correctAnswer': 'pubspec.yaml',
  },
];

// Return the correct answers from the above list in array
List getCorrectAnswers(){
  List li = [];
  for (var i = 0; i < questionsss.length; i++){
    li.add(questionsss[i]['correctAnswer']);
  }
  return li;
}


// Returns array of score, index of the wrong choosen answers
List calculateScore(correctAnswers){

  int score = 0;
  List worngChoosenAnswers = [];

  for (var i=0 ; i < correctAnswers.length; i++){
    if(correctAnswers[i] == choosenAnswers[i]){
      score++;
    } else{
      worngChoosenAnswers.add(i);
    }
  }
  return [score, worngChoosenAnswers];
}