class UserModel {
  final String id;
  final String email;
  final String? displayName;
  final String? wakeTime;
  final String? bedtime;
  final int? routineMinutes;
  final bool onboardingDone;
  final String? createdAt;

  const UserModel({
    required this.id,
    required this.email,
    this.displayName,
    this.wakeTime,
    this.bedtime,
    this.routineMinutes,
    this.onboardingDone = false,
    this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      wakeTime: json['wakeTime'] as String?,
      bedtime: json['bedtime'] as String?,
      routineMinutes: json['routineMinutes'] as int?,
      onboardingDone: json['onboardingDone'] as bool? ?? false,
      createdAt: json['createdAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'displayName': displayName,
    'wakeTime': wakeTime,
    'bedtime': bedtime,
    'routineMinutes': routineMinutes,
    'onboardingDone': onboardingDone,
    'createdAt': createdAt,
  };

  UserModel copyWith({
    String? id,
    String? email,
    String? displayName,
    String? wakeTime,
    String? bedtime,
    int? routineMinutes,
    bool? onboardingDone,
    String? createdAt,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      wakeTime: wakeTime ?? this.wakeTime,
      bedtime: bedtime ?? this.bedtime,
      routineMinutes: routineMinutes ?? this.routineMinutes,
      onboardingDone: onboardingDone ?? this.onboardingDone,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
