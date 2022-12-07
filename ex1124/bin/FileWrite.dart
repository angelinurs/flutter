import 'dart:io';

bool writeFile(String file, String txt, FileMode mode) {
  bool value = true;

  try {
    //파일객체 생성
    File f = new File(file);

    //파일을 쓰기하기 위한 스트림 열기
    RandomAccessFile rf = f.openSync(mode: mode);

    //파일에 쓰기!!!!
    rf.writeStringSync(txt);

    //스트림 비우기
    rf.flushSync();

    //스트림 닫기
    rf.close();
  } catch (e) {
    print(e.toString());
    value = false;
  }

  return value;
}

String readFile(String file) {
  String value;
  try {
    File f = new File(file);
    value = f.readAsStringSync(); //파일에 있는 모든 내용을 읽어서 value에 저장!
  } catch (e) {
    print(e.toString());
    value = "";
  }
  return value;
}
