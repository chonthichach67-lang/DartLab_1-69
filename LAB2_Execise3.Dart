void main() {
List<String> subjects = ['Thai', 'Social Studies', 'Math'];

  print('จำนวนวิชา: ${subjects.length}'); 
  print('วิชาแรก: ${subjects.first} | วิชาสุดท้าย: ${subjects.last}');

  subjects.add('English');
  print('วิชาทั้งหมด: $subjects\n');

  Map<String, int> studentScores = {
    'Thai': 45,
    'Math': 85,
  };

  print('คะแนนวิชา Math: ${studentScores['Math']}');

  studentScores['English'] = 72;
  studentScores['Social Studies'] = 55;
  print('คะแนนทั้งหมด: $studentScores\n');

  print('--- วิชาที่มีตัว a ---');
  for (var entry in studentScores.entries) {
    if (entry.key.toLowerCase().contains('a')) {
      print('${entry.key}: ${entry.value}');
    }
  }

  print('--- คะแนนมากกว่า 50 ---');
  for (var entry in studentScores.entries) {
    if (entry.value > 50) {
      print('${entry.key}: ${entry.value}');
    }
  }
}