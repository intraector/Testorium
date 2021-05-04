class NewsRepositoryWeb {
  CommandGetPersonDetails getPersons() => CommandGetPersonDetails();
  NewsCommandGetNews getNewsDetails(int id) => NewsCommandGetNews(id: id);
}
