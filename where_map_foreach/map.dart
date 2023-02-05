void main(List<String> args) {
  // use map to convert every grade with A , B , C , D , F
  Map<String, int> grades = {'Ahmed': 75, 'Youssef': 82, 'Sherif': 90};
  Map<String, String> gradesWithLetters = grades.map((key, value) {
    String letter = '';
    if (value >= 50 && value < 60) letter = 'F';
    if (value >= 60 && value < 70) letter = 'D';
    if (value >= 70 && value < 80) letter = 'C';
    if (value >= 80 && value < 90) letter = 'B';
    if (value >= 90 && value < 100) letter = 'A';
    return (MapEntry(key, letter));
  });
  // output should be {'Ahmed': 'C', 'Youssef': 'B', 'Sherif': 'A'}
  print(gradesWithLetters);
}
