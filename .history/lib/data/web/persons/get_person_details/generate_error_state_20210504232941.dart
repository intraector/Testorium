part of 'get_person_details.dart';

StateCommandGetPersonDetails _generateErrorState(Response? response) {
  if (response == null) return StateCommandGetPersonDetails.error(message: S.current.errorGeneral);
  String _message;
  switch (response.statusCode) {
    default:
      {
        _message = S.current.errorGeneral;
      }
  }
  return StateCommandGetPersonDetails.error(
    message: _message,
    statusCode: response.statusCode,
    statusMsg: response.statusMessage,
    data: response.data,
    extra: response.extra,
  );
}
