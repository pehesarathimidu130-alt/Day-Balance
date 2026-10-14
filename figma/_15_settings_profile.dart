import 'package:flutter/material.dart';
class _15_settings_profile extends StatefulWidget {
	const _15_settings_profile({super.key});
	@override
	_15_settings_profileState createState() => _15_settings_profileState();
}
class _15_settings_profileState extends State<_15_settings_profile> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/rnhxgigp_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/jzcd2fq0_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Your profile",
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
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 16, left: 24),
																							width: double.infinity,
																							child: Row(
																								children: [
																									InkWell(
																										onTap: () { print('Pressed'); },
																										child: IntrinsicWidth(
																											child: IntrinsicHeight(
																												child: Container(
																													decoration: BoxDecoration(
																														borderRadius: BorderRadius.circular(100),
																														color: Color(0xFFE0E8DB),
																													),
																													padding: const EdgeInsets.only( top: 13, bottom: 13, left: 10, right: 10),
																													margin: const EdgeInsets.only( right: 16),
																													child: Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															Text(
																																"MC",
																																style: TextStyle(
																																	color: Color(0xFF49664D),
																																	fontSize: 18,
																																),
																															),
																														]
																													),
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
																														Container(
																															margin: const EdgeInsets.only( bottom: 4),
																															child: Text(
																																"Maya Chen",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 22,
																																),
																															),
																														),
																														Text(
																															"maya.chen@university.edu",
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
																							margin: const EdgeInsets.only( bottom: 16, left: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"YOUR DAY",
																											style: TextStyle(
																												color: Color(0xFF49664D),
																												fontSize: 12,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 9),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/671wx64z_expires_30_days.png",
																															fit: BoxFit.fill,
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
																																				"Edit schedule",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 16,
																																				),
																																			),
																																		),
																																		Text(
																																			"7:00 AM – 11:00 PM · 16h awake",
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
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/0t2rs22d_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 9),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/8xfcqt38_expires_30_days.png",
																															fit: BoxFit.fill,
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
																																				"Edit routines",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 16,
																																				),
																																			),
																																		),
																																		Text(
																																			"45m morning · 45m wind-up",
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
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/znxkze71_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 9),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/mxwt5ahb_expires_30_days.png",
																															fit: BoxFit.fill,
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
																																				"Edit categories",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 16,
																																				),
																																			),
																																		),
																																		Text(
																																			"7 categories in your daily plan",
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
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/qckvhj8r_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 11),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/hjcdjx6e_expires_30_days.png",
																															fit: BoxFit.fill,
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
																																				"Timer notifications",
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 16,
																																				),
																																			),
																																		),
																																		Text(
																																			"A gentle alert when time is up",
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
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																														),
																														width: 52,
																														height: 32,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(100),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/t2nyxu94_expires_30_days.png",
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
																					Container(
																						color: Color(0xFFDDDCD2),
																						margin: const EdgeInsets.only( bottom: 16, left: 24),
																						height: 1,
																						width: double.infinity,
																						child: SizedBox(),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 16, left: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"ACCOUNT",
																											style: TextStyle(
																												color: Color(0xFF49664D),
																												fontSize: 12,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 13),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/busuljja_expires_30_days.png",
																															fit: BoxFit.fill,
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
																																		Text(
																																			"Change password",
																																			style: TextStyle(
																																				color: Color(0xFF292E28),
																																				fontSize: 16,
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/xqsxyk02_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 13),
																											margin: const EdgeInsets.only( bottom: 4),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/3j69s6fm_expires_30_days.png",
																															fit: BoxFit.fill,
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
																																		Text(
																																			"Log out",
																																			style: TextStyle(
																																				color: Color(0xFF292E28),
																																				fontSize: 16,
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ga0q7m1y_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													),
																												]
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											padding: const EdgeInsets.symmetric(vertical: 13),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														margin: const EdgeInsets.only( right: 12),
																														width: 22,
																														height: 22,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/b23riugm_expires_30_days.png",
																															fit: BoxFit.fill,
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
																																		Text(
																																			"Delete account",
																																			style: TextStyle(
																																				color: Color(0xFFA43B32),
																																				fontSize: 16,
																																			),
																																		),
																																	]
																																),
																															),
																														),
																													),
																													Container(
																														width: 20,
																														height: 20,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/jlpo5c94_expires_30_days.png",
																															fit: BoxFit.fill,
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
																					Container(
																						margin: const EdgeInsets.only( bottom: 24, left: 24),
																						child: Text(
																							"Day-Balance · Version 1.0",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/5ddjpvyi_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/55jl4hff_expires_30_days.png",
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
																									"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/7zrf48oj_expires_30_days.png",
																									fit: BoxFit.fill,
																								)
																							)
																						),
																						Text(
																							"Profile",
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