class PlanItemModel {
  final String id;
  final String dailyPlanId;
  final String categoryId;
  final String categoryName;
  final String categoryDescription;
  final String categoryColor;
  final String categoryIcon;
  final int plannedSeconds;
  final int remainingSeconds;
  final DateTime? startedAt;

  const PlanItemModel({
    required this.id,
    required this.dailyPlanId,
    required this.categoryId,
    required this.categoryName,
    required this.categoryDescription,
    required this.categoryColor,
    required this.categoryIcon,
    required this.plannedSeconds,
    required this.remainingSeconds,
    this.startedAt,
  });

  factory PlanItemModel.fromJson(Map<String, dynamic> json) {
    return PlanItemModel(
      id: json['id'] as String,
      dailyPlanId: json['dailyPlanId'] as String,
      categoryId: json['categoryId'] as String,
      categoryName: json['categoryName'] as String,
      categoryDescription: json['categoryDescription'] as String,
      categoryColor: json['categoryColor'] as String,
      categoryIcon: json['categoryIcon'] as String,
      plannedSeconds: json['plannedSeconds'] as int,
      remainingSeconds: json['remainingSeconds'] as int,
      startedAt: json['startedAt'] != null
          ? DateTime.parse(json['startedAt'] as String)
          : null,
    );
  }

  PlanItemModel copyWith({
    String? id,
    String? dailyPlanId,
    String? categoryId,
    String? categoryName,
    String? categoryDescription,
    String? categoryColor,
    String? categoryIcon,
    int? plannedSeconds,
    int? remainingSeconds,
    DateTime? startedAt,
  }) {
    return PlanItemModel(
      id: id ?? this.id,
      dailyPlanId: dailyPlanId ?? this.dailyPlanId,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      categoryDescription: categoryDescription ?? this.categoryDescription,
      categoryColor: categoryColor ?? this.categoryColor,
      categoryIcon: categoryIcon ?? this.categoryIcon,
      plannedSeconds: plannedSeconds ?? this.plannedSeconds,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      startedAt: startedAt ?? this.startedAt,
    );
  }
}

class DailyPlanModel {
  final String id;
  final String userId;
  final String planDate;
  final int wakingSeconds;
  final List<PlanItemModel> items;

  const DailyPlanModel({
    required this.id,
    required this.userId,
    required this.planDate,
    required this.wakingSeconds,
    required this.items,
  });

  factory DailyPlanModel.fromJson(Map<String, dynamic> json) {
    return DailyPlanModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      planDate: json['planDate'] as String,
      wakingSeconds: json['wakingSeconds'] as int,
      items: (json['items'] as List<dynamic>)
          .map((item) => PlanItemModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}
