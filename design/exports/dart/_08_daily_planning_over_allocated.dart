import 'package:flutter/material.dart';
class _08_daily_planning_over_allocated extends StatefulWidget {
	const _08_daily_planning_over_allocated({super.key});
	@override
	_08_daily_planning_over_allocatedState createState() => _08_daily_planning_over_allocatedState();
}
class _08_daily_planning_over_allocatedState extends State<_08_daily_planning_over_allocated> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/6udmb8to_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/bckbf0r1_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Plan your day",
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
																			padding: const EdgeInsets.only( bottom: 16, left: 24, right: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							padding: const EdgeInsets.symmetric(vertical: 8),
																							margin: const EdgeInsets.only( bottom: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"Hours left to plan",
																											style: TextStyle(
																												color: Color(0xFFA43B32),
																												fontSize: 14,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 8),
																											width: double.infinity,
																											child: Row(
																												mainAxisAlignment: MainAxisAlignment.spaceBetween,
																												children: [
																													Text(
																														"−1h 00m",
																														style: TextStyle(
																															color: Color(0xFFA43B32),
																															fontSize: 32,
																														),
																													),
																													Text(
																														"of 14h 30m",
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
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFDDDCD2),
																														),
																														height: 4,
																														width: double.infinity,
																														child: SizedBox(),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFA43B32),
																														),
																														height: 4,
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
																							margin: const EdgeInsets.only( bottom: 12),
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
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(4),
																															color: Color(0xFFD4DEE5),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 4,
																														height: 32,
																														child: SizedBox(),
																													),
																													Text(
																														"Academic",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 14,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		border: Border.all(
																																			color: Color(0xFF85897D),
																																			width: 1,
																																		),
																																		borderRadius: BorderRadius.circular(100),
																																	),
																																	padding: const EdgeInsets.only( top: 14, bottom: 14, left: 8, right: 8),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(100),
																																				),
																																				margin: const EdgeInsets.only( right: 20),
																																				width: 20,
																																				height: 20,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(100),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/6e2x0lu4_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Container(
																																				margin: const EdgeInsets.only( right: 22),
																																				child: Text(
																																					"4h 00m",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/u0omhqod_expires_30_days.png",
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
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(4),
																															color: Color(0xFFEBD3BC),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 4,
																														height: 32,
																														child: SizedBox(),
																													),
																													Text(
																														"Life/Family",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 14,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		border: Border.all(
																																			color: Color(0xFF85897D),
																																			width: 1,
																																		),
																																		borderRadius: BorderRadius.circular(100),
																																	),
																																	padding: const EdgeInsets.only( top: 14, bottom: 14, left: 8, right: 8),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(100),
																																				),
																																				margin: const EdgeInsets.only( right: 20),
																																				width: 20,
																																				height: 20,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(100),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/6aik9h0y_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Container(
																																				margin: const EdgeInsets.only( right: 23),
																																				child: Text(
																																					"2h 00m",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/3it8p6vt_expires_30_days.png",
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
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(4),
																															color: Color(0xFFDDD3E4),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 4,
																														height: 32,
																														child: SizedBox(),
																													),
																													Text(
																														"Entertainment",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 14,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		border: Border.all(
																																			color: Color(0xFF85897D),
																																			width: 1,
																																		),
																																		borderRadius: BorderRadius.circular(100),
																																	),
																																	padding: const EdgeInsets.only( top: 14, bottom: 14, left: 8, right: 8),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(100),
																																				),
																																				margin: const EdgeInsets.only( right: 20),
																																				width: 20,
																																				height: 20,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(100),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/0wxoegc0_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Container(
																																				margin: const EdgeInsets.only( right: 23),
																																				child: Text(
																																					"3h 00m",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/cjov7ju1_expires_30_days.png",
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
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(4),
																															color: Color(0xFFD9E2CF),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 4,
																														height: 32,
																														child: SizedBox(),
																													),
																													Expanded(
																														child: Container(
																															margin: const EdgeInsets.only( right: 46),
																															width: double.infinity,
																															child: Text(
																																"Personal/Reading",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 14,
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
																																				margin: const EdgeInsets.only( right: 20),
																																				width: 20,
																																				height: 20,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(100),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/koyt5y04_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Container(
																																				margin: const EdgeInsets.only( right: 23),
																																				child: Text(
																																					"2h 00m",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/gh27nd7d_expires_30_days.png",
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
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(4),
																															color: Color(0xFFC9DEDA),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 4,
																														height: 32,
																														child: SizedBox(),
																													),
																													Text(
																														"Career",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 14,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		border: Border.all(
																																			color: Color(0xFF85897D),
																																			width: 1,
																																		),
																																		borderRadius: BorderRadius.circular(100),
																																	),
																																	padding: const EdgeInsets.only( top: 14, bottom: 14, left: 8, right: 8),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(100),
																																				),
																																				margin: const EdgeInsets.only( right: 20),
																																				width: 20,
																																				height: 20,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(100),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/d0yne5ql_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Container(
																																				margin: const EdgeInsets.only( right: 23),
																																				child: Text(
																																					"1h 30m",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/cerx47a8_expires_30_days.png",
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
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(4),
																															color: Color(0xFFDEDED8),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 4,
																														height: 32,
																														child: SizedBox(),
																													),
																													Container(
																														width: 103,
																														child: Text(
																															"Unplanned/Extra capacity",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 14,
																															),
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		border: Border.all(
																																			color: Color(0xFF85897D),
																																			width: 1,
																																		),
																																		borderRadius: BorderRadius.circular(100),
																																	),
																																	padding: const EdgeInsets.only( top: 14, bottom: 14, left: 8, right: 8),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(100),
																																				),
																																				margin: const EdgeInsets.only( right: 20),
																																				width: 20,
																																				height: 20,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(100),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/cswqqk6k_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Container(
																																				margin: const EdgeInsets.only( right: 23),
																																				child: Text(
																																					"1h 00m",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/y5mdwm1c_expires_30_days.png",
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
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(4),
																															color: Color(0xFFE9CFCE),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 4,
																														height: 32,
																														child: SizedBox(),
																													),
																													Text(
																														"Rest/Recovery",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 14,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													InkWell(
																														onTap: () { print('Pressed'); },
																														child: IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		border: Border.all(
																																			color: Color(0xFF85897D),
																																			width: 1,
																																		),
																																		borderRadius: BorderRadius.circular(100),
																																	),
																																	padding: const EdgeInsets.only( top: 14, bottom: 14, left: 8, right: 8),
																																	child: Row(
																																		children: [
																																			Container(
																																				decoration: BoxDecoration(
																																					borderRadius: BorderRadius.circular(100),
																																				),
																																				margin: const EdgeInsets.only( right: 20),
																																				width: 20,
																																				height: 20,
																																				child: ClipRRect(
																																					borderRadius: BorderRadius.circular(100),
																																					child: Image.network(
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/e0ey8ys7_expires_30_days.png",
																																						fit: BoxFit.fill,
																																					)
																																				)
																																			),
																																			Container(
																																				margin: const EdgeInsets.only( right: 23),
																																				child: Text(
																																					"2h 00m",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/kv3is8fq_expires_30_days.png",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(12),
																								color: Color(0xFFF6E2DE),
																							),
																							padding: const EdgeInsets.all(12),
																							margin: const EdgeInsets.only( bottom: 12),
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
																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/8zllata2_expires_30_days.png",
																												fit: BoxFit.fill,
																											)
																										)
																									),
																									Expanded(
																										child: Container(
																											width: double.infinity,
																											child: Text(
																												"You’re 1h over. Free up an hour before starting your day.",
																												style: TextStyle(
																													color: Color(0xFFA43B32),
																													fontSize: 12,
																												),
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
																									border: Border.all(
																										color: Color(0x00000000),
																										width: 1,
																									),
																									borderRadius: BorderRadius.circular(100),
																									color: Color(0xFFDDDCD2),
																								),
																								padding: const EdgeInsets.symmetric(vertical: 14),
																								margin: const EdgeInsets.only( top: 52),
																								width: double.infinity,
																								child: Column(
																									children: [
																										Text(
																											"Free up 1h to continue",
																											style: TextStyle(
																												color: Color(0xFF62675D),
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