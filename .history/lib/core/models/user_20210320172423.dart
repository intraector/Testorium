import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    int id,
    String name,
    String status,
    String species,
    String gender,
    String origin,
    String location,
    String image,
  }) = _User;
}
