import 'package:flutter/material.dart';
class _02_register extends StatefulWidget {
	const _02_register({super.key});
	@override
	_02_registerState createState() => _02_registerState();
}
class _02_registerState extends State<_02_register> {
	String textField1 = '';
	String textField2 = '';
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
																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/81ylwnpa_expires_30_days.png",
																			fit: BoxFit.fill,
																		)
																	),
																]
															),
														),
													),
													Container(
														height: 56,
														width: double.infinity,
														child: Image.network(
															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/q1euvcb2_expires_30_days.png",
															fit: BoxFit.fill,
														)
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
																			padding: const EdgeInsets.only( bottom: 4),
																			margin: const EdgeInsets.only( bottom: 24),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Container(
																						margin: const EdgeInsets.only( bottom: 8),
																						child: Text(
																							"Start with you.",
																							style: TextStyle(
																								color: Color(0xFF292E28),
																								fontSize: 32,
																							),
																						),
																					),
																					Text(
																						"Create your Day-Balance account.",
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
																			width: double.infinity,
																			child: Stack(
																				clipBehavior: Clip.none,
																				children: [
																					Column(
																						crossAxisAlignment: CrossAxisAlignment.start,
																						children: [
																							IntrinsicHeight(
																								child: Container(
																									width: double.infinity,
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											IntrinsicHeight(
																												child: Container(
																													alignment: Alignment.center,
																													decoration: BoxDecoration(
																														border: Border.all(
																															color: Color(0xFF85897D),
																															width: 1,
																														),
																														borderRadius: BorderRadius.circular(4),
																													),
																													margin: const EdgeInsets.only( bottom: 16),
																													width: double.infinity,
																													child: TextField(
																														style: TextStyle(
																															color: Color(0xFF292E28),
																															fontSize: 16,
																														),
																														onChanged: (value) { 
																															setState(() { textField1 = value; });
																														},
																														decoration: InputDecoration(
																															hintText: "Maya Chen",
																															isDense: true,
																															contentPadding: const EdgeInsets.all(16),
																															border: InputBorder.none,
																															focusedBorder: InputBorder.none,
																															filled: false,
																														),
																													),
																												),
																											),
																											IntrinsicHeight(
																												child: Container(
																													margin: const EdgeInsets.only( bottom: 16),
																													width: double.infinity,
																													child: Stack(
																														clipBehavior: Clip.none,
																														children: [
																															Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
																																	IntrinsicHeight(
																																		child: Container(
																																			alignment: Alignment.center,
																																			decoration: BoxDecoration(
																																				border: Border.all(
																																					color: Color(0xFF85897D),
																																					width: 1,
																																				),
																																				borderRadius: BorderRadius.circular(4),
																																			),
																																			width: double.infinity,
																																			child: TextField(
																																				style: TextStyle(
																																					color: Color(0xFF292E28),
																																					fontSize: 16,
																																				),
																																				onChanged: (value) { 
																																					setState(() { textField2 = value; });
																																				},
																																				decoration: InputDecoration(
																																					hintText: "maya.chen@university.edu",
																																					isDense: true,
																																					contentPadding: const EdgeInsets.all(16),
																																					border: InputBorder.none,
																																					focusedBorder: InputBorder.none,
																																					filled: false,
																																				),
																																			),
																																		),
																																	),
																																]
																															),
																															Positioned(
																																top: 0,
																																left: 12,
																																child: IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			color: Color(0xFFF8F5EF),
																																			padding: const EdgeInsets.only( left: 4, right: 4),
																																			transform: Matrix4.translationValues(0, -8, 0),
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.start,
																																				children: [
																																					Text(
																																						"Email",
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
																															),
																														]
																													),
																												),
																											),
																											IntrinsicHeight(
																												child: Container(
																													margin: const EdgeInsets.only( bottom: 16),
																													width: double.infinity,
																													child: Stack(
																														clipBehavior: Clip.none,
																														children: [
																															Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
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
																																								borderRadius: BorderRadius.circular(4),
																																							),
																																							padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																																							margin: const EdgeInsets.only( bottom: 4),
																																							width: double.infinity,
																																							child: Row(
																																								mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																								children: [
																																									Text(
																																										"••••••",
																																										style: TextStyle(
																																											color: Color(0xFF292E28),
																																											fontSize: 16,
																																										),
																																									),
																																									Container(
																																										decoration: BoxDecoration(
																																											borderRadius: BorderRadius.circular(4),
																																										),
																																										width: 32,
																																										height: 48,
																																										child: ClipRRect(
																																											borderRadius: BorderRadius.circular(4),
																																											child: Image.network(
																																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/o3sggj1l_expires_30_days.png",
																																												fit: BoxFit.fill,
																																											)
																																										)
																																									),
																																								]
																																							),
																																						),
																																					),
																																					Text(
																																						"Use at least 8 characters.",
																																						style: TextStyle(
																																							color: Color(0xFFA43B32),
																																							fontSize: 12,
																																						),
																																					),
																																				]
																																			),
																																		),
																																	),
																																]
																															),
																															Positioned(
																																top: 0,
																																left: 12,
																																child: IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			color: Color(0xFFF8F5EF),
																																			padding: const EdgeInsets.only( left: 4, right: 4),
																																			transform: Matrix4.translationValues(0, -8, 0),
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.start,
																																				children: [
																																					Text(
																																						"Password",
																																						style: TextStyle(
																																							color: Color(0xFFA43B32),
																																							fontSize: 12,
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
																													child: Stack(
																														clipBehavior: Clip.none,
																														children: [
																															Column(
																																crossAxisAlignment: CrossAxisAlignment.start,
																																children: [
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
																																								borderRadius: BorderRadius.circular(4),
																																							),
																																							padding: const EdgeInsets.only( top: 4, bottom: 4, left: 16, right: 16),
																																							margin: const EdgeInsets.only( bottom: 4),
																																							width: double.infinity,
																																							child: Row(
																																								mainAxisAlignment: MainAxisAlignment.spaceBetween,
																																								children: [
																																									Text(
																																										"••••••••",
																																										style: TextStyle(
																																											color: Color(0xFF292E28),
																																											fontSize: 16,
																																										),
																																									),
																																									Container(
																																										decoration: BoxDecoration(
																																											borderRadius: BorderRadius.circular(4),
																																										),
																																										width: 32,
																																										height: 48,
																																										child: ClipRRect(
																																											borderRadius: BorderRadius.circular(4),
																																											child: Image.network(
																																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/pjrlhrlp_expires_30_days.png",
																																												fit: BoxFit.fill,
																																											)
																																										)
																																									),
																																								]
																																							),
																																						),
																																					),
																																					Text(
																																						"Passwords don’t match. Try again.",
																																						style: TextStyle(
																																							color: Color(0xFFA43B32),
																																							fontSize: 12,
																																						),
																																					),
																																				]
																																			),
																																		),
																																	),
																																]
																															),
																															Positioned(
																																top: 0,
																																left: 12,
																																child: IntrinsicWidth(
																																	child: IntrinsicHeight(
																																		child: Container(
																																			color: Color(0xFFF8F5EF),
																																			padding: const EdgeInsets.only( left: 4, right: 4),
																																			transform: Matrix4.translationValues(0, -8, 0),
																																			child: Column(
																																				crossAxisAlignment: CrossAxisAlignment.start,
																																				children: [
																																					Text(
																																						"Confirm password",
																																						style: TextStyle(
																																							color: Color(0xFFA43B32),
																																							fontSize: 12,
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
																					Positioned(
																						top: 0,
																						left: 12,
																						child: IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									color: Color(0xFFF8F5EF),
																									padding: const EdgeInsets.only( left: 4, right: 4),
																									transform: Matrix4.translationValues(0, -8, 0),
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											Text(
																												"Name",
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
																					),
																				]
																			),
																		),
																	),
																	Container(
																		height: 16,
																		width: double.infinity,
																		child: SizedBox(),
																	),
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Container(
																				width: double.infinity,
																				child: Row(
																					children: [
																						Container(
																							margin: const EdgeInsets.only( right: 8),
																							width: 40,
																							height: 48,
																							child: Image.network(
																								"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/37cshoue_expires_30_days.png",
																								fit: BoxFit.fill,
																							)
																						),
																						Text(
																							"I agree to the Terms of use and Privacy policy.",
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
																		height: 16,
																		width: double.infinity,
																		child: SizedBox(),
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
																							"Create account",
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
																	Container(
																		height: 8,
																		width: double.infinity,
																		child: SizedBox(),
																	),
																	IntrinsicHeight(
																		child: Container(
																			padding: const EdgeInsets.symmetric(vertical: 10),
																			margin: const EdgeInsets.only( bottom: 104),
																			width: double.infinity,
																			child: Column(
																				children: [
																					Text(
																						"Already have an account? Log in",
																						style: TextStyle(
																							color: Color(0xFF62675D),
																							fontSize: 14,
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