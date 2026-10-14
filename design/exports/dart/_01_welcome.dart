import 'package:flutter/material.dart';
class _01_welcome extends StatefulWidget {
	const _01_welcome({super.key});
	@override
	_01_welcomeState createState() => _01_welcomeState();
}
class _01_welcomeState extends State<_01_welcome> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/4523e3i8_expires_30_days.png",
																			fit: BoxFit.fill,
																		)
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															padding: const EdgeInsets.only( top: 28, bottom: 28, left: 24, right: 24),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			margin: const EdgeInsets.only( bottom: 80),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicWidth(
																						child: IntrinsicHeight(
																							child: Container(
																								margin: const EdgeInsets.only( bottom: 32),
																								child: Row(
																									children: [
																										Container(
																											margin: const EdgeInsets.only( right: 8),
																											width: 32,
																											height: 32,
																											child: Image.network(
																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/g7oh8ame_expires_30_days.png",
																												fit: BoxFit.fill,
																											)
																										),
																										Text(
																											"Day-Balance",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 22,
																												fontWeight: FontWeight.bold,
																											),
																										),
																									]
																								),
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 16),
																										width: double.infinity,
																										child: Text(
																											"Make room\nfor your day.",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 40,
																											),
																										),
																									),
																									Container(
																										width: double.infinity,
																										child: Text(
																											"Plan your hours. Do one thing at a time.\nLeave room for life.",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 16,
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
																			margin: const EdgeInsets.only( bottom: 80),
																			width: double.infinity,
																			child: Stack(
																				clipBehavior: Clip.none,
																				children: [
																					Padding(
																						padding: const EdgeInsets.only( top: 46, left: 5, right: 5),
																						child: Column(
																							crossAxisAlignment: CrossAxisAlignment.start,
																							children: [
																								Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(16),
																										color: Color(0xFFEEE8DC),
																									),
																									margin: const EdgeInsets.only( bottom: 4),
																									height: 166,
																									width: double.infinity,
																									child: SizedBox(),
																								),
																							]
																						),
																					),
																					Positioned(
																						top: 0,
																						right: 8,
																						width: 100,
																						height: 86,
																						child: Container(
																							width: 100,
																							height: 86,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/cziihbox_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																					),
																					Positioned(
																						bottom: 0,
																						right: 0,
																						child: IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(16),
																										color: Color(0xFFFFFCF7),
																									),
																									padding: const EdgeInsets.only( top: 20, bottom: 20, left: 16, right: 16),
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											InkWell(
																												onTap: () { print('Pressed'); },
																												child: IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFD4DEE5),
																															),
																															padding: const EdgeInsets.only( top: 9, bottom: 9, left: 12, right: 12),
																															margin: const EdgeInsets.only( bottom: 8),
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 162),
																																		child: Text(
																																			"Academic",
																																			style: TextStyle(
																																				color: Color(0xFF292E28),
																																				fontSize: 12,
																																			),
																																		),
																																	),
																																	Text(
																																		"3 h",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 12,
																																		),
																																	),
																																]
																															),
																														),
																													),
																												),
																											),
																											InkWell(
																												onTap: () { print('Pressed'); },
																												child: IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFEBD3BC),
																															),
																															padding: const EdgeInsets.only( top: 9, bottom: 9, left: 12, right: 12),
																															margin: const EdgeInsets.only( bottom: 8),
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 124),
																																		child: Text(
																																			"Life/Family",
																																			style: TextStyle(
																																				color: Color(0xFF292E28),
																																				fontSize: 12,
																																			),
																																		),
																																	),
																																	Text(
																																		"2 h",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 12,
																																		),
																																	),
																																]
																															),
																														),
																													),
																												),
																											),
																											InkWell(
																												onTap: () { print('Pressed'); },
																												child: IntrinsicWidth(
																													child: IntrinsicHeight(
																														child: Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFE9CFCE),
																															),
																															padding: const EdgeInsets.only( top: 9, bottom: 9, left: 12, right: 12),
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 82),
																																		child: Text(
																																			"Rest/Recovery",
																																			style: TextStyle(
																																				color: Color(0xFF292E28),
																																				fontSize: 12,
																																			),
																																		),
																																	),
																																	Text(
																																		"1 h",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 12,
																																		),
																																	),
																																]
																															),
																														),
																													),
																												),
																											),
																										]
																									),
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
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
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
																								margin: const EdgeInsets.only( bottom: 8),
																								width: double.infinity,
																								child: Column(
																									children: [
																										Text(
																											"Get started",
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
																					InkWell(
																						onTap: () { print('Pressed'); },
																						child: IntrinsicHeight(
																							child: Container(
																								decoration: BoxDecoration(
																									border: Border.all(
																										color: Color(0xFF85897D),
																										width: 1,
																									),
																									borderRadius: BorderRadius.circular(100),
																								),
																								padding: const EdgeInsets.symmetric(vertical: 14),
																								width: double.infinity,
																								child: Column(
																									children: [
																										Text(
																											"Log in",
																											style: TextStyle(
																												color: Color(0xFF49664D),
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