import 'package:one_click/core/models/concern.dart';
import 'package:one_click/core/models/concerns_summary.dart';

class Convert {
  static Concern mapToConcernEntity(Map map, {String url = ''}) {
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

  static ConcernsSummary mapToSummary(Map map, {String url = ''}) {
    var banners = (map['banners'] as List)
        ?.map((banner) => BannerInfoEntity(url: url + banner['url'], img: url + banner['img']))
        ?.toList();
    var categories = _listToCategories(map['problem_categories'] as List);
    return ConcernsSummary(
      banners: banners,
      overall: map['statistics']['overall'],
      done: map['statistics']['done'],
      inProgress: map['statistics']['inProgress'],
      days: map['statistics']['days'],
      categories: categories,
    );
  }

  static List<ConcernCategory> _listToCategories(List list) {
    if (list == null || list.isEmpty) return [];
    var output = <ConcernCategory>[];
    for (var category in list) {
      var rootItem = ConcernCategory(isRoot: true, id: category['id'], name: category['name']);
      output.add(rootItem);
      if (category['children'] != null) {
        var children = (category['children'] as List)
            .map((item) => ConcernCategory(
                isRoot: false, id: item['id'], name: item['name'], parentId: rootItem.id))
            .toList();
        output.addAll(children);
      }
    }
    return output;
  }
}
