import 'package:flutter/material.dart';
class _16_empty_error_states_session_expired extends StatefulWidget {
	const _16_empty_error_states_session_expired({super.key});
	@override
	_16_empty_error_states_session_expiredState createState() => _16_empty_error_states_session_expiredState();
}
class _16_empty_error_states_session_expiredState extends State<_16_empty_error_states_session_expired> {
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/zcofdbub_expires_30_days.png",
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
																							"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/iiwr9ouf_expires_30_days.png",
																							fit: BoxFit.fill,
																						)
																					),
																					Text(
																						"Day-Balance",
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
																			padding: const EdgeInsets.only( top: 48, left: 24, right: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 214),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											borderRadius: BorderRadius.circular(16),
																										),
																										margin: const EdgeInsets.only( bottom: 24),
																										width: 64,
																										height: 64,
																										child: ClipRRect(
																											borderRadius: BorderRadius.circular(16),
																											child: Image.network(
																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/d08rq4pg_expires_30_days.png",
																												fit: BoxFit.fill,
																											)
																										)
																									),
																									IntrinsicHeight(
																										child: Container(
																											margin: const EdgeInsets.only( bottom: 24),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8),
																														child: Text(
																															"Session expired.",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 32,
																															),
																														),
																													),
																													Container(
																														width: double.infinity,
																														child: Text(
																															"For your security, please log in again. Your saved plans will be here when you return.",
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
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFFFFCF7),
																											),
																											padding: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 8),
																														child: Text(
																															"YOUR ACCOUNT",
																															style: TextStyle(
																																color: Color(0xFF62675D),
																																fontSize: 12,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 8),
																														child: Text(
																															"Maya Chen",
																															style: TextStyle(
																																color: Color(0xFF292E28),
																																fontSize: 16,
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
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
																												margin: const EdgeInsets.only( bottom: 12),
																												width: double.infinity,
																												child: Column(
																													children: [
																														Text(
																															"Log in again",
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
																									InkWell(
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
																															"Use a different account",
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