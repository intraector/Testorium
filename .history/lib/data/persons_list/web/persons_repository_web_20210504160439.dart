import 'package:one_click/core/models/user.dart';
import 'package:one_click/core/bloc/user/bloc_user.dart';

import 'comment/comment.dart';
import 'get_news/get_news.dart';

class NewsRepositoryWeb {
  NewsRepositoryWeb({this.userRepository});
  final BlocUser userRepository;
  User get _user => userRepository.state.maybeMap(
        data: (_state) => _state.user,
        orElse: () => null,
      );

  NewsCommandGetNews getNews() => NewsCommandGetNews();
  NewsCommandGetNews getNewsDetails(int id) => NewsCommandGetNews(id: id);
  NewsCommandComment comment(int id) => NewsCommandComment(
        id,
        username: _user?.name,
        token: _user?.token,
      );
}
