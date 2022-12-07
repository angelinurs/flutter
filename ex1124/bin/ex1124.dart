import 'dart:convert';
import 'dart:io';
import 'package:image/image.dart';

import 'FileWrite.dart' as fw;

printPath(String path) {
  // Dart에서는 다른 언어와  마찬가지로 파일과 디렉토리 처리 뿐만 아니라
  // WebSocket, ServerSocket과 같은 네트워크 기능들도 IO에 속한다.
  Directory dir;
  if (path != null) {
    dir = new Directory(path); //디렉토리 객체 생성
    if (dir.existsSync()) {
      //생성된 디렉토리가 실제 존재하는지 확인!
      List sub_list = dir.listSync();
      /*
      sub_list.forEach((f) { 
        print(f.path);
      });
      */
      for (FileSystemEntity f in sub_list) {
        print(f.path);
      }
    }
  }
}

void main(List<String> arguments) {
  printPath("c:\\mytest");
  print("--------------- 파일 쓰기 연습 --------------------");
  String path = "/mytest/flutterTest/work/ioTest.txt";
  bool chk = fw.writeFile(path, "인크레파스\r\n", FileMode.append);
  //FileMode.write는 기존의 내용을 모두 삭제한 후 쓰기를 한다.
  //추가를 하려면 FileMode.append로 해야 함!
  if (chk) print("쓰기 성공!");
  print("--------------- 파일 읽기 연습 --------------------");
  String msg = fw.readFile(path);
  if (msg.trim().length > 0) print(msg);
}
