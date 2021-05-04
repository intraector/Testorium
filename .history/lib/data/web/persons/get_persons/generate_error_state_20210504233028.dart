part of 'get_persons.dart';

StateCommandGetPersons _generateErrorState(Response? response) {
  if (response == null) return StateCommandGetPersons.error(message: S.current.errorGeneral);
  String _message;
  switch (response.statusCode) {
    default:
      {
        _message = S.current.errorGeneral;
      }
  }
  return StateCommandGetPersons.error(
    message: _message,
    statusCode: response.statusCode,
    statusMsg: response.statusMessage,
    data: response.data,
    extra: response.extra,
  );
}
