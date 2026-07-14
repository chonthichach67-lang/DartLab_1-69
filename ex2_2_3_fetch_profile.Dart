Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception('ID ไม่ถูกต้อง');
  }
  return {
    'id': userId,
    'name': 'ชลธิชา',
    'age': 22,
  };
}
void main() async {
  print('เริ่มการทดสอบระบบ');

  print('ID : 5 ');
  try {
    Map<String, dynamic> profile = await fetchProfile(5);
    print('ชื่อของคุณคือ : ${profile['name']}');
  } catch (error) {
    print('ข้อมูลไม่ถูกต้อง : $error');
  } finally {
    print('เสร็จสิ้น');
    print(' ');
  }
  print('ID : 0');
  try {
    Map<String, dynamic> profile = await fetchProfile(0);
    print('ชื่อของคุณคือ : ${profile['name']}');
  } catch (error) {
    print('ข้อมูลไม่ถูกต้อง : $error');
  } finally {
    print('เสร็จสิ้น');
  }
}