class NewsRepositoryWeb {
  NewsCommandGetNews getNews() => NewsCommandGetNews();
  NewsCommandGetNews getNewsDetails(int id) => NewsCommandGetNews(id: id);
  NewsCommandComment comment(int id) => NewsCommandComment(
        id,
        username: _user?.name,
        token: _user?.token,
      );
}
