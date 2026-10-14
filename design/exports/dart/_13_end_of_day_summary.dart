import 'package:flutter/material.dart';
class _13_end_of_day_summary extends StatefulWidget {
	const _13_end_of_day_summary({super.key});
	@override
	_13_end_of_day_summaryState createState() => _13_end_of_day_summaryState();
}
class _13_end_of_day_summaryState extends State<_13_end_of_day_summary> {
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
																		"22:15",
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/5z6bc41o_expires_30_days.png",
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
																			padding: const EdgeInsets.symmetric(vertical: 4),
																			width: double.infinity,
																			child: Row(
																				children: [
																					Container(
																						margin: const EdgeInsets.only( left: 12, right: 8),
																						width: 40,
																						height: 48,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/hrzbroxh_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Your day, in balance",
																						style: TextStyle(
																							color: Color(0xFF292E28),
																							fontSize: 22,
																						),
																					),
																				]
																			),
																		),
																	),
																	IntrinsicHeight(
																		child: Container(
																			padding: const EdgeInsets.only( top: 5, bottom: 5, left: 24, right: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 16),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"WEDNESDAY, 14 OCTOBER",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"You made room.",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 28,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 24),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"14h 00m",
																																			style: TextStyle(
																																				color: Color(0xFF49664D),
																																				fontSize: 24,
																																			),
																																		),
																																		Text(
																																			"of 14h 30m planned",
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
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"30m",
																																			style: TextStyle(
																																				color: Color(0xFF292E28),
																																				fontSize: 24,
																																			),
																																		),
																																		Text(
																																			"left as breathing room",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 16),
																							width: double.infinity,
																							child: Row(
																								children: [
																									Container(
																										color: Color(0xFFDEDED8),
																										margin: const EdgeInsets.only( right: 16),
																										width: 16,
																										height: 6,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( right: 19),
																										child: Text(
																											"Planned",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
																											),
																										),
																									),
																									Container(
																										color: Color(0xFF49664D),
																										margin: const EdgeInsets.only( right: 16),
																										width: 16,
																										height: 6,
																										child: SizedBox(),
																									),
																									Text(
																										"Actual",
																										style: TextStyle(
																											color: Color(0xFF62675D),
																											fontSize: 12,
																										),
																									),
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 16),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.only( bottom: 10),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 6),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Academic",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 13,
																																		),
																																	),
																																	Text(
																																		"4h 00m / 4h 15m",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 11,
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
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFD4DEE5),
																																		),
																																		margin: const EdgeInsets.only( bottom: 4, right: 35),
																																		height: 5,
																																		width: double.infinity,
																																		child: SizedBox(),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFD4DEE5),
																																		),
																																		margin: const EdgeInsets.only( right: 18),
																																		height: 5,
																																		width: double.infinity,
																																		child: SizedBox(),
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
																											padding: const EdgeInsets.only( bottom: 10),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 6),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Life/Family",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 13,
																																		),
																																	),
																																	Text(
																																		"2h 00m / 2h 00m",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 11,
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
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFEBD3BC),
																																		),
																																		margin: const EdgeInsets.only( bottom: 4),
																																		width: 138,
																																		height: 5,
																																		child: SizedBox(),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFEBD3BC),
																																		),
																																		width: 138,
																																		height: 5,
																																		child: SizedBox(),
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
																											padding: const EdgeInsets.only( bottom: 10),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 6),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Entertainment",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 13,
																																		),
																																	),
																																	Text(
																																		"2h 00m / 1h 45m",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 11,
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
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFDDD3E4),
																																		),
																																		margin: const EdgeInsets.only( bottom: 4),
																																		width: 138,
																																		height: 5,
																																		child: SizedBox(),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFDDD3E4),
																																		),
																																		width: 121,
																																		height: 5,
																																		child: SizedBox(),
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
																											padding: const EdgeInsets.only( bottom: 10),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 6),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Personal/Reading",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 13,
																																		),
																																	),
																																	Text(
																																		"2h 00m / 2h 00m",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 11,
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
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFD9E2CF),
																																		),
																																		margin: const EdgeInsets.only( bottom: 4),
																																		width: 138,
																																		height: 5,
																																		child: SizedBox(),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFD9E2CF),
																																		),
																																		width: 138,
																																		height: 5,
																																		child: SizedBox(),
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
																											padding: const EdgeInsets.only( bottom: 10),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 6),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Career",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 13,
																																		),
																																	),
																																	Text(
																																		"1h 30m / 1h 30m",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 11,
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
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFC9DEDA),
																																		),
																																		margin: const EdgeInsets.only( bottom: 4),
																																		width: 104,
																																		height: 5,
																																		child: SizedBox(),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFC9DEDA),
																																		),
																																		width: 104,
																																		height: 5,
																																		child: SizedBox(),
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
																											padding: const EdgeInsets.only( bottom: 10),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 6),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Unplanned/Extra capacity",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 13,
																																		),
																																	),
																																	Text(
																																		"1h 00m / 0h 30m",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 11,
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
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFDEDED8),
																																		),
																																		margin: const EdgeInsets.only( bottom: 4),
																																		width: 69,
																																		height: 5,
																																		child: SizedBox(),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFDEDED8),
																																		),
																																		width: 34,
																																		height: 5,
																																		child: SizedBox(),
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
																											padding: const EdgeInsets.only( bottom: 10),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicHeight(
																														child: Container(
																															margin: const EdgeInsets.only( bottom: 6),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Rest/Recovery",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 13,
																																		),
																																	),
																																	Text(
																																		"2h 00m / 2h 00m",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 11,
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
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFE9CFCE),
																																		),
																																		margin: const EdgeInsets.only( bottom: 4),
																																		width: 138,
																																		height: 5,
																																		child: SizedBox(),
																																	),
																																	Container(
																																		decoration: BoxDecoration(
																																			borderRadius: BorderRadius.circular(4),
																																			color: Color(0xFFE9CFCE),
																																		),
																																		width: 138,
																																		height: 5,
																																		child: SizedBox(),
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
																					InkWell(
																						onTap: () { print('Pressed'); },
																						child: IntrinsicHeight(
																							child: Container(
																								decoration: BoxDecoration(
																									borderRadius: BorderRadius.circular(12),
																									color: Color(0xFFE0E8DB),
																								),
																								padding: const EdgeInsets.all(12),
																								width: double.infinity,
																								child: Row(
																									crossAxisAlignment: CrossAxisAlignment.start,
																									children: [
																										Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(12),
																											),
																											margin: const EdgeInsets.only( right: 8),
																											width: 20,
																											height: 20,
																											child: ClipRRect(
																												borderRadius: BorderRadius.circular(12),
																												child: Image.network(
																													"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/wskd7zem_expires_30_days.png",
																													fit: BoxFit.fill,
																												)
																											)
																										),
																										Expanded(
																											child: Container(
																												width: double.infinity,
																												child: Text(
																													"Academic needed a little more time. Your buffer helped the day stay flexible.",
																													style: TextStyle(
																														color: Color(0xFF49664D),
																														fontSize: 12,
																													),
																												),
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/4vjmy9tg_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"Today",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/q6z7kfg0_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"History",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ay94hfaf_expires_30_days.png",
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