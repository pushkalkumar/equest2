// quiz_data.dart

class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}

// Create a method to get 10 questions based on the selected subtopic
List<QuizQuestion> getQuizQuestions(String subtopic) {
  // Algebra Questions
  if (subtopic == 'Algebra') {
    return [
      QuizQuestion(
        question: "What is 2 + 2?",
        options: ['1', '2', '3', '4'],
        correctAnswer: '4',
      ),
      QuizQuestion(
        question: "What is x in the equation x + 2 = 5?",
        options: ['3', '2', '1', '4'],
        correctAnswer: '3',
      ),
      QuizQuestion(
        question: "What is the value of x in 2x - 4 = 10?",
        options: ['5', '7', '3', '6'],
        correctAnswer: '7',
      ),
      QuizQuestion(
        question: "Solve for x: 3x = 15",
        options: ['5', '3', '4', '6'],
        correctAnswer: '5',
      ),
      QuizQuestion(
        question: "What is the solution to x^2 - 9 = 0?",
        options: ['3', '-3', '3 and -3', 'None'],
        correctAnswer: '3 and -3',
      ),
      QuizQuestion(
        question: "Simplify: 3(2x + 4)",
        options: ['6x + 12', '6x + 4', '2x + 8', 'None'],
        correctAnswer: '6x + 12',
      ),
      QuizQuestion(
        question: "Solve for x: x/5 = 3",
        options: ['15', '10', '3', '5'],
        correctAnswer: '15',
      ),
      QuizQuestion(
        question: "Which of these is the slope of the line y = 2x + 5?",
        options: ['2', '5', '1', 'None'],
        correctAnswer: '2',
      ),
      QuizQuestion(
        question: "What is the value of the discriminant in the quadratic equation x^2 + 6x + 9 = 0?",
        options: ['9', '6', '36', '0'],
        correctAnswer: '36',
      ),
      QuizQuestion(
        question: "What is the solution to x^2 = 25?",
        options: ['5', '-5', '5 and -5', 'None'],
        correctAnswer: '5 and -5',
      ),
    ];
  }

  // Physics Questions
  if (subtopic == 'Physics') {
    return [
      QuizQuestion(
        question: "What is the unit of force?",
        options: ['Newton', 'Joule', 'Pascal', 'Ampere'],
        correctAnswer: 'Newton',
      ),
      QuizQuestion(
        question: "What is the formula for gravitational force?",
        options: ['F = ma', 'F = G(m1m2)/r^2', 'F = mv^2', 'F = 1/2mv^2'],
        correctAnswer: 'F = G(m1m2)/r^2',
      ),
      QuizQuestion(
        question: "What does the symbol 'g' represent in physics?",
        options: ['Gravitational acceleration', 'Giga', 'Gram', 'Gravitational force'],
        correctAnswer: 'Gravitational acceleration',
      ),
      QuizQuestion(
        question: "What is the unit of energy?",
        options: ['Joule', 'Newton', 'Watt', 'Ampere'],
        correctAnswer: 'Joule',
      ),
      QuizQuestion(
        question: "What is the law of conservation of energy?",
        options: ['Energy cannot be created or destroyed', 'Energy can be created', 'Energy is destroyed', 'Energy converts to matter'],
        correctAnswer: 'Energy cannot be created or destroyed',
      ),
      QuizQuestion(
        question: "What is the SI unit of electric charge?",
        options: ['Coulomb', 'Ampere', 'Volt', 'Ohm'],
        correctAnswer: 'Coulomb',
      ),
      QuizQuestion(
        question: "What is the formula for kinetic energy?",
        options: ['KE = 1/2mv^2', 'KE = mv', 'KE = 1/2m^2v', 'KE = mv^2'],
        correctAnswer: 'KE = 1/2mv^2',
      ),
      QuizQuestion(
        question: "What is the unit of power?",
        options: ['Watt', 'Joule', 'Newton', 'Ampere'],
        correctAnswer: 'Watt',
      ),
      QuizQuestion(
        question: "Which law explains the relationship between force, mass, and acceleration?",
        options: ['Newton’s second law', 'Newton’s first law', 'Law of conservation of energy', 'Hooke’s law'],
        correctAnswer: 'Newton’s second law',
      ),
      QuizQuestion(
        question: "What does 'v' represent in the equation F = ma?",
        options: ['Velocity', 'Volume', 'Vibration', 'Voltage'],
        correctAnswer: 'Velocity',
      ),
    ];
  }

  // Chemistry Questions
  if (subtopic == 'Chemistry') {
    return [
      QuizQuestion(
        question: "What is the chemical symbol for water?",
        options: ['H2O', 'O2', 'H2', 'CO2'],
        correctAnswer: 'H2O',
      ),
      QuizQuestion(
        question: "What is the atomic number of carbon?",
        options: ['6', '12', '8', '10'],
        correctAnswer: '6',
      ),
      QuizQuestion(
        question: "Which element is represented by the symbol Na?",
        options: ['Sodium', 'Nitrogen', 'Neon', 'Nickel'],
        correctAnswer: 'Sodium',
      ),
      QuizQuestion(
        question: "What is the most common gas in the Earth's atmosphere?",
        options: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'],
        correctAnswer: 'Nitrogen',
      ),
      QuizQuestion(
        question: "What is the pH value of water?",
        options: ['7', '0', '14', '1'],
        correctAnswer: '7',
      ),
      QuizQuestion(
        question: "What is the formula for methane?",
        options: ['CH4', 'CO2', 'H2O', 'C2H6'],
        correctAnswer: 'CH4',
      ),
      QuizQuestion(
        question: "Which of these is a noble gas?",
        options: ['Oxygen', 'Helium', 'Nitrogen', 'Carbon'],
        correctAnswer: 'Helium',
      ),
      QuizQuestion(
        question: "Which element is known as 'the lightest element'?",
        options: ['Helium', 'Hydrogen', 'Oxygen', 'Carbon'],
        correctAnswer: 'Hydrogen',
      ),
      QuizQuestion(
        question: "What is the common name for dihydrogen monoxide?",
        options: ['Water', 'Hydrogen Peroxide', 'Oxygen', 'Carbon Dioxide'],
        correctAnswer: 'Water',
      ),
      QuizQuestion(
        question: "Which of the following is an alkali metal?",
        options: ['Sodium', 'Calcium', 'Iron', 'Copper'],
        correctAnswer: 'Sodium',
      ),
    ];
  }

  // Biology Questions
  if (subtopic == 'Biology') {
    return [
      QuizQuestion(
        question: "What is the powerhouse of the cell?",
        options: ['Mitochondria', 'Nucleus', 'Ribosome', 'Chloroplast'],
        correctAnswer: 'Mitochondria',
      ),
      QuizQuestion(
        question: "What is the basic unit of life?",
        options: ['Cell', 'Atom', 'Organ', 'Tissue'],
        correctAnswer: 'Cell',
      ),
      QuizQuestion(
        question: "What is the process by which plants make their own food?",
        options: ['Respiration', 'Photosynthesis', 'Digestion', 'Reproduction'],
        correctAnswer: 'Photosynthesis',
      ),
      QuizQuestion(
        question: "Which of these is not a part of the human digestive system?",
        options: ['Heart', 'Stomach', 'Liver', 'Pancreas'],
        correctAnswer: 'Heart',
      ),
      QuizQuestion(
        question: "What is the main function of red blood cells?",
        options: ['Carry oxygen', 'Fight infection', 'Digest food', 'Regulate body temperature'],
        correctAnswer: 'Carry oxygen',
      ),
      QuizQuestion(
        question: "Which organ is responsible for pumping blood throughout the body?",
        options: ['Liver', 'Kidney', 'Heart', 'Lung'],
        correctAnswer: 'Heart',
      ),
      QuizQuestion(
        question: "What is the chemical that gives plants their green color?",
        options: ['Chlorophyll', 'Carotene', 'Melanin', 'Cellulose'],
        correctAnswer: 'Chlorophyll',
      ),
      QuizQuestion(
        question: "What is the most common blood type?",
        options: ['A', 'B', 'AB', 'O'],
        correctAnswer: 'O',
      ),
      QuizQuestion(
        question: "What is the study of heredity called?",
        options: ['Genetics', 'Ecology', 'Botany', 'Zoology'],
        correctAnswer: 'Genetics',
      ),
      QuizQuestion(
        question: "Which organ is primarily responsible for detoxifying harmful substances in the body?",
        options: ['Liver', 'Heart', 'Lung', 'Kidney'],
        correctAnswer: 'Liver',
      ),
    ];
  }if (subtopic == 'American History') {
  return [
    QuizQuestion(
      question: "Who was the first president of the United States?",
      options: ['Abraham Lincoln', 'George Washington', 'Thomas Jefferson', 'John Adams'],
      correctAnswer: 'George Washington',
    ),
    QuizQuestion(
      question: "What year did the United States gain independence?",
      options: ['1776', '1492', '1812', '1620'],
      correctAnswer: '1776',
    ),
    QuizQuestion(
      question: "Who wrote the Declaration of Independence?",
      options: ['Abraham Lincoln', 'Benjamin Franklin', 'Thomas Jefferson', 'George Washington'],
      correctAnswer: 'Thomas Jefferson',
    ),
    QuizQuestion(
      question: "What was the primary cause of the American Civil War?",
      options: ['Slavery', 'Taxation', 'Economic differences', 'Territorial expansion'],
      correctAnswer: 'Slavery',
    ),
    QuizQuestion(
      question: "What year did the United States join World War II?",
      options: ['1939', '1941', '1945', '1917'],
      correctAnswer: '1941',
    ),
    QuizQuestion(
      question: "Which president was impeached in 1868?",
      options: ['Andrew Johnson', 'Abraham Lincoln', 'Theodore Roosevelt', 'Richard Nixon'],
      correctAnswer: 'Andrew Johnson',
    ),
    QuizQuestion(
      question: "Who was the leader of the Confederate States during the Civil War?",
      options: ['Robert E. Lee', 'Jefferson Davis', 'Abraham Lincoln', 'Stonewall Jackson'],
      correctAnswer: 'Jefferson Davis',
    ),
    QuizQuestion(
      question: "Which U.S. president delivered the Gettysburg Address?",
      options: ['Abraham Lincoln', 'Thomas Jefferson', 'George Washington', 'Andrew Jackson'],
      correctAnswer: 'Abraham Lincoln',
    ),
    QuizQuestion(
      question: "Which event triggered the start of the American Revolution?",
      options: ['The Boston Tea Party', 'The signing of the Declaration of Independence', 'The Battle of Lexington and Concord', 'The Battle of Bunker Hill'],
      correctAnswer: 'The Battle of Lexington and Concord',
    ),
    QuizQuestion(
      question: "What was the main issue addressed in the Emancipation Proclamation?",
      options: ['Womens rights', 'Slavery', 'Land rights', 'States rights'],
      correctAnswer: 'Slavery',
    ),
  ];
}
if (subtopic == 'World History') {
  return [
    QuizQuestion(
      question: "What year did World War II end?",
      options: ['1939', '1945', '1918', '1963'],
      correctAnswer: '1945',
    ),
    QuizQuestion(
      question: "Which ancient civilization built the pyramids?",
      options: ['Greece', 'Rome', 'Egypt', 'Mesopotamia'],
      correctAnswer: 'Egypt',
    ),
    QuizQuestion(
      question: "What was the main cause of World War I?",
      options: ['The assassination of Archduke Franz Ferdinand', 'The attack on Pearl Harbor', 'The invasion of Poland', 'The signing of the Treaty of Versailles'],
      correctAnswer: 'The assassination of Archduke Franz Ferdinand',
    ),
    QuizQuestion(
      question: "Who was the leader of the Soviet Union during World War II?",
      options: ['Joseph Stalin', 'Vladimir Lenin', 'Mikhail Gorbachev', 'Leon Trotsky'],
      correctAnswer: 'Joseph Stalin',
    ),
    QuizQuestion(
      question: "What was the main outcome of the Treaty of Versailles?",
      options: ['End of World War I', 'Formation of the European Union', 'End of World War II', 'Partition of Germany'],
      correctAnswer: 'End of World War I',
    ),
    QuizQuestion(
      question: "What empire was led by Julius Caesar?",
      options: ['Roman Empire', 'Ottoman Empire', 'Mongol Empire', 'Persian Empire'],
      correctAnswer: 'Roman Empire',
    ),
    QuizQuestion(
      question: "Who was the leader of the Allied forces during D-Day?",
      options: ['Dwight D. Eisenhower', 'Winston Churchill', 'George Patton', 'Douglas MacArthur'],
      correctAnswer: 'Dwight D. Eisenhower',
    ),
    QuizQuestion(
      question: "What was the primary cause of the Cold War?",
      options: ['Ideological conflict between communism and capitalism', 'The defeat of Nazi Germany', 'The Korean War', 'The Cuban Missile Crisis'],
      correctAnswer: 'Ideological conflict between communism and capitalism',
    ),
    QuizQuestion(
      question: "Which country was formerly known as Persia?",
      options: ['Iraq', 'Iran', 'Turkey', 'Afghanistan'],
      correctAnswer: 'Iran',
    ),
    QuizQuestion(
      question: "What year did the Berlin Wall fall?",
      options: ['1989', '1991', '1961', '1945'],
      correctAnswer: '1989',
    ),
  ];
}
if (subtopic == 'Ancient Civilizations') {
  return [
    QuizQuestion(
      question: "Which civilization built the Great Wall of China?",
      options: ['Han Dynasty', 'Roman Empire', 'Ming Dynasty', 'Aztec Empire'],
      correctAnswer: 'Ming Dynasty',
    ),
    QuizQuestion(
      question: "Which ancient civilization developed the first written language?",
      options: ['Mesopotamia', 'Egypt', 'Greece', 'Rome'],
      correctAnswer: 'Mesopotamia',
    ),
    QuizQuestion(
      question: "Which civilization built Machu Picchu?",
      options: ['Aztecs', 'Inca', 'Maya', 'Olmec'],
      correctAnswer: 'Inca',
    ),
    QuizQuestion(
      question: "Where was the ancient city of Babylon located?",
      options: ['Egypt', 'Rome', 'Mesopotamia', 'China'],
      correctAnswer: 'Mesopotamia',
    ),
    QuizQuestion(
      question: "What was the main writing system of Ancient Egypt?",
      options: ['Cuneiform', 'Hieroglyphics', 'Alphabet', 'Pictograms'],
      correctAnswer: 'Hieroglyphics',
    ),
    QuizQuestion(
      question: "Which ancient civilization is known for the Hanging Gardens?",
      options: ['Babylonians', 'Assyrians', 'Romans', 'Persians'],
      correctAnswer: 'Babylonians',
    ),
    QuizQuestion(
      question: "Which ancient civilization had the first known democracy?",
      options: ['Athens', 'Rome', 'Sparta', 'Egypt'],
      correctAnswer: 'Athens',
    ),
    QuizQuestion(
      question: "What was the main economic activity of Ancient Egypt?",
      options: ['Agriculture', 'Mining', 'Trading', 'War'],
      correctAnswer: 'Agriculture',
    ),
    QuizQuestion(
      question: "Which of these is the name of the first written law code?",
      options: ['Code of Hammurabi', 'Ten Commandments', 'Magna Carta', 'Bill of Rights'],
      correctAnswer: 'Code of Hammurabi',
    ),
    QuizQuestion(
      question: "Which of the following was the center of the ancient Roman Empire?",
      options: ['Athens', 'Rome', 'Carthage', 'Alexandria'],
      correctAnswer: 'Rome',
    ),
  ];
}
if (subtopic == 'Modern History') {
  return [
    QuizQuestion(
      question: "Who was the leader of Nazi Germany during World War II?",
      options: ['Joseph Stalin', 'Winston Churchill', 'Adolf Hitler', 'Benito Mussolini'],
      correctAnswer: 'Adolf Hitler',
    ),
    QuizQuestion(
      question: "In what year did the United Nations form?",
      options: ['1945', '1939', '1918', '1963'],
      correctAnswer: '1945',
    ),
    QuizQuestion(
      question: "Which event triggered World War I?",
      options: ['The assassination of Archduke Franz Ferdinand', 'The invasion of Poland', 'The attack on Pearl Harbor', 'The signing of the Treaty of Versailles'],
      correctAnswer: 'The assassination of Archduke Franz Ferdinand',
    ),
    QuizQuestion(
      question: "Which war was fought between the Soviet Union and the United States during the Cold War?",
      options: ['Vietnam War', 'Korean War', 'Cuban Missile Crisis', 'Afghanistan War'],
      correctAnswer: 'Vietnam War',
    ),
    QuizQuestion(
      question: "What year did the Berlin Wall fall?",
      options: ['1989', '1991', '1961', '1945'],
      correctAnswer: '1989',
    ),
    QuizQuestion(
      question: "Who was the first African American president of the United States?",
      options: ['Barack Obama', 'George Washington', 'Bill Clinton', 'Abraham Lincoln'],
      correctAnswer: 'Barack Obama',
    ),
    QuizQuestion(
      question: "What event led to the U.S. entering World War I?",
      options: ['Zimmermann Telegram', 'The bombing of Pearl Harbor', 'The invasion of France', 'The attack on the Twin Towers'],
      correctAnswer: 'Zimmermann Telegram',
    ),
    QuizQuestion(
      question: "What is the most recent conflict involving U.S. forces?",
      options: ['Iraq War', 'Vietnam War', 'Afghan War', 'Persian Gulf War'],
      correctAnswer: 'Afghan War',
    ),
    QuizQuestion(
      question: "Who was the first woman to fly solo across the Atlantic Ocean?",
      options: ['Amelia Earhart', 'Eleanor Roosevelt', 'Harriet Tubman', 'Florence Nightingale'],
      correctAnswer: 'Amelia Earhart',
    ),
    QuizQuestion(
      question: "What year did the Soviet Union collapse?",
      options: ['1991', '1989', '1975', '1963'],
      correctAnswer: '1991',
    ),
  ];
}
if (subtopic == 'Literature') {
  return [
    QuizQuestion(
      question: "Who wrote 'Romeo and Juliet'?",
      options: ['Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Homer'],
      correctAnswer: 'William Shakespeare',
    ),
    QuizQuestion(
      question: "What is the title of the first Harry Potter book?",
      options: ['The Chamber of Secrets', 'The Sorcerer\'s Stone', 'The Prisoner of Azkaban', 'The Goblet of Fire'],
      correctAnswer: 'The Sorcerer\'s Stone',
    ),
    QuizQuestion(
      question: "Which novel is considered the masterpiece of Herman Melville?",
      options: ['Moby-Dick', 'The Great Gatsby', 'To Kill a Mockingbird', 'Pride and Prejudice'],
      correctAnswer: 'Moby-Dick',
    ),
    QuizQuestion(
      question: "Who is the protagonist in 'The Catcher in the Rye'?",
      options: ['Holden Caulfield', 'Jay Gatsby', 'Atticus Finch', 'Tom Buchanan'],
      correctAnswer: 'Holden Caulfield',
    ),
    QuizQuestion(
      question: "Which of these authors is known for dystopian literature?",
      options: ['George Orwell', 'F. Scott Fitzgerald', 'Ernest Hemingway', 'Mark Twain'],
      correctAnswer: 'George Orwell',
    ),
    QuizQuestion(
      question: "In which book would you find the character 'Atticus Finch'?",
      options: ['To Kill a Mockingbird', '1984', 'The Great Gatsby', 'The Odyssey'],
      correctAnswer: 'To Kill a Mockingbird',
    ),
    QuizQuestion(
      question: "Who wrote 'Pride and Prejudice'?",
      options: ['Emily Brontë', 'Charlotte Brontë', 'Jane Austen', 'Virginia Woolf'],
      correctAnswer: 'Jane Austen',
    ),
    QuizQuestion(
      question: "Which book features the character 'Hobbit'?",
      options: ['The Hobbit', 'The Lord of the Rings', 'Harry Potter', 'Narnia'],
      correctAnswer: 'The Hobbit',
    ),
    QuizQuestion(
      question: "What genre is 'Frankenstein' by Mary Shelley?",
      options: ['Science Fiction', 'Romantic Fiction', 'Horror', 'Fantasy'],
      correctAnswer: 'Horror',
    ),
    QuizQuestion(
      question: "In what book would you find 'Big Brother'?",
      options: ['Fahrenheit 451', 'Brave New World', '1984', 'The Hunger Games'],
      correctAnswer: '1984',
    ),
  ];
}
if (subtopic == 'Grammar') {
  return [
    QuizQuestion(
      question: "Which sentence is grammatically correct?",
      options: ['She dont like apples.', 'She doesnt like apples.', 'She no like apples.', 'She like no apples.'],
      correctAnswer: 'She doesn\'t like apples.',
    ),
    QuizQuestion(
      question: "Which of these is an example of a compound sentence?",
      options: ['I like apples and bananas.', 'I like apples but not bananas.', 'I like apples, they are sweet.', 'I like apples, and I like bananas.'],
      correctAnswer: 'I like apples, and I like bananas.',
    ),
    QuizQuestion(
      question: "Which word is a preposition in the sentence 'The book is on the table'?",
      options: ['book', 'on', 'table', 'is'],
      correctAnswer: 'on',
    ),
    QuizQuestion(
      question: "What is the past tense of 'go'?",
      options: ['goed', 'went', 'gone', 'going'],
      correctAnswer: 'went',
    ),
    QuizQuestion(
      question: "Which of the following is a question sentence?",
      options: ['She likes to read books.', 'Does she like to read books?', 'She is reading a book.', 'She reads books.'],
      correctAnswer: 'Does she like to read books?',
    ),
    QuizQuestion(
      question: "Which sentence uses a semicolon correctly?",
      options: ['I love cake; it\'s delicious.', 'I love cake: it\'s delicious.', 'I love cake; and it\'s delicious.', 'I love cake; it\'s so delicious'],
      correctAnswer: 'I love cake; it\'s delicious.',
    ),
    QuizQuestion(
      question: "What is the correct form of the verb in 'She ________ to the store.'?",
      options: ['going', 'gone', 'goes', 'go'],
      correctAnswer: 'goes',
    ),
    QuizQuestion(
      question: "Which of the following is an example of an adjective?",
      options: ['run', 'quickly', 'happy', 'in'],
      correctAnswer: 'happy',
    ),
    QuizQuestion(
      question: "Which of these sentences is written in the passive voice?",
      options: ['The teacher explained the lesson.', 'The lesson was explained by the teacher.', 'The teacher is explaining the lesson.', 'The teacher explains the lesson.'],
      correctAnswer: 'The lesson was explained by the teacher.',
    ),
    QuizQuestion(
      question: "Which word is the subject in 'The dog barked loudly.'?",
      options: ['dog', 'barked', 'loudly', 'the'],
      correctAnswer: 'dog',
    ),
  ];
}
if (subtopic == 'Writing and Composition') {
  return [
    QuizQuestion(
      question: "Which of the following is an example of a thesis statement?",
      options: ['The sky is blue.', 'The impact of social media on teenagers is profound.', 'I like summer.', 'The park is close to my house.'],
      correctAnswer: 'The impact of social media on teenagers is profound.',
    ),
    QuizQuestion(
      question: "What is the first step in the writing process?",
      options: ['Editing', 'Researching', 'Prewriting', 'Publishing'],
      correctAnswer: 'Prewriting',
    ),
    QuizQuestion(
      question: "Which of these is an example of a persuasive essay topic?",
      options: ['Why is the sky blue?', 'The benefits of exercise', 'The history of ancient Egypt', 'How to bake a cake'],
      correctAnswer: 'The benefits of exercise',
    ),
    QuizQuestion(
      question: "Which of these should be included in an introduction?",
      options: ['A topic sentence', 'Evidence', 'Conclusion', 'Summary of the topic'],
      correctAnswer: 'A topic sentence',
    ),
    QuizQuestion(
      question: "Which sentence best concludes an essay?",
      options: ['Therefore, my argument is valid.', 'In conclusion, I will summarize the key points.', 'I will now discuss the next topic.', 'Ultimately, I believe the argument stands.'],
      correctAnswer: 'Ultimately, I believe the argument stands.',
    ),
    QuizQuestion(
      question: "What is the purpose of a body paragraph in an essay?",
      options: ['To introduce the topic', 'To provide supporting details for the thesis', 'To summarize the essay', 'To restate the thesis'],
      correctAnswer: 'To provide supporting details for the thesis',
    ),
    QuizQuestion(
      question: "Which of these is an example of a conclusion?",
      options: ['In conclusion, this essay demonstrated the importance of education.', 'First, we explored the history of education.', 'The importance of education is significant.', 'We began by looking at the introduction of education.'],
      correctAnswer: 'In conclusion, this essay demonstrated the importance of education.',
    ),
    QuizQuestion(
      question: "What is a transition word used for?",
      options: ['To signal a change in topic', 'To start the essay', 'To conclude the essay', 'To explain evidence'],
      correctAnswer: 'To signal a change in topic',
    ),
    QuizQuestion(
      question: "What should be included in a good essay outline?",
      options: ['Introduction, body, conclusion', 'Introduction, discussion, summary', 'Body paragraphs, conclusion, title', 'Introduction, body, counterarguments'],
      correctAnswer: 'Introduction, body, conclusion',
    ),
    QuizQuestion(
      question: "What is the primary purpose of editing in the writing process?",
      options: ['To fix spelling and grammar mistakes', 'To rewrite the entire essay', 'To add new ideas', 'To gather evidence'],
      correctAnswer: 'To fix spelling and grammar mistakes',
    ),
  ];
}
if (subtopic == 'Rhetoric and Speech') {
  return [
    QuizQuestion(
      question: "What is the term for appealing to the emotions of the audience?",
      options: ['Ethos', 'Pathos', 'Logos', 'Kairos'],
      correctAnswer: 'Pathos',
    ),
    QuizQuestion(
      question: "Which rhetorical device is used when repeating the same word or phrase at the beginning of successive clauses?",
      options: ['Alliteration', 'Anaphora', 'Metaphor', 'Hyperbole'],
      correctAnswer: 'Anaphora',
    ),
    QuizQuestion(
      question: "What does 'ethos' refer to in rhetoric?",
      options: ['Emotional appeal', 'Credibility of the speaker', 'Logical reasoning', 'Cultural references'],
      correctAnswer: 'Credibility of the speaker',
    ),
    QuizQuestion(
      question: "Which of these is an example of logos in rhetoric?",
      options: ['Statistics and facts', 'Appealing to emotions', 'Ethical arguments', 'Repetition for emphasis'],
      correctAnswer: 'Statistics and facts',
    ),
    QuizQuestion(
      question: "Which is an example of using rhetoric to persuade an audience?",
      options: ['A politician giving a speech', 'A story in a book', 'A news report', 'A scientific journal article'],
      correctAnswer: 'A politician giving a speech',
    ),
    QuizQuestion(
      question: "What is the definition of a rhetorical question?",
      options: ['A question that doesn\'t require an answer', 'A question that needs to be answered', 'A question with multiple answers', 'A question that is irrelevant'],
      correctAnswer: 'A question that doesn\'t require an answer',
    ),
    QuizQuestion(
      question: "Which rhetorical device involves giving human characteristics to non-human things?",
      options: ['Personification', 'Metaphor', 'Simile', 'Hyperbole'],
      correctAnswer: 'Personification',
    ),
    QuizQuestion(
      question: "Which rhetorical device is an exaggeration used for emphasis?",
      options: ['Metaphor', 'Hyperbole', 'Irony', 'Oxymoron'],
      correctAnswer: 'Hyperbole',
    ),
    QuizQuestion(
      question: "What is the purpose of using a counterargument in a persuasive speech?",
      options: ['To show the weaknesses of the opposing side', 'To persuade the audience to agree with the speaker', 'To provide more evidence', 'To present both sides of the argument'],
      correctAnswer: 'To show the weaknesses of the opposing side',
    ),
    QuizQuestion(
      question: "What is the main goal of a persuasive speech?",
      options: ['To inform the audience', 'To entertain the audience', 'To convince the audience to take action', 'To tell a story'],
      correctAnswer: 'To convince the audience to take action',
    ),
  ];
}
if (subtopic == 'Calculus') {
  return [
    QuizQuestion(
      question: "What is the limit of (x^2 - 4)/(x - 2) as x approaches 2?",
      options: ['0', '4', '2', 'undefined'],
      correctAnswer: '4',
    ),
    QuizQuestion(
      question: "What is the derivative of f(x) = 3x^2 + 5x?",
      options: ['6x + 5', '6x', '5x + 3', '3x + 5'],
      correctAnswer: '6x + 5',
    ),
    QuizQuestion(
      question: "What is the integral of f(x) = x?",
      options: ['x^2', 'x^3', '1/2 x^2', 'x + C'],
      correctAnswer: '1/2 x^2',
    ),
    QuizQuestion(
      question: "What is the first derivative test used for?",
      options: ['To find the area under a curve', 'To find the slope of a curve', 'To find critical points', 'To calculate limits'],
      correctAnswer: 'To find critical points',
    ),
    QuizQuestion(
      question: "What is the integral of 2x?",
      options: ['x^2 + C', 'x + C', '2x + C', '4x + C'],
      correctAnswer: 'x^2 + C',
    ),
    QuizQuestion(
      question: "What is the derivative of sin(x)?",
      options: ['cos(x)', '-cos(x)', 'sin(x)', '-sin(x)'],
      correctAnswer: 'cos(x)',
    ),
    QuizQuestion(
      question: "What is the limit of sin(x)/x as x approaches 0?",
      options: ['1', '0', 'infinity', 'undefined'],
      correctAnswer: '1',
    ),
    QuizQuestion(question: "What is the product rule for derivatives?",
    options: [
      "(fg) = f'g + fg", 
      "(fg) = f + g", 
      "f' = g * f", 
      "(fg) = g + f"
    ],

    correctAnswer: "(fg) = f'g + fg",
    ),
    QuizQuestion(
      question: "What is the second derivative of f(x) = x^3?",
      options: ['6x', '3x^2', '6x^2', '3x'],
      correctAnswer: '6x',
    ),
    QuizQuestion(
      question: "What is the derivative of ln(x)?",
      options: ['1/x', 'x', 'ln(x)', 'x^2'],
      correctAnswer: '1/x',
    ),
  ];
}
if (subtopic == 'Statistics') {
  return [
    QuizQuestion(
      question: "What is the mean of the data set {2, 4, 6, 8, 10}?",
      options: ['6', '5', '7', '8'],
      correctAnswer: '6',
    ),
    QuizQuestion(
      question: "What is the median of the data set {1, 2, 3, 4, 5}?",
      options: ['3', '2', '5', '4'],
      correctAnswer: '3',
    ),
    QuizQuestion(
      question: "What does a p-value of 0.05 indicate in hypothesis testing?",
      options: ['Strong evidence against the null hypothesis', 'Weak evidence against the null hypothesis', 'No evidence against the null hypothesis', 'Strong evidence for the null hypothesis'],
      correctAnswer: 'Weak evidence against the null hypothesis',
    ),
    QuizQuestion(
      question: "Which of the following is an example of a continuous random variable?",
      options: ['The number of students in a class', 'The number of heads in a coin toss', 'The height of a person', 'The number of cars in a parking lot'],
      correctAnswer: 'The height of a person',
    ),
    QuizQuestion(
      question: "What is the standard deviation of the data set {1, 2, 3, 4, 5}?",
      options: ['1.41', '1.5', '1', '0'],
      correctAnswer: '1.41',
    ),
    QuizQuestion(
      question: "What does a correlation coefficient of 0 indicate?",
      options: ['Perfect positive correlation', 'No correlation', 'Perfect negative correlation', 'Weak correlation'],
      correctAnswer: 'No correlation',
    ),
    QuizQuestion(
      question: "What is the formula for calculating variance?",
      options: ['Sum of squares of differences divided by n', 'Sum of squared differences from the mean divided by n-1', 'Sum of differences from the mean', 'None of the above'],
      correctAnswer: 'Sum of squared differences from the mean divided by n-1',
    ),
    QuizQuestion(
      question: "In a normal distribution, what percentage of data falls within one standard deviation from the mean?",
      options: ['68%', '95%', '99%', '50%'],
      correctAnswer: '68%',
    ),
    QuizQuestion(
      question: "What is the purpose of regression analysis?",
      options: ['To find the mean of a data set', 'To test hypotheses', 'To predict the value of one variable based on another', 'To measure the correlation between two variables'],
      correctAnswer: 'To predict the value of one variable based on another',
    ),
    QuizQuestion(
      question: "In a hypothesis test, what is the null hypothesis?",
      options: ['The hypothesis that is being tested', 'The opposite of the alternative hypothesis', 'The hypothesis that is always true', 'None of the above'],
      correctAnswer: 'The hypothesis that is being tested',
    ),
  ];
}
if (subtopic == 'Geometry') {
  return [
    QuizQuestion(
      question: "What is the sum of the interior angles of a triangle?",
      options: ['90°', '180°', '270°', '360°'],
      correctAnswer: '180°',
    ),
    QuizQuestion(
      question: "If two lines are parallel, what is the measure of the alternate interior angles?",
      options: ['They are equal', 'They are supplementary', 'They are complementary', 'They are not related'],
      correctAnswer: 'They are equal',
    ),
    QuizQuestion(
      question: "What is the formula for the area of a circle?",
      options: ['πr^2', '2πr', 'πd^2', 'πr'],
      correctAnswer: 'πr^2',
    ),
    QuizQuestion(
      question: "What is the Pythagorean theorem?",
      options: ['a^2 + b^2 = c^2', 'a^2 + c^2 = b^2', 'a + b = c', 'None of the above'],
      correctAnswer: 'a^2 + b^2 = c^2',
    ),
    QuizQuestion(
      question: "What is the sum of the angles in a quadrilateral?",
      options: ['180°', '360°', '270°', '90°'],
      correctAnswer: '360°',
    ),
    QuizQuestion(
      question: "What is the perimeter of a rectangle with length 5 and width 3?",
      options: ['15', '16', '14', '12'],
      correctAnswer: '16',
    ),
    QuizQuestion(
      question: "In a right triangle, if one angle is 90° and the other is 30°, what is the measure of the third angle?",
      options: ['30°', '45°', '60°', '90°'],
      correctAnswer: '60°',
    ),
    QuizQuestion(
      question: "What is the area of a triangle with base 6 and height 8?",
      options: ['24', '48', '36', '12'],
      correctAnswer: '24',
    ),
    QuizQuestion(
      question: "What is the circumference of a circle with radius 7?",
      options: ['14π', '21π', '7π', '49π'],
      correctAnswer: '14π',
    ),
    QuizQuestion(
      question: "What is the relationship between the diameter and radius of a circle?",
      options: ['Diameter = 2 × Radius', 'Radius = 2 × Diameter', 'Diameter = Radius', 'None of the above'],
      correctAnswer: 'Diameter = 2 × Radius',
    ),
  ];
}


  // Return an empty list if no questions are found for the subtopic
  return [];
}
