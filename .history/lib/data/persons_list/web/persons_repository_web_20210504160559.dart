class NewsRepositoryWeb {
  CommandGetPersonDetails getPersons() => CommandGetPersonDetails();
  CommandGetPersonDetails getNewsDetails(int id) => CommandGetPersonDetails(id: id);
}
