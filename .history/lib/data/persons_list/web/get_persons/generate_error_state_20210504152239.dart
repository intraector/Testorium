part of 'get_persons.dart';

StateNewsCommandGetNews _generateErrorState(Response response) {
  if (response == null) return StateNewsCommandGetNews.error(message: S.current.errorGeneral);
  String _message;
  switch (response.statusCode) {
    case 200:
      {
        _message = S.current.errorGeneral;
      }
      break;

    default:
      {
        _message = S.current.errorGeneral;
      }
  }
  return StateNewsCommandGetNews.error(
    message: _message,
    statusCode: response.statusCode,
    statusMsg: response.statusMessage,
    data: response.data,
    extra: response.extra,
  );
}
