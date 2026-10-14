import 'package:flutter/material.dart';
class _12_edit_plan extends StatefulWidget {
	const _12_edit_plan({super.key});
	@override
	_12_edit_planState createState() => _12_edit_planState();
}
class _12_edit_planState extends State<_12_edit_plan> {
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
															color: Color(0x66292E28),
															padding: const EdgeInsets.only( top: 64, bottom: 64, left: 8, right: 8),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			decoration: BoxDecoration(
																				borderRadius: BorderRadius.circular(28),
																				color: Color(0xFFF8F5EF),
																			),
																			padding: const EdgeInsets.all(16),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 16),
																							width: double.infinity,
																							child: Row(
																								mainAxisAlignment: MainAxisAlignment.spaceBetween,
																								children: [
																									Text(
																										"Edit today’s plan",
																										style: TextStyle(
																											color: Color(0xFF292E28),
																											fontSize: 22,
																										),
																									),
																									Container(
																										width: 24,
																										height: 24,
																										child: Image.network(
																											"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/3lj89gwp_expires_30_days.png",
																											fit: BoxFit.fill,
																										)
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
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"Hours left to plan · 14h 30m available",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"0h 00m",
																											style: TextStyle(
																												color: Color(0xFF49664D),
																												fontSize: 28,
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
																															color: Color(0xFF49664D),
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
																							margin: const EdgeInsets.only( bottom: 16),
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/2p4f931f_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/yc83gdzg_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/4srl6si4_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/gmgtwzsg_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/v0avbmoe_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/aohl8xb6_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/5n0xds91_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/x0oevfac_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/g2t1aja7_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/47dqakbs_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/1p4qpbm1_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/gjiprcwn_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/hheav6sy_expires_30_days.png",
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
																																						"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ifdo8zcs_expires_30_days.png",
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
																					Container(
																						margin: const EdgeInsets.only( bottom: 16),
																						width: double.infinity,
																						child: Text(
																							"Used time stays put. Only your plan changes. Academic is still running.",
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
																													margin: const EdgeInsets.only( right: 12),
																													width: double.infinity,
																													child: Column(
																														children: [
																															Text(
																																"Cancel",
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
																													width: double.infinity,
																													child: Column(
																														children: [
																															Text(
																																"Save plan",
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