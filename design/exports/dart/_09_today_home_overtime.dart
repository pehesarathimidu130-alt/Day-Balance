import 'package:flutter/material.dart';
class _09_today_home_overtime extends StatefulWidget {
	const _09_today_home_overtime({super.key});
	@override
	_09_today_home_overtimeState createState() => _09_today_home_overtimeState();
}
class _09_today_home_overtimeState extends State<_09_today_home_overtime> {
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
																		"12:38",
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/der3p0cl_expires_30_days.png",
																			fit: BoxFit.fill,
																		)
																	),
																]
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															padding: const EdgeInsets.only( bottom: 14, left: 24, right: 24),
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
																												margin: const EdgeInsets.only( bottom: 49),
																												child: Text(
																													"Good afternoon, Maya.",
																													style: TextStyle(
																														color: Color(0xFF292E28),
																														fontSize: 24,
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
																						right: 0,
																						child: IntrinsicHeight(
																							child: Container(
																								transform: Matrix4.translationValues(0, 6, 0),
																								width: double.infinity,
																								child: Column(
																									crossAxisAlignment: CrossAxisAlignment.start,
																									children: [
																										IntrinsicHeight(
																											child: Container(
																												width: double.infinity,
																												child: Row(
																													children: [
																														Expanded(
																															child: IntrinsicHeight(
																																child: Container(
																																	width: double.infinity,
																																	child: Column(
																																		crossAxisAlignment: CrossAxisAlignment.start,
																																		children: [
																																			Text(
																																				"Total hours left",
																																				style: TextStyle(
																																					color: Color(0xFF62675D),
																																					fontSize: 12,
																																				),
																																			),
																																			Text(
																																				"10h 30m",
																																				style: TextStyle(
																																					color: Color(0xFF49664D),
																																					fontSize: 28,
																																				),
																																			),
																																		]
																																	),
																																),
																															),
																														),
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(16),
																															),
																															width: 48,
																															height: 48,
																															child: ClipRRect(
																																borderRadius: BorderRadius.circular(16),
																																child: Image.network(
																																	"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/kcb83ppi_expires_30_days.png",
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
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								border: Border.all(
																									color: Color(0xFFA43B32),
																									width: 1,
																								),
																								borderRadius: BorderRadius.circular(16),
																								color: Color(0xFFF6E2DE),
																							),
																							padding: const EdgeInsets.only( top: 15, bottom: 15, left: 12, right: 12),
																							margin: const EdgeInsets.only( bottom: 6),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Row(
																												mainAxisAlignment: MainAxisAlignment.spaceBetween,
																												children: [
																													Text(
																														"Academic",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 14,
																															fontWeight: FontWeight.bold,
																														),
																													),
																													Text(
																														"OVERTIME",
																														style: TextStyle(
																															color: Color(0xFFA43B32),
																															fontSize: 11,
																															fontWeight: FontWeight.bold,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Text(
																																			"+0:12:30 over",
																																			style: TextStyle(
																																				color: Color(0xFFA43B32),
																																				fontSize: 23,
																																			),
																																		),
																																		Text(
																																			"Planned 4h · 4h 12m used",
																																			style: TextStyle(
																																				color: Color(0xFF62675D),
																																				fontSize: 11,
																																			),
																																		),
																																	]
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
																																		color: Color(0xFF49664D),
																																	),
																																	padding: const EdgeInsets.only( top: 12, bottom: 12, left: 15, right: 15),
																																	child: Column(
																																		crossAxisAlignment: CrossAxisAlignment.start,
																																		children: [
																																			Text(
																																				"Pause",
																																				style: TextStyle(
																																					color: Color(0xFFFFFFFF),
																																					fontSize: 12,
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
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(12),
																								color: Color(0xFFFFFCF7),
																							),
																							padding: const EdgeInsets.only( top: 11, bottom: 11, left: 12, right: 12),
																							margin: const EdgeInsets.only( bottom: 6),
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
																										height: 40,
																										child: SizedBox(),
																									),
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 2),
																															child: Text(
																																"Life/Family",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 13,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 1),
																															child: Text(
																																"Planned 2h 00m",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 11,
																																),
																															),
																														),
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFDDDCD2),
																															),
																															width: 118,
																															height: 4,
																															child: SizedBox(),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( right: 23),
																												margin: const EdgeInsets.only( right: 8),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"2:00",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 21,
																															),
																														),
																														Text(
																															"remaining",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 10,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(100),
																												),
																												padding: const EdgeInsets.only( top: 13, bottom: 13, left: 7, right: 7),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Start",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(12),
																								color: Color(0xFFFFFCF7),
																							),
																							padding: const EdgeInsets.only( top: 11, bottom: 11, left: 12, right: 12),
																							margin: const EdgeInsets.only( bottom: 6),
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
																										height: 40,
																										child: SizedBox(),
																									),
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 2),
																															child: Text(
																																"Entertainment",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 13,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 1),
																															child: Text(
																																"Planned 2h 00m",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 11,
																																),
																															),
																														),
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFDDDCD2),
																															),
																															width: 118,
																															height: 4,
																															child: SizedBox(),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( right: 23),
																												margin: const EdgeInsets.only( right: 8),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"2:00",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 21,
																															),
																														),
																														Text(
																															"remaining",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 10,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(100),
																												),
																												padding: const EdgeInsets.only( top: 13, bottom: 13, left: 7, right: 7),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Start",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(12),
																								color: Color(0xFFFFFCF7),
																							),
																							padding: const EdgeInsets.only( top: 11, bottom: 11, left: 12, right: 12),
																							margin: const EdgeInsets.only( bottom: 6),
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
																										height: 40,
																										child: SizedBox(),
																									),
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 2),
																															child: Text(
																																"Personal/Reading",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 13,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 1),
																															child: Text(
																																"Planned 2h 00m",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 11,
																																),
																															),
																														),
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFDDDCD2),
																															),
																															width: 118,
																															height: 4,
																															child: SizedBox(),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( right: 23),
																												margin: const EdgeInsets.only( right: 8),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"2:00",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 21,
																															),
																														),
																														Text(
																															"remaining",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 10,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(100),
																												),
																												padding: const EdgeInsets.only( top: 13, bottom: 13, left: 7, right: 7),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Start",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(12),
																								color: Color(0xFFFFFCF7),
																							),
																							padding: const EdgeInsets.only( top: 11, bottom: 11, left: 12, right: 12),
																							margin: const EdgeInsets.only( bottom: 6),
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
																										height: 40,
																										child: SizedBox(),
																									),
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 2),
																															child: Text(
																																"Career",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 13,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 1),
																															child: Text(
																																"Planned 1h 30m",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 11,
																																),
																															),
																														),
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFDDDCD2),
																															),
																															width: 118,
																															height: 4,
																															child: SizedBox(),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( right: 24),
																												margin: const EdgeInsets.only( right: 8),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"1:30",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 21,
																															),
																														),
																														Text(
																															"remaining",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 10,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(100),
																												),
																												padding: const EdgeInsets.only( top: 13, bottom: 13, left: 7, right: 7),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Start",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(12),
																								color: Color(0xFFFFFCF7),
																							),
																							padding: const EdgeInsets.only( top: 11, bottom: 11, left: 12, right: 12),
																							margin: const EdgeInsets.only( bottom: 6),
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
																										height: 40,
																										child: SizedBox(),
																									),
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 2),
																															child: Text(
																																"Unplanned/Extra capacity",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 13,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 1),
																															child: Text(
																																"Planned 1h 00m",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 11,
																																),
																															),
																														),
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFDDDCD2),
																															),
																															width: 118,
																															height: 4,
																															child: SizedBox(),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( right: 24),
																												margin: const EdgeInsets.only( right: 8),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"1:00",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 21,
																															),
																														),
																														Text(
																															"remaining",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 10,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(100),
																												),
																												padding: const EdgeInsets.only( top: 13, bottom: 13, left: 7, right: 7),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Start",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(12),
																								color: Color(0xFFFFFCF7),
																							),
																							padding: const EdgeInsets.only( top: 11, bottom: 11, left: 12, right: 12),
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
																										height: 40,
																										child: SizedBox(),
																									),
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 2),
																															child: Text(
																																"Rest/Recovery",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 13,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 1),
																															child: Text(
																																"Planned 2h 00m",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 11,
																																),
																															),
																														),
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(100),
																																color: Color(0xFFDDDCD2),
																															),
																															width: 118,
																															height: 4,
																															child: SizedBox(),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( right: 23),
																												margin: const EdgeInsets.only( right: 8),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"2:00",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 21,
																															),
																														),
																														Text(
																															"remaining",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 10,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(100),
																												),
																												padding: const EdgeInsets.only( top: 13, bottom: 13, left: 7, right: 7),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"Start",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/pnqqzy5l_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/tdhpydjm_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/1d11mmgk_expires_30_days.png",
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