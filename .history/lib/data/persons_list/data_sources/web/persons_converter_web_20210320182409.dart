import 'package:Testorium/core/models/user.dart';

class PersonsConverterWeb {
  static User mapToUser(Map map, {String url = ''}) {
    return User(
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
