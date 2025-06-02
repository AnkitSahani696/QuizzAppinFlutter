import 'package:flutter/material.dart';
import 'models.dart';

final List<Category> quizCategories = [
  Category(
    id: 'science',
    name: 'Science',
    iconName: 'science',
    color: Colors.blue,
    questions: List.generate(50, (index) => scienceQuestions[index % scienceQuestions.length]),
  ),
  Category(
    id: 'history',
    name: 'History',
    iconName: 'history',
    color: Colors.amber,
    questions: List.generate(50, (index) => historyQuestions[index % historyQuestions.length]),
  ),
  Category(
    id: 'geography',
    name: 'Geography',
    iconName: 'public',
    color: Colors.green,
    questions: List.generate(50, (index) => geographyQuestions[index % geographyQuestions.length]),
  ),
  Category(
    id: 'literature',
    name: 'Literature',
    iconName: 'menu_book',
    color: Colors.purple,
    questions: List.generate(50, (index) => literatureQuestions[index % literatureQuestions.length]),
  ),
  Category(
    id: 'sports',
    name: 'Sports',
    iconName: 'sports_soccer',
    color: Colors.red,
    questions: List.generate(50, (index) => sportsQuestions[index % sportsQuestions.length]),
  ),
  Category(
    id: 'mathematics',
    name: 'Mathematics',
    iconName: 'calculate',
    color: Colors.orange,
    questions: List.generate(50, (index) => mathematicsQuestions[index % mathematicsQuestions.length]),
  ),
];

