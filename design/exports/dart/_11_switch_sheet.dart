import 'package:flutter/material.dart';
class _11_switch_sheet extends StatefulWidget {
	const _11_switch_sheet({super.key});
	@override
	_11_switch_sheetState createState() => _11_switch_sheetState();
}
class _11_switch_sheetState extends State<_11_switch_sheet> {
	String textField1 = '';
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
															padding: const EdgeInsets.only( top: 424),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			decoration: BoxDecoration(
																				borderRadius: BorderRadius.only(
																					topLeft: Radius.circular(28),
																					topRight: Radius.circular(28),
																				),
																				color: Color(0xFFF8F5EF),
																			),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicHeight(
																						child: Container(
																							padding: const EdgeInsets.symmetric(vertical: 14),
																							width: double.infinity,
																							child: Column(
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											borderRadius: BorderRadius.circular(100),
																											color: Color(0xFF85897D),
																										),
																										width: 32,
																										height: 4,
																										child: SizedBox(),
																									),
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							padding: const EdgeInsets.only( bottom: 35, right: 24),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 16, left: 24),
																										width: 279,
																										child: Text(
																											"Pause Academic and start Life/Family?",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 24,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 16, left: 24),
																										width: 286,
																										child: Text(
																											"Your 2h 45m in Academic will be waiting when you come back.",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 14,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(16),
																												color: Color(0xFFEBD3BC),
																											),
																											margin: const EdgeInsets.only( bottom: 16, left: 24),
																											width: double.infinity,
																											child: Row(
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(16),
																														),
																														margin: const EdgeInsets.symmetric(horizontal: 12),
																														width: 24,
																														height: 24,
																														child: ClipRRect(
																															borderRadius: BorderRadius.circular(16),
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/o79mqjmk_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														)
																													),
																													Expanded(
																														child: IntrinsicHeight(
																															child: Container(
																																alignment: Alignment.center,
																																margin: const EdgeInsets.only( right: 4),
																																width: double.infinity,
																																child: TextField(
																																	style: TextStyle(
																																		color: Color(0xFF292E28),
																																		fontSize: 14,
																																	),
																																	onChanged: (value) { 
																																		setState(() { textField1 = value; });
																																	},
																																	decoration: InputDecoration(
																																		hintText: "Life/Family · 2h remaining",
																																		isDense: true,
																																		contentPadding: const EdgeInsets.symmetric(vertical: 14),
																																		border: InputBorder.none,
																																		focusedBorder: InputBorder.none,
																																		filled: false,
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
																											margin: const EdgeInsets.only( bottom: 16, left: 24),
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
																																				"Confirm",
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
																									Container(
																										margin: const EdgeInsets.only( left: 24),
																										child: Text(
																											"Only one timer runs at a time.",
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