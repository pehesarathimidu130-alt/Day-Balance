import 'package:flutter/material.dart';
class _09_today_home_before_planning extends StatefulWidget {
	const _09_today_home_before_planning({super.key});
	@override
	_09_today_home_before_planningState createState() => _09_today_home_before_planningState();
}
class _09_today_home_before_planningState extends State<_09_today_home_before_planning> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: IntrinsicHeight(
									child: Container(
										color: Color(0xFFF8F5EF),
										width: double.infinity,
										height: double.infinity,
										child: SingleChildScrollView(
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													IntrinsicHeight(
														child: Container(
															padding: const EdgeInsets.only( top: 5, bottom: 5, left: 24, right: 24),
															width: double.infinity,
															child: Row(
																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																children: [
																	Text(
																		"9:41",
																		style: TextStyle(
																			color: Color(0xFF292E28),
																			fontSize: 12,
																			fontWeight: FontWeight.bold,
																		),
																	),
																	Container(
																		width: 50,
																		height: 14,
																		child: Image.network(
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/kdwkipig_expires_30_days.png",
																			fit: BoxFit.fill,
																		)
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															padding: const EdgeInsets.only( bottom: 8, left: 24, right: 24),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			margin: const EdgeInsets.only( bottom: 8),
																			width: double.infinity,
																			child: Stack(
																				clipBehavior: Clip.none,
																				children: [
																					Column(
																						crossAxisAlignment: CrossAxisAlignment.start,
																						children: [
																							IntrinsicHeight(
																								child: Container(
																									padding: const EdgeInsets.only( top: 8),
																									width: double.infinity,
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											Container(
																												margin: const EdgeInsets.only( bottom: 4),
																												child: Text(
																													"WEDNESDAY, 14 OCTOBER",
																													style: TextStyle(
																														color: Color(0xFF62675D),
																														fontSize: 12,
																													),
																												),
																											),
																											Container(
																												margin: const EdgeInsets.only( bottom: 4),
																												child: Text(
																													"Good morning, Maya.",
																													style: TextStyle(
																														color: Color(0xFF292E28),
																														fontSize: 24,
																													),
																												),
																											),
																											Container(
																												margin: const EdgeInsets.only( bottom: 28),
																												child: Text(
																													"Total hours left",
																													style: TextStyle(
																														color: Color(0xFF62675D),
																														fontSize: 12,
																													),
																												),
																											),
																										]
																									),
																								),
																							),
																						]
																					),
																					Positioned(
																						bottom: 0,
																						left: 0,
																						width: 106,
																						height: 34,
																						child: Container(
																							transform: Matrix4.translationValues(0, 6, 0),
																							child: Text(
																								"14h 30m",
																								style: TextStyle(
																									color: Color(0xFF49664D),
																									fontSize: 28,
																								),
																							),
																						),
																					),
																				]
																			),
																		),
																	),
																	IntrinsicHeight(
																		child: Container(
																			padding: const EdgeInsets.symmetric(vertical: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 119),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFEEE8DC),
																											),
																											padding: const EdgeInsets.symmetric(vertical: 28),
																											margin: const EdgeInsets.only( bottom: 24),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFD4DEE5),
																														),
																														margin: const EdgeInsets.only( bottom: 12, left: 24),
																														width: 220,
																														height: 16,
																														child: SizedBox(),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFEBD3BC),
																														),
																														margin: const EdgeInsets.only( bottom: 12, left: 24),
																														width: 176,
																														height: 16,
																														child: SizedBox(),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFE9CFCE),
																														),
																														margin: const EdgeInsets.only( left: 24),
																														width: 136,
																														height: 16,
																														child: SizedBox(),
																													),
																												]
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 24),
																										width: double.infinity,
																										child: Text(
																											"A fresh day. A little room to choose.",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 28,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 24),
																										width: double.infinity,
																										child: Text(
																											"You haven’t made a plan yet. Give your hours a place, then start one thing at a time.",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 16,
																											),
																										),
																									),
																									Text(
																										"7 AM – 11 PM · routines already set aside",
																										style: TextStyle(
																											color: Color(0xFF62675D),
																											fontSize: 12,
																										),
																									),
																								]
																							),
																						),
																					),
																					InkWell(
																						onTap: () { print('Pressed'); },
																						child: IntrinsicHeight(
																							child: Container(
																								decoration: BoxDecoration(
																									border: Border.all(
																										color: Color(0x00000000),
																										width: 1,
																									),
																									borderRadius: BorderRadius.circular(100),
																									color: Color(0xFF49664D),
																								),
																								padding: const EdgeInsets.symmetric(vertical: 14),
																								width: double.infinity,
																								child: Column(
																									children: [
																										Text(
																											"Plan today",
																											style: TextStyle(
																												color: Color(0xFFFFFFFF),
																												fontSize: 14,
																												fontWeight: FontWeight.bold,
																											),
																										),
																									]
																								),
																							),
																						),
																					),
																				]
																			),
																		),
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															color: Color(0xFFEEE8DC),
															padding: const EdgeInsets.only( top: 8, bottom: 22, left: 16, right: 16),
															width: double.infinity,
															child: Row(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	Expanded(
																		child: IntrinsicHeight(
																			child: Container(
																				width: double.infinity,
																				child: Column(
																					children: [
																						Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(100),
																							),
																							margin: const EdgeInsets.only( bottom: 4),
																							width: 64,
																							height: 32,
																							child: ClipRRect(
																								borderRadius: BorderRadius.circular(100),
																								child: Image.network(
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/alxun35z_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"Today",
																							style: TextStyle(
																								color: Color(0xFF49664D),
																								fontSize: 12,
																								fontWeight: FontWeight.bold,
																							),
																						),
																					]
																				),
																			),
																		),
																	),
																	Expanded(
																		child: IntrinsicHeight(
																			child: Container(
																				width: double.infinity,
																				child: Column(
																					children: [
																						Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(100),
																							),
																							margin: const EdgeInsets.only( bottom: 4),
																							width: 64,
																							height: 32,
																							child: ClipRRect(
																								borderRadius: BorderRadius.circular(100),
																								child: Image.network(
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/2ocbvst9_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"History",
																							style: TextStyle(
																								color: Color(0xFF62675D),
																								fontSize: 12,
																							),
																						),
																					]
																				),
																			),
																		),
																	),
																	Expanded(
																		child: IntrinsicHeight(
																			child: Container(
																				width: double.infinity,
																				child: Column(
																					children: [
																						Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(100),
																							),
																							margin: const EdgeInsets.only( bottom: 4),
																							width: 64,
																							height: 32,
																							child: ClipRRect(
																								borderRadius: BorderRadius.circular(100),
																								child: Image.network(
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/v4xl5n0o_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"Profile",
																							style: TextStyle(
																								color: Color(0xFF62675D),
																								fontSize: 12,
																							),
																						),
																					]
																				),
																			),
																		),
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															padding: const EdgeInsets.symmetric(vertical: 10),
															width: double.infinity,
															child: Column(
																children: [
																	Container(
																		decoration: BoxDecoration(
																			borderRadius: BorderRadius.circular(100),
																			color: Color(0xFF292E28),
																		),
																		width: 108,
																		height: 4,
																		child: SizedBox(),
																	),
																]
															),
														),
													),
												],
											)
										),
									),
								),
							),
						],
					),
				),
			),
		);
	}
}