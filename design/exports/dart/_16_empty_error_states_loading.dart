import 'package:flutter/material.dart';
class _16_empty_error_states_loading extends StatefulWidget {
	const _16_empty_error_states_loading({super.key});
	@override
	_16_empty_error_states_loadingState createState() => _16_empty_error_states_loadingState();
}
class _16_empty_error_states_loadingState extends State<_16_empty_error_states_loading> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/qa12b41i_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ib5fnrtw_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Today",
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
																			padding: const EdgeInsets.only( top: 8, right: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Container(
																						margin: const EdgeInsets.only( bottom: 16, left: 24),
																						child: Text(
																							"Loading your day…",
																							style: TextStyle(
																								color: Color(0xFF62675D),
																								fontSize: 14,
																							),
																						),
																					),
																					Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(4),
																							color: Color(0xFFDDDCD2),
																						),
																						margin: const EdgeInsets.only( bottom: 16, left: 24),
																						width: 232,
																						height: 24,
																						child: SizedBox(),
																					),
																					Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(8),
																							color: Color(0xFFDDDCD2),
																						),
																						margin: const EdgeInsets.only( bottom: 16, left: 24),
																						width: 144,
																						height: 40,
																						child: SizedBox(),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 44, left: 24),
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
																											padding: const EdgeInsets.only( top: 40, bottom: 40, left: 16, right: 16),
																											margin: const EdgeInsets.only( bottom: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 120,
																																			height: 12,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			width: 80,
																																			height: 8,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFDDDCD2),
																														),
																														width: 48,
																														height: 32,
																														child: SizedBox(),
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
																											padding: const EdgeInsets.only( top: 18, bottom: 18, left: 16, right: 16),
																											margin: const EdgeInsets.only( bottom: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 120,
																																			height: 12,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			width: 80,
																																			height: 8,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFDDDCD2),
																														),
																														width: 48,
																														height: 32,
																														child: SizedBox(),
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
																											padding: const EdgeInsets.only( top: 18, bottom: 18, left: 16, right: 16),
																											margin: const EdgeInsets.only( bottom: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 120,
																																			height: 12,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			width: 80,
																																			height: 8,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFDDDCD2),
																														),
																														width: 48,
																														height: 32,
																														child: SizedBox(),
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
																											padding: const EdgeInsets.only( top: 18, bottom: 18, left: 16, right: 16),
																											margin: const EdgeInsets.only( bottom: 12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 120,
																																			height: 12,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			width: 80,
																																			height: 8,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFDDDCD2),
																														),
																														width: 48,
																														height: 32,
																														child: SizedBox(),
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
																											padding: const EdgeInsets.only( top: 18, bottom: 18, left: 16, right: 16),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			margin: const EdgeInsets.only( bottom: 8),
																																			width: 120,
																																			height: 12,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(4),
																																				color: Color(0xFFDDDCD2),
																																			),
																																			width: 80,
																																			height: 8,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFFDDDCD2),
																														),
																														width: 48,
																														height: 32,
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/g3esfl2w_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/vuz6y2ql_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/hbkamg1v_expires_30_days.png",
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