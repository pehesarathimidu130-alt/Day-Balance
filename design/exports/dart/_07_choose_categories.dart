import 'package:flutter/material.dart';
class _07_choose_categories extends StatefulWidget {
	const _07_choose_categories({super.key});
	@override
	_07_choose_categoriesState createState() => _07_choose_categoriesState();
}
class _07_choose_categoriesState extends State<_07_choose_categories> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/7e2311ar_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/bcjftkoi_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Your categories",
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
																							padding: const EdgeInsets.only( right: 36),
																							margin: const EdgeInsets.only( bottom: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										width: double.infinity,
																										child: Text(
																											"What fills your day?",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 32,
																											),
																										),
																									),
																									Container(
																										width: double.infinity,
																										child: Text(
																											"Keep what fits. You can change these later.",
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
																							margin: const EdgeInsets.only( bottom: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFD4DEE5),
																											),
																											padding: const EdgeInsets.only( top: 4, bottom: 4, left: 12, right: 12),
																											margin: const EdgeInsets.only( bottom: 8),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/f1w7nfm6_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
																																width: double.infinity,
																																child: Column(
																																	crossAxisAlignment: CrossAxisAlignment.start,
																																	children: [
																																		Container(
																																			margin: const EdgeInsets.only( bottom: 2),
																																			child: Text(
																																				"Academic",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 14,
																																				),
																																			),
																																		),
																																		Container(
																																			width: double.infinity,
																																			child: Text(
																																				"assignments, projects, tutorials, lab sheets",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 12,
																																				),
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(3),
																														),
																														width: 18,
																														height: 18,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(3),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/8dvjuwn5_expires_30_days.png",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFEBD3BC),
																											),
																											padding: const EdgeInsets.all(12),
																											margin: const EdgeInsets.only( bottom: 8),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/72ciuxda_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
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
																																					fontSize: 14,
																																				),
																																			),
																																		),
																																		Text(
																																			"chores, errands, family time",
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
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(3),
																														),
																														width: 18,
																														height: 18,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(3),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/osk3tsf5_expires_30_days.png",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFDDD3E4),
																											),
																											padding: const EdgeInsets.all(12),
																											margin: const EdgeInsets.only( bottom: 8),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/0kb9btgh_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
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
																																					fontSize: 14,
																																				),
																																			),
																																		),
																																		Text(
																																			"videos, games, social media",
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
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(3),
																														),
																														width: 18,
																														height: 18,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(3),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/m5fm5wfq_expires_30_days.png",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFD9E2CF),
																											),
																											padding: const EdgeInsets.all(12),
																											margin: const EdgeInsets.only( bottom: 8),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/pcev811e_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
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
																																					fontSize: 14,
																																				),
																																			),
																																		),
																																		Text(
																																			"reading, hobbies, exercise",
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
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(3),
																														),
																														width: 18,
																														height: 18,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(3),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/15xnfovz_expires_30_days.png",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFC9DEDA),
																											),
																											padding: const EdgeInsets.all(12),
																											margin: const EdgeInsets.only( bottom: 8),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/zpst0c99_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
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
																																					fontSize: 14,
																																				),
																																			),
																																		),
																																		Container(
																																			width: double.infinity,
																																			child: Text(
																																				"freelancing, portfolio, job applications",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 12,
																																				),
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(3),
																														),
																														width: 18,
																														height: 18,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(3),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/t4165p80_expires_30_days.png",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFDEDED8),
																											),
																											padding: const EdgeInsets.all(12),
																											margin: const EdgeInsets.only( bottom: 8),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/p0u2k8zp_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
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
																																					fontSize: 14,
																																				),
																																			),
																																		),
																																		Text(
																																			"buffer for surprises",
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
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(3),
																														),
																														width: 18,
																														height: 18,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(3),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/z84m1nrc_expires_30_days.png",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFE9CFCE),
																											),
																											padding: const EdgeInsets.all(12),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/xmjbl5kq_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																margin: const EdgeInsets.only( right: 12),
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
																																					fontSize: 14,
																																				),
																																			),
																																		),
																																		Text(
																																			"naps, breaks, screen-free time",
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
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(3),
																														),
																														width: 18,
																														height: 18,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(3),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ubb6pjuo_expires_30_days.png",
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
																					IntrinsicHeight(
																						child: Container(
																							padding: const EdgeInsets.only( top: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"7 categories selected",
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
																															"Plan my day",
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