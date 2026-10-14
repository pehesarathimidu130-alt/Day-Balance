import 'package:flutter/material.dart';
class _06_onboarding_result extends StatefulWidget {
	const _06_onboarding_result({super.key});
	@override
	_06_onboarding_resultState createState() => _06_onboarding_resultState();
}
class _06_onboarding_resultState extends State<_06_onboarding_result> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/b6omn1gx_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/jz38fszx_expires_30_days.png",
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
																							margin: const EdgeInsets.only( bottom: 114),
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
																															"YOUR DAY · 3 OF 3",
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
																																				color: Color(0xFF49664D),
																																			),
																																			margin: const EdgeInsets.only( right: 8),
																																			height: 4,
																																			width: double.infinity,
																																			child: SizedBox(),
																																		),
																																	),
																																	Expanded(
																																		child: Container(
																																			decoration: BoxDecoration(
																																				borderRadius: BorderRadius.circular(100),
																																				color: Color(0xFF49664D),
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
																									Container(
																										margin: const EdgeInsets.only( bottom: 32),
																										height: 80,
																										width: double.infinity,
																										child: Image.network(
																											"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/yt7245h4_expires_30_days.png",
																											fit: BoxFit.fill,
																										)
																									),
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
																															"You have",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 32,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 8),
																														child: Text(
																															"14h 30m",
																															style: TextStyle(
																																color: Color(0xFF49664D),
																																fontSize: 48,
																															),
																														),
																													),
																													Container(
																														width: double.infinity,
																														child: Text(
																															"per day. Let’s plan it.",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 32,
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
																															margin: const EdgeInsets.only( bottom: 12),
																															width: double.infinity,
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Hours awake",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 14,
																																		),
																																	),
																																	Text(
																																		"16h 00m",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 14,
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
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Morning routine",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 14,
																																		),
																																	),
																																	Text(
																																		"− 45m",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 14,
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
																															child: Row(
																																mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																children: [
																																	Text(
																																		"Wind-up routine",
																																		style: TextStyle(
																																			color: Color(0xFF62675D),
																																			fontSize: 14,
																																		),
																																	),
																																	Text(
																																		"− 45m",
																																		style: TextStyle(
																																			color: Color(0xFF292E28),
																																			fontSize: 14,
																																		),
																																	),
																																]
																															),
																														),
																													),
																													Container(
																														color: Color(0xFFDDDCD2),
																														margin: const EdgeInsets.only( bottom: 12),
																														height: 1,
																														width: double.infinity,
																														child: SizedBox(),
																													),
																													Container(
																														width: double.infinity,
																														child: Text(
																															"Not every hour needs a job. A little breathing room is part of a good plan.",
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
																									color: Color(0xFF49664D),
																								),
																								padding: const EdgeInsets.symmetric(vertical: 14),
																								margin: const EdgeInsets.only( bottom: 24),
																								width: double.infinity,
																								child: Column(
																									children: [
																										Text(
																											"Choose my categories",
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