// Sample questions for Science
final List<Question> scienceQuestions = [
  Question(
    questionText: 'What is the chemical symbol for water?',
    options: ['H2O', 'CO2', 'NaCl', 'O2'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Which planet is known as the Red Planet?',
    options: ['Venus', 'Mars', 'Jupiter', 'Saturn'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the smallest unit of matter?',
    options: ['Atom', 'Cell', 'Molecule', 'Electron'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the hardest natural substance on Earth?',
    options: ['Gold', 'Iron', 'Diamond', 'Titanium'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Which of these is NOT a type of blood cell?',
    options: ['Red blood cell', 'White blood cell', 'Platelet', 'Nephron'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the speed of light in a vacuum?',
    options: ['300,000 km/s', '150,000 km/s', '299,792 km/s', '200,000 km/s'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Which of these is an example of a chemical change?',
    options: ['Freezing water', 'Dissolving sugar in water', 'Crushing a can', 'Burning paper'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the main function of the mitochondria in a cell?',
    options: ['Protein synthesis', 'Energy production', 'Cell division', 'Waste removal'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which gas do plants primarily absorb from the atmosphere?',
    options: ['Oxygen', 'Carbon dioxide', 'Nitrogen', 'Hydrogen'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the atomic number of Carbon?',
    options: ['4', '6', '8', '12'],
    correctAnswerIndex: 1,
  ),
];

// Sample questions for History
final List<Question> historyQuestions = [
  Question(
    questionText: 'In which year did World War II end?',
    options: ['1943', '1945', '1947', '1950'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Who was the first President of the United States?',
    options: ['Thomas Jefferson', 'John Adams', 'George Washington', 'James Madison'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Which ancient civilization built the pyramids of Giza?',
    options: ['Mayans', 'Romans', 'Greeks', 'Egyptians'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'The Renaissance period originated in which country?',
    options: ['France', 'Italy', 'England', 'Spain'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which year was the Declaration of Independence signed?',
    options: ['1776', '1778', '1782', '1789'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Who was the first female Prime Minister of the United Kingdom?',
    options: ['Queen Elizabeth II', 'Margaret Thatcher', 'Theresa May', 'Angela Merkel'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'The fall of the Berlin Wall occurred in which year?',
    options: ['1987', '1989', '1991', '1993'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which empire was ruled by Genghis Khan?',
    options: ['Ottoman Empire', 'Roman Empire', 'Mongol Empire', 'Byzantine Empire'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Who wrote "The Communist Manifesto"?',
    options: ['Vladimir Lenin', 'Joseph Stalin', 'Leon Trotsky', 'Karl Marx'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'In which year did Christopher Columbus first reach the Americas?',
    options: ['1492', '1498', '1512', '1534'],
    correctAnswerIndex: 0,
  ),
];

// Sample questions for Geography
final List<Question> geographyQuestions = [
  Question(
    questionText: 'What is the capital city of Australia?',
    options: ['Sydney', 'Melbourne', 'Canberra', 'Perth'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Which is the longest river in the world?',
    options: ['Amazon', 'Nile', 'Yangtze', 'Mississippi'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which country has the largest land area?',
    options: ['United States', 'China', 'Canada', 'Russia'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Mount Everest is located in which mountain range?',
    options: ['Andes', 'Rocky Mountains', 'Alps', 'Himalayas'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Which desert is the largest in the world?',
    options: ['Gobi', 'Sahara', 'Kalahari', 'Antarctic'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Which of these countries is NOT in Europe?',
    options: ['Portugal', 'Greece', 'Turkey', 'Egypt'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the smallest continent by land area?',
    options: ['Europe', 'Australia', 'Antarctica', 'South America'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which ocean is the largest?',
    options: ['Atlantic', 'Indian', 'Arctic', 'Pacific'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'The Great Barrier Reef is located off the coast of which country?',
    options: ['Brazil', 'Australia', 'Thailand', 'Mexico'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which of these is NOT one of the Great Lakes?',
    options: ['Ontario', 'Michigan', 'Superior', 'Winnipeg'],
    correctAnswerIndex: 3,
  ),
];

// Sample questions for Literature
final List<Question> literatureQuestions = [
  Question(
    questionText: 'Who wrote "Pride and Prejudice"?',
    options: ['Charlotte Brontë', 'Jane Austen', 'Emily Brontë', 'Virginia Woolf'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which character is the protagonist of "The Great Gatsby"?',
    options: ['Jay Gatsby', 'Nick Carraway', 'Tom Buchanan', 'Daisy Buchanan'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Who wrote the play "Romeo and Juliet"?',
    options: ['William Shakespeare', 'Arthur Miller', 'Oscar Wilde', 'Tennessee Williams'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Which novel begins with the line "Call me Ishmael"?',
    options: ['Moby Dick', 'The Old Man and the Sea', 'Treasure Island', 'The Great Gatsby'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Who wrote "1984"?',
    options: ['Aldous Huxley', 'Ray Bradbury', 'George Orwell', 'H.G. Wells'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Which of these is NOT a play by William Shakespeare?',
    options: ['Macbeth', 'Hamlet', 'Great Expectations', 'Othello'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Who wrote "To Kill a Mockingbird"?',
    options: ['John Steinbeck', 'Harper Lee', 'F. Scott Fitzgerald', 'Ernest Hemingway'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which author created the detective Sherlock Holmes?',
    options: ['Edgar Allan Poe', 'Agatha Christie', 'Arthur Conan Doyle', 'Raymond Chandler'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the name of the first book in J.K. Rowling\'s Harry Potter series?',
    options: [
      'Harry Potter and the Chamber of Secrets',
      'Harry Potter and the Philosopher\'s Stone',
      'Harry Potter and the Goblet of Fire',
      'Harry Potter and the Prisoner of Azkaban'
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Who wrote "The Odyssey"?',
    options: ['Sophocles', 'Virgil', 'Homer', 'Plato'],
    correctAnswerIndex: 2,
  ),
];

// Sample questions for Sports
final List<Question> sportsQuestions = [
  Question(
    questionText: 'In which sport would you perform a slam dunk?',
    options: ['Football', 'Basketball', 'Tennis', 'Golf'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'How many players are there in a standard soccer/football team on the field?',
    options: ['9', '10', '11', '12'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Which country won the FIFA World Cup in 2018?',
    options: ['Brazil', 'Germany', 'Argentina', 'France'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'In which sport is the term "love" used for a score of zero?',
    options: ['Golf', 'Tennis', 'Cricket', 'Badminton'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'How many rings are there in the Olympic symbol?',
    options: ['3', '4', '5', '6'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Which of these is NOT a swimming stroke used in Olympic competitions?',
    options: ['Freestyle', 'Butterfly', 'Backstroke', 'Doggy paddle'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'In which sport would you use a puck?',
    options: ['Baseball', 'Hockey', 'Rugby', 'Cricket'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Who holds the record for the most Grand Slam tennis titles in men\'s singles?',
    options: ['Rafael Nadal', 'Roger Federer', 'Novak Djokovic', 'Pete Sampras'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'How many points is a touchdown worth in American football?',
    options: ['3', '6', '7', '2'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which country invented table tennis?',
    options: ['China', 'United States', 'England', 'Japan'],
    correctAnswerIndex: 2,
  ),
];

// Mathematics questions
final List<Question> mathematicsQuestions = [
  Question(
    questionText: 'What is the value of π (pi) rounded to two decimal places?',
    options: ['3.14', '3.16', '3.12', '3.18'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the square root of 144?',
    options: ['12', '14', '10', '16'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'If x + y = 10 and x - y = 4, what is the value of x?',
    options: ['6', '7', '8', '5'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the next number in the sequence: 2, 4, 8, 16, ...?',
    options: ['24', '32', '30', '20'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the area of a circle with radius 5?',
    options: ['25π', '10π', '5π', '15π'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Which of these numbers is a prime number?',
    options: ['15', '21', '27', '29'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the sum of the angles in a triangle?',
    options: ['90°', '180°', '270°', '360°'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the result of 3² × 4²?',
    options: ['144', '49', '36', '25'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'If a = 3 and b = 4, what is the value of a² + b²?',
    options: ['25', '12', '7', '49'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the value of 5! (factorial)?',
    options: ['25', '120', '60', '720'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the slope of a line that passes through the points (2,3) and (4,7)?',
    options: ['2', '1', '3', '4'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'If the perimeter of a square is 20, what is its area?',
    options: ['25', '100', '16', '36'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the value of cos(0)?',
    options: ['0', '1', '-1', '0.5'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the sum of the first 10 positive integers?',
    options: ['45', '55', '50', '60'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which of these is NOT a type of triangle classification?',
    options: ['Isosceles', 'Scalene', 'Equilateral', 'Parallelogram'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the simplified form of (x² + 2x - 3) + (2x² - 3x + 1)?',
    options: ['3x² - x - 2', '3x² - x - 4', '3x² - 2', '3x² - x - 3'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the probability of rolling a 6 on a standard die?',
    options: ['1/6', '1/3', '2/6', '1/2'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'If a rectangle has length 8 and width 6, what is its area?',
    options: ['14', '24', '48', '56'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the value of log₁₀(100)?',
    options: ['10', '1', '2', '100'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the distance between the points (0,0) and (3,4)?',
    options: ['7', '3', '4', '5'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the mode of the numbers: 2, 3, 3, 4, 5, 5, 5, 6?',
    options: ['3', '4', '5', '6'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the value of sin(π/2)?',
    options: ['0', '1', '-1', '0.5'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the sum of interior angles in a hexagon?',
    options: ['540°', '720°', '900°', '1080°'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the reciprocal of 0.25?',
    options: ['1/4', '0.75', '4', '0.4'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'If y = 3x + 2, what is the value of y when x = 4?',
    options: ['10', '12', '14', '16'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the least common multiple (LCM) of 6 and 8?',
    options: ['12', '24', '48', '6'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the value of √(25 + 144)?',
    options: ['13', '11.5', '12', '15'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Which of these is NOT a perfect square?',
    options: ['1', '4', '9', '15'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the volume of a cube with side length 3?',
    options: ['9', '18', '27', '36'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'If a = 2 and b = 3, what is the value of (a + b)²?',
    options: ['5', '25', '13', '10'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the median of the numbers: 3, 7, 8, 5, 12?',
    options: ['3', '5', '7', '8'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the value of tan(45°)?',
    options: ['0', '1', '√2', '2'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the greatest common divisor (GCD) of 18 and 24?',
    options: ['4', '6', '8', '12'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Which inequality represents the solution x > 3?',
    options: ['(-∞, 3)', '(3, ∞)', '[3, ∞)', '(-∞, 3]'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the formula for the circumference of a circle?',
    options: ['πr²', '2πr', '2π', 'πd'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the derivative of x³?',
    options: ['3x²', '3x', '3', 'x²'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'In a right triangle, if one angle is 30°, what is another angle?',
    options: ['30°', '45°', '60°', '90°'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the value of 2³ × 2²?',
    options: ['32', '16', '64', '128'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the surface area of a cube with side length 4?',
    options: ['64', '96', '16', '24'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'If f(x) = x² + 2x + 1, what is f(2)?',
    options: ['5', '7', '9', '11'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'What is the integral of 2x?',
    options: ['x² + C', 'x² - C', 'x + C', '2 + C'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the value of cos(π)?',
    options: ['0', '1', '-1', '0.5'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'If the sides of a right triangle are 3, 4, and 5 units, what is its area?',
    options: ['6 square units', '10 square units', '7.5 square units', '12 square units'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'What is the solution to the equation 2x + 5 = 11?',
    options: ['x = 2', 'x = 3', 'x = 4', 'x = 6'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the standard form of a quadratic equation?',
    options: ['ax + b = 0', 'ax² + bx + c = 0', 'a/x + b = c', 'ax + by = c'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'What is the range of the function f(x) = |x|?',
    options: ['All real numbers', 'Non-negative real numbers', 'Negative real numbers', '[0, 1]'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'In a regular hexagon, what is the measure of each interior angle?',
    options: ['60°', '90°', '108°', '120°'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'What is the value of sin²(30°) + cos²(30°)?',
    options: ['0', '1', '0.5', '2'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'If log₂(x) = 3, what is the value of x?',
    options: ['6', '8', '9', '16'],
    correctAnswerIndex: 1,
  ),
];