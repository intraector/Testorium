import 'package:Testorium/core/models/user.dart';
import 'package:one_click/core/models/concern.dart';
import 'package:one_click/core/models/concerns_summary.dart';

class PersonsConverterWeb {
  static User mapToUser(Map map, {String url = ''}) {
    var files = (map['files'] as List)?.map((fileUrl) => fileUrl as String)?.toList();
    var publicAnswerFiles =
        (map['public_answer_files'] as List)?.map((fileUrl) => fileUrl as String)?.toList();
    var answers = (map['answers'] as List)?.map((answerMap) {
      return ConcernAnswer(
        id: answerMap['id'],
        text: answerMap['text'],
        timestamp: DateTime.tryParse(answerMap['timestamp']),
        username: answerMap['username'],
      );
    })?.toList();
    return Concern(
      id: map['id'],
      createTime: DateTime.tryParse(map['create_time']),
      title: map['title'],
      description: map['description'],
      answersCount: map['answers_count'],
      hitsCount: map['hits_count'],
      adminAnswer: map['admin_answer'],
      files: files,
      publicAnswerFiles: publicAnswerFiles,
      answers: answers,
    );
  }
}
