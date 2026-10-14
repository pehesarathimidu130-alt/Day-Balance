import 'package:flutter/material.dart';
class _04_onboarding_schedule extends StatefulWidget {
	const _04_onboarding_schedule({super.key});
	@override
	_04_onboarding_scheduleState createState() => _04_onboarding_scheduleState();
}
class _04_onboarding_scheduleState extends State<_04_onboarding_schedule> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/61orzzno_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/7go0hcic_expires_30_days.png",
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
																							margin: const EdgeInsets.only( bottom: 6),
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
																															"YOUR DAY · 1 OF 3",
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
																																				color: Color(0xFFDDDCD2),
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
																														margin: const EdgeInsets.only( bottom: 8, right: 25),
																														width: double.infinity,
																														child: Text(
																															"When does your day begin?",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 32,
																															),
																														),
																													),
																													Container(
																														width: double.infinity,
																														child: Text(
																															"Start with your usual rhythm. You can change this whenever life shifts.",
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
																											child: Stack(
																												clipBehavior: Clip.none,
																												children: [
																													Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															IntrinsicHeight(
																																child: Container(
																																	width: double.infinity,
																																	child: Column(
																																		crossAxisAlignment: CrossAxisAlignment.start,
																																		children: [
																																			IntrinsicHeight(
																																				child: Container(
																																					decoration: BoxDecoration(
																																						border: Border.all(
																																							color: Color(0xFF85897D),
																																							width: 1,
																																						),
																																						borderRadius: BorderRadius.circular(4),
																																					),
																																					padding: const EdgeInsets.only( top: 17, bottom: 17, left: 16, right: 16),
																																					margin: const EdgeInsets.only( bottom: 24),
																																					width: double.infinity,
																																					child: Row(
																																						mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																						children: [
																																							Text(
																																								"7:00 AM",
																																								style: TextStyle(
																																									color: Color(0xFF292E28),
																																									fontSize: 16,
																																								),
																																							),
																																							Container(
																																								decoration: BoxDecoration(
																																									borderRadius: BorderRadius.circular(4),
																																								),
																																								width: 20,
																																								height: 20,
																																								child: ClipRRect(
																																									borderRadius: BorderRadius.circular(4),
																																									child: Image.network(
																																										"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/droe6ozo_expires_30_days.png",
																																										fit: BoxFit.fill,
																																									)
																																								)
																																							),
																																						]
																																					),
																																				),
																																			),
																																			IntrinsicHeight(
																																				child: Container(
																																					width: double.infinity,
																																					child: Stack(
																																						clipBehavior: Clip.none,
																																						children: [
																																							Column(
																																								crossAxisAlignment: CrossAxisAlignment.start,
																																								children: [
																																									IntrinsicHeight(
																																										child: Container(
																																											decoration: BoxDecoration(
																																												border: Border.all(
																																													color: Color(0xFF85897D),
																																													width: 1,
																																												),
																																												borderRadius: BorderRadius.circular(4),
																																											),
																																											padding: const EdgeInsets.only( top: 17, bottom: 17, left: 16, right: 16),
																																											width: double.infinity,
																																											child: Row(
																																												mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																												children: [
																																													Text(
																																														"11:00 PM",
																																														style: TextStyle(
																																															color: Color(0xFF292E28),
																																															fontSize: 16,
																																														),
																																													),
																																													Container(
																																														decoration: BoxDecoration(
																																															borderRadius: BorderRadius.circular(4),
																																														),
																																														width: 20,
																																														height: 20,
																																														child: ClipRRect(
																																															borderRadius: BorderRadius.circular(4),
																																															child: Image.network(
																																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/bk4p9ucx_expires_30_days.png",
																																																fit: BoxFit.fill,
																																															)
																																														)
																																													),
																																												]
																																											),
																																										),
																																									),
																																								]
																																							),
																																							Positioned(
																																								top: 0,
																																								left: 12,
																																								child: IntrinsicWidth(
																																									child: IntrinsicHeight(
																																										child: Container(
																																											color: Color(0xFFF8F5EF),
																																											padding: const EdgeInsets.only( left: 4, right: 4),
																																											transform: Matrix4.translationValues(0, -8, 0),
																																											child: Column(
																																												crossAxisAlignment: CrossAxisAlignment.start,
																																												children: [
																																													Text(
																																														"Bedtime",
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
																													Positioned(
																														top: 0,
																														left: 12,
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	color: Color(0xFFF8F5EF),
																																	padding: const EdgeInsets.only( left: 4, right: 4),
																																	transform: Matrix4.translationValues(0, -8, 0),
																																	child: Column(
																																		crossAxisAlignment: CrossAxisAlignment.start,
																																		children: [
																																			Text(
																																				"Wake-up time",
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
																											padding: const EdgeInsets.only( top: 24, bottom: 24, right: 24),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 16, left: 24),
																															width: double.infinity,
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 8),
																																		width: 24,
																																		height: 24,
																																		child: Image.network(
																																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/5u8aihvb_expires_30_days.png",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	Text(
																																		"Hours awake",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 14,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 16, left: 24),
																														child: Text(
																															"16h 00m",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 40,
																															),
																														),
																													),
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 16, left: 24),
																															width: double.infinity,
																															child: Row(
																																children: [
																																	Expanded(
																																		child: Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFF49664D),
																																			),
																																			height: 8,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFDDDCD2),
																																		),
																																		width: 88,
																																		height: 8,
																																		child: SizedBox(),
																																	),
																																]
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( left: 24),
																														child: Text(
																															"7 AM — 11 PM awake · 8 hours of sleep",
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
																											"Next, we’ll make room for your routines.",
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
																															"Continue",
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