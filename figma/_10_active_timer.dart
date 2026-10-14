import 'package:flutter/material.dart';
class _10_active_timer extends StatefulWidget {
	const _10_active_timer({super.key});
	@override
	_10_active_timerState createState() => _10_active_timerState();
}
class _10_active_timerState extends State<_10_active_timer> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/9k66yppd_expires_30_days.png",
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
																			padding: const EdgeInsets.only( top: 4, bottom: 4, left: 12, right: 12),
																			width: double.infinity,
																			child: Row(
																				children: [
																					Container(
																						margin: const EdgeInsets.only( right: 8),
																						width: 40,
																						height: 48,
																						child: Image.network(
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/depvx1ch_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Focus time",
																						style: TextStyle(
																							color: Color(0xFF292E28),
																							fontSize: 22,
																						),
																					),
																					Expanded(
																						child: Container(
																							width: double.infinity,
																							child: SizedBox(),
																						),
																					),
																					Text(
																						"End session",
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
																	IntrinsicHeight(
																		child: Container(
																			padding: const EdgeInsets.only( top: 20, bottom: 20, left: 24, right: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 38),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( bottom: 8),
																												child: Row(
																													children: [
																														Container(
																															margin: const EdgeInsets.only( right: 8),
																															width: 24,
																															height: 24,
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/vhz9bryy_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														),
																														Text(
																															"Academic",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 22,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									Text(
																										"Just this, for now.",
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
																							margin: const EdgeInsets.only( bottom: 38),
																							width: double.infinity,
																							child: Column(
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 16, left: 16, right: 16),
																										height: 280,
																										width: double.infinity,
																										child: Image.network(
																											"https://i.imgur.com/1tMFzp8.png",
																											fit: BoxFit.fill,
																										)
																									),
																									Text(
																										"Running since 8:26 AM · 1h 15m used",
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
																							margin: const EdgeInsets.only( bottom: 38),
																							width: double.infinity,
																							child: Row(
																								children: [
																									Expanded(
																										child: InkWell(
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
																													margin: const EdgeInsets.only( right: 12),
																													width: double.infinity,
																													child: Column(
																														children: [
																															Text(
																																"Pause",
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
																													child: Column(
																														children: [
																															Text(
																																"Switch",
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
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"MOVE TO SOMETHING ELSE",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(16),
																																	color: Color(0xFFEBD3BC),
																																),
																																padding: const EdgeInsets.symmetric(vertical: 14),
																																margin: const EdgeInsets.only( right: 8),
																																width: double.infinity,
																																child: Column(
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(16),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 22,
																																			height: 22,
																																			child: ClipRRect(
																																				borderRadius: BorderRadius.circular(16),
																																				child: Image.network(
																																					"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/wm4utki8_expires_30_days.png",
																																					fit: BoxFit.fill,
																																				)
																																			)
																																		),
																																		Text(
																																			"Life/Family",
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
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(16),
																																	color: Color(0xFFC9DEDA),
																																),
																																padding: const EdgeInsets.symmetric(vertical: 14),
																																margin: const EdgeInsets.only( right: 9),
																																width: double.infinity,
																																child: Column(
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(16),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 22,
																																			height: 22,
																																			child: ClipRRect(
																																				borderRadius: BorderRadius.circular(16),
																																				child: Image.network(
																																					"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/wpfkjv9y_expires_30_days.png",
																																					fit: BoxFit.fill,
																																				)
																																			)
																																		),
																																		Text(
																																			"Career",
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
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(16),
																																	color: Color(0xFFE9CFCE),
																																),
																																padding: const EdgeInsets.symmetric(vertical: 14),
																																width: double.infinity,
																																child: Column(
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(16),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 22,
																																			height: 22,
																																			child: ClipRRect(
																																				borderRadius: BorderRadius.circular(16),
																																				child: Image.network(
																																					"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/28c40r1f_expires_30_days.png",
																																					fit: BoxFit.fill,
																																				)
																																			)
																																		),
																																		Text(
																																			"Rest/Recovery",
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
																												]
																											),
																										),
																									),
																									Container(
																										width: double.infinity,
																										child: Text(
																											"Switching pauses Academic. Your time stays here.",
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