import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String id,
    String name,
    String status,
    String token,
    @Default(const UserLocation()) UserLocation location,
  }) = _User;
}
