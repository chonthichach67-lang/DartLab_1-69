void main() {
  String? middleName;
  String city = 'Num Pad';

  int middleNameLength = middleName?.length ?? 0;

  print('Middle name length : $middleNameLength');
  print('City length : ${city.length}');
  print('Middle name before assignment : $middleName');

  middleName ??= 'N/A';
  print("Middle name after assignment : $middleName");
}