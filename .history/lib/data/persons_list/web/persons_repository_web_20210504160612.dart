class PersonsRepositoryWeb {
  CommandGetPersonDetails getPersons() => CommandGetPersonDetails();
  CommandGetPersonDetails getNewsDetails(int id) => CommandGetPersonDetails(id: id);
}
