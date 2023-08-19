import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
@JsonSerializable()
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.name,
    required this.id,
  });

  /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  /// A description for name
  final String name;

  /// A description for id
  final int id;

  /// Creates a copy of the current User with property changes
  User copyWith({
    String? name,
    int? id,
  }) {
    return User(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        name,
        id,
      ];

  /// Creates a Json map from a User
  Map<String, dynamic> toJson() => _$UserToJson(this);

  /// Creates a toString() override for User
  @override
  String toString() => 'User(name: $name, id: $id)';
}
