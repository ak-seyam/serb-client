import 'dart:io' as io;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';

upload(String url, String filepath,
    {Map<String, String> textContent = const {"": ""}}) async {
  var request = http.MultipartRequest("POST", Uri.parse(url));
  request.files.add(
    http.MultipartFile('image', io.File(filepath).readAsBytes().asStream(),
        io.File(filepath).lengthSync(),
        filename: basename(filepath), contentType: MediaType("image", "png")),
  );
  request.fields.addAll(textContent);
  return await request.send().timeout(Duration(seconds: 2), onTimeout: () {
    throw "Time out";
  });
}
