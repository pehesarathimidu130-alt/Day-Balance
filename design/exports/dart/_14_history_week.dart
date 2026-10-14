import 'package:flutter/material.dart';
class _14_history_week extends StatefulWidget {
	const _14_history_week({super.key});
	@override
	_14_history_weekState createState() => _14_history_weekState();
}
class _14_history_weekState extends State<_14_history_week> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/g6ei29kl_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/pf8vjqnt_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Your week",
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
																						"Today",
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
																			padding: const EdgeInsets.only( bottom: 45, right: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 12, left: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 12),
																											width: double.infinity,
																											child: Row(
																												mainAxisAlignment: MainAxisAlignment.spaceBetween,
																												children: [
																													Container(
																														width: 24,
																														height: 24,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/x3nywn1f_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													),
																													Text(
																														"12 – 18 October 2026",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 16,
																														),
																													),
																													Container(
																														width: 24,
																														height: 24,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ybura9id_expires_30_days.png",
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
																													Text(
																														"39h 30m",
																														style: TextStyle(
																															color: Color(0xFF49664D),
																															fontSize: 28,
																														),
																													),
																													Text(
																														"tracked across 3 days · actual hours",
																														style: TextStyle(
																															color: Color(0xFF62675D),
																															fontSize: 12,
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
																							margin: const EdgeInsets.only( bottom: 12, left: 24),
																							width: double.infinity,
																							child: Row(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 55),
																															child: Text(
																																"16h",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 10,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 55),
																															child: Text(
																																"8h",
																																style: TextStyle(
																																	color: Color(0xFF62675D),
																																	fontSize: 10,
																																),
																															),
																														),
																														Text(
																															"0h",
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
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( bottom: 3),
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(4),
																																),
																																padding: const EdgeInsets.only( top: 33),
																																margin: const EdgeInsets.only( bottom: 8, left: 3, right: 3),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			color: Color(0xFFD4DEE5),
																																			width: 26,
																																			height: 33,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFEBD3BC),
																																			width: 26,
																																			height: 19,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFDDD3E4),
																																			height: 14,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFD9E2CF),
																																			margin: const EdgeInsets.only( bottom: 1),
																																			height: 14,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFC9DEDA),
																																			height: 14,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFDEDED8),
																																			margin: const EdgeInsets.only( bottom: 1),
																																			height: 4,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFE9CFCE),
																																			width: 26,
																																			height: 19,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																														Text(
																															"M",
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
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( bottom: 3),
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(4),
																																),
																																padding: const EdgeInsets.only( top: 28),
																																margin: const EdgeInsets.only( bottom: 8, left: 3, right: 3),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			color: Color(0xFFD4DEE5),
																																			height: 38,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFEBD3BC),
																																			width: 26,
																																			height: 19,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFDDD3E4),
																																			height: 14,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFD9E2CF),
																																			width: 26,
																																			height: 19,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFC9DEDA),
																																			margin: const EdgeInsets.only( bottom: 1),
																																			height: 14,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFDEDED8),
																																			height: 4,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFE9CFCE),
																																			margin: const EdgeInsets.only( bottom: 1),
																																			height: 14,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																														Text(
																															"T",
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
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( bottom: 3),
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													children: [
																														IntrinsicHeight(
																															child: Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(4),
																																),
																																padding: const EdgeInsets.only( top: 19),
																																margin: const EdgeInsets.only( bottom: 8, left: 3, right: 3),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			color: Color(0xFFD4DEE5),
																																			height: 40,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFEBD3BC),
																																			width: 26,
																																			height: 19,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFDDD3E4),
																																			margin: const EdgeInsets.only( bottom: 1),
																																			width: 26,
																																			height: 16,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFD9E2CF),
																																			width: 26,
																																			height: 19,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFC9DEDA),
																																			height: 14,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFDEDED8),
																																			margin: const EdgeInsets.only( bottom: 1),
																																			height: 4,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																		Container(
																																			color: Color(0xFFE9CFCE),
																																			width: 26,
																																			height: 19,
																																			child: SizedBox(),
																																		),
																																	]
																																),
																															),
																														),
																														Text(
																															"W",
																															style: TextStyle(
																																color: Color(0xFF49664D),
																																fontSize: 11,
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
																												padding: const EdgeInsets.only( bottom: 3),
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(4),
																																color: Color(0xFFEEE8DC),
																															),
																															margin: const EdgeInsets.only( bottom: 8, left: 4, right: 4),
																															height: 152,
																															width: double.infinity,
																															child: SizedBox(),
																														),
																														Text(
																															"T",
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
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( bottom: 3),
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(4),
																																color: Color(0xFFEEE8DC),
																															),
																															margin: const EdgeInsets.only( bottom: 8, left: 4, right: 4),
																															height: 152,
																															width: double.infinity,
																															child: SizedBox(),
																														),
																														Text(
																															"F",
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
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( bottom: 3),
																												margin: const EdgeInsets.only( right: 8),
																												width: double.infinity,
																												child: Column(
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(4),
																																color: Color(0xFFEEE8DC),
																															),
																															margin: const EdgeInsets.only( bottom: 8, left: 4, right: 4),
																															height: 152,
																															width: double.infinity,
																															child: SizedBox(),
																														),
																														Text(
																															"S",
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
																									Expanded(
																										child: IntrinsicHeight(
																											child: Container(
																												padding: const EdgeInsets.only( bottom: 3),
																												width: double.infinity,
																												child: Column(
																													children: [
																														Container(
																															decoration: BoxDecoration(
																																borderRadius: BorderRadius.circular(4),
																																color: Color(0xFFEEE8DC),
																															),
																															margin: const EdgeInsets.only( bottom: 8, left: 4, right: 4),
																															height: 152,
																															width: double.infinity,
																															child: SizedBox(),
																														),
																														Text(
																															"S",
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 12, left: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 3),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(2),
																															color: Color(0xFFD4DEE5),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 10,
																														height: 10,
																														child: SizedBox(),
																													),
																													Text(
																														"Academic",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 13,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													Text(
																														"11h 45m",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 12,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 3),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(2),
																															color: Color(0xFFEBD3BC),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 10,
																														height: 10,
																														child: SizedBox(),
																													),
																													Text(
																														"Life/Family",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 13,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													Text(
																														"6h 00m",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 12,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 3),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(2),
																															color: Color(0xFFDDD3E4),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 10,
																														height: 10,
																														child: SizedBox(),
																													),
																													Text(
																														"Entertainment",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 13,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													Text(
																														"4h 45m",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 12,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 3),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(2),
																															color: Color(0xFFD9E2CF),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 10,
																														height: 10,
																														child: SizedBox(),
																													),
																													Text(
																														"Personal/Reading",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 13,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													Text(
																														"5h 30m",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 12,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 3),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(2),
																															color: Color(0xFFC9DEDA),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 10,
																														height: 10,
																														child: SizedBox(),
																													),
																													Text(
																														"Career",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 13,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													Text(
																														"4h 30m",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 12,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 3),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(2),
																															color: Color(0xFFDEDED8),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 10,
																														height: 10,
																														child: SizedBox(),
																													),
																													Text(
																														"Unplanned/Extra capacity",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 13,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													Text(
																														"1h 30m",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 12,
																														),
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 3),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(2),
																															color: Color(0xFFE9CFCE),
																														),
																														margin: const EdgeInsets.only( right: 8),
																														width: 10,
																														height: 10,
																														child: SizedBox(),
																													),
																													Text(
																														"Rest/Recovery",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 13,
																														),
																													),
																													Expanded(
																														child: Container(
																															width: double.infinity,
																															child: SizedBox(),
																														),
																													),
																													Text(
																														"5h 30m",
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 12,
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
																								color: Color(0xFFE0E8DB),
																							),
																							padding: const EdgeInsets.all(12),
																							margin: const EdgeInsets.only( bottom: 12, left: 24),
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
																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/irkzn01u_expires_30_days.png",
																												fit: BoxFit.fill,
																											)
																										)
																									),
																									Expanded(
																										child: Container(
																											width: double.infinity,
																											child: Text(
																												"There’s no perfect pattern. This is a picture of your week, not a score.",
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
																					Container(
																						margin: const EdgeInsets.only( left: 24),
																						width: 278,
																						child: Text(
																							"Tap a day to see planned vs actual. Thu–Sun are still ahead.",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/eqvbtqgv_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/6ln90ymc_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/xrmrp5h1_expires_30_days.png",
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