import 'dart:convert';

// NOTE: Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
// This string is JSON, not Dart.
testConvertJson() {
  var jsonString = '''
    [
      {"score": 40},
      {"score": 80}
    ]
  ''';

  var scores = jsonDecode(jsonString);
  assert(scores is List);

  print(scores);

  var firstScore = scores[0];
  assert(firstScore is Map);
  assert(firstScore['score'] == 40);

  print(firstScore);

  print(firstScore['score']);

  var scores2 = [
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest': null}
  ];

  var jsonText = jsonEncode(scores2);

  assert(jsonText ==
      '[{"score":40},{"score":80},'
          '{"score":100,"overtime":true,'
          '"special_guest":null}]');

  print(jsonText);
}
