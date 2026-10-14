import 'package:flutter/material.dart';
class _05_onboarding_routine extends StatefulWidget {
	const _05_onboarding_routine({super.key});
	@override
	_05_onboarding_routineState createState() => _05_onboarding_routineState();
}
class _05_onboarding_routineState extends State<_05_onboarding_routine> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/97rglk0c_expires_30_days.png",
																			fit: BoxFit.fill,
																		)
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
																	IntrinsicHeight(
																		child: Container(
																			padding: const EdgeInsets.only( top: 4, bottom: 4, left: 12),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Container(
																						width: 40,
																						height: 48,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ee9mxxgx_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																				]
																			),
																		),
																	),
																	IntrinsicHeight(
																		child: Container(
																			padding: const EdgeInsets.only( top: 8, left: 24, right: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 7),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 32),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8),
																														child: Text(
																															"YOUR DAY · 2 OF 3",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 12,
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															width: double.infinity,
																															child: Row(
																																children: [
																																	Expanded(
																																		child: Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(100),
																																				color: Color(0xFF49664D),
																																			),
																																			margin: const EdgeInsets.only( right: 9),
																																			height: 4,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																	),
																																	Expanded(
																																		child: Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(100),
																																				color: Color(0xFF49664D),
																																			),
																																			margin: const EdgeInsets.only( right: 9),
																																			height: 4,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																	),
																																	Expanded(
																																		child: Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(100),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			height: 4,
																																			width: double.infinity,
																																			child: SizedBox(),
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
																											margin: const EdgeInsets.only( bottom: 32),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8, right: 45),
																														width: double.infinity,
																														child: Text(
																															"Leave room for the everyday.",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 32,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( right: 24),
																														width: double.infinity,
																														child: Text(
																															"Getting ready and winding down count too. Set this time aside before you plan.",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 14,
																															),
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 32),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 16),
																															width: double.infinity,
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 12),
																																		width: 24,
																																		height: 24,
																																		child: Image.network(
																																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/8phh4xad_expires_30_days.png",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Expanded(
																																		child: Container(
																																			margin: const EdgeInsets.only( right: 22),
																																			width: double.infinity,
																																			child: Text(
																																				"Morning routine",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 18,
																																				),
																																			),
																																		),
																																	),
																																	Expanded(
																																		child: InkWell(
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
																																					child: Row(
																																						mainAxisAlignment: MainAxisAlignment.center,
																																						children: [
																																							Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(100),
																																								),
																																								margin: const EdgeInsets.only( right: 14),
																																								width: 20,
																																								height: 20,
																																								child: ClipRRect(
																																									borderRadius: BorderRadius.circular(100),
																																									child: Image.network(
																																										"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/zud540jn_expires_30_days.png",
																																										fit: BoxFit.fill,
																																									)
																																								)
																																							),
																																							Container(
																																								margin: const EdgeInsets.only( right: 16),
																																								child: Text(
																																									"45 min",
																																									style: TextStyle(
																																										color: Color(0xFF292E28),
																																										fontSize: 14,
																																									),
																																								),
																																							),
																																							Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(100),
																																								),
																																								width: 20,
																																								height: 20,
																																								child: ClipRRect(
																																									borderRadius: BorderRadius.circular(100),
																																									child: Image.network(
																																										"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ts7id24f_expires_30_days.png",
																																										fit: BoxFit.fill,
																																									)
																																								)
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
																													Text(
																														"Get ready, eat, ease into the day.",
																														style: TextStyle(
																															color: Color(0xFF62675D),
																															fontSize: 14,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 32),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 16),
																															width: double.infinity,
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 12),
																																		width: 24,
																																		height: 24,
																																		child: Image.network(
																																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/jp8s8h40_expires_30_days.png",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Expanded(
																																		child: Container(
																																			margin: const EdgeInsets.only( right: 22),
																																			width: double.infinity,
																																			child: Text(
																																				"Wind-up routine",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 18,
																																				),
																																			),
																																		),
																																	),
																																	Expanded(
																																		child: InkWell(
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
																																					child: Row(
																																						mainAxisAlignment: MainAxisAlignment.center,
																																						children: [
																																							Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(100),
																																								),
																																								margin: const EdgeInsets.only( right: 14),
																																								width: 20,
																																								height: 20,
																																								child: ClipRRect(
																																									borderRadius: BorderRadius.circular(100),
																																									child: Image.network(
																																										"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/a2zu6rja_expires_30_days.png",
																																										fit: BoxFit.fill,
																																									)
																																								)
																																							),
																																							Container(
																																								margin: const EdgeInsets.only( right: 16),
																																								child: Text(
																																									"45 min",
																																									style: TextStyle(
																																										color: Color(0xFF292E28),
																																										fontSize: 14,
																																									),
																																								),
																																							),
																																							Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(100),
																																								),
																																								width: 20,
																																								height: 20,
																																								child: ClipRRect(
																																									borderRadius: BorderRadius.circular(100),
																																									child: Image.network(
																																										"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/xnc0b0ov_expires_30_days.png",
																																										fit: BoxFit.fill,
																																									)
																																								)
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
																													Text(
																														"Unplug and get ready for bed.",
																														style: TextStyle(
																															color: Color(0xFF62675D),
																															fontSize: 14,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFEEE8DC),
																											),
																											padding: const EdgeInsets.symmetric(vertical: 16),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 12, left: 16),
																														child: Text(
																															"16h awake − 1h 30m of routines",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 14,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 12, left: 16),
																														child: Text(
																															"14h 30m to plan",
																															style: TextStyle(
																																color: Color(0xFF49664D),
																																fontSize: 28,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( left: 16),
																														child: Text(
																															"Routines stay protected, outside your plan.",
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
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 16),
																										child: Text(
																											"Adjust in 15-minute steps.",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
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
																															"See my daily hours",
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