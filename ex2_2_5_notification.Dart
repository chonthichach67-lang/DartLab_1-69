import 'dart:async';
void main() {

  StreamController<String> controller = StreamController<String>();


  controller.stream.listen(
    (Noti) => print("แจ้งเตือน : $Noti"),
    onDone: () => print("สตรีมสิ้นสุดเเล้ว"),
  );

  controller.add("มีข้อความใหม่");
  controller.add("มีข้อความที่ยังไม่ได้อ่าน");
  controller.add("มีข้อความสแปม");

  controller.close();
}