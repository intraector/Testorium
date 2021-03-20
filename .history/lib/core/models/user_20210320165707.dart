import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String name,
    String phone,
    String token,
    @Default(const UserLocation()) UserLocation location,
  }) = _User;
}
