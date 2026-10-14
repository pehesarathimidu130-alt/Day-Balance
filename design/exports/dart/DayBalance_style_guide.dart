import 'package:flutter/material.dart';
class DayBalance_style_guide extends StatefulWidget {
	const DayBalance_style_guide({super.key});
	@override
	DayBalance_style_guideState createState() => DayBalance_style_guideState();
}
class DayBalance_style_guideState extends State<DayBalance_style_guide> {
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
										padding: const EdgeInsets.only( top: 36, bottom: 36, left: 32, right: 32),
										width: double.infinity,
										height: double.infinity,
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												IntrinsicHeight(
													child: Container(
														margin: const EdgeInsets.only( bottom: 24),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																Container(
																	margin: const EdgeInsets.only( bottom: 4),
																	child: Text(
																		"Day-Balance / A little room for life.",
																		style: TextStyle(
																			color: Color(0xFF292E28),
																			fontSize: 32,
																		),
																	),
																),
																Text(
																	"Android · Material Design 3 · 360 × 800 dp · Flat, warm, quietly purposeful.",
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
														margin: const EdgeInsets.only( bottom: 24),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																Container(
																	margin: const EdgeInsets.only( bottom: 16),
																	child: Text(
																		"01 / PALETTE",
																		style: TextStyle(
																			color: Color(0xFF49664D),
																			fontSize: 12,
																			fontWeight: FontWeight.bold,
																		),
																	),
																),
																IntrinsicHeight(
																	child: Container(
																		margin: const EdgeInsets.only( bottom: 16),
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
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFF8F5EF),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Canvas",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#F8F5EF",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFFFFCF7),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Surface",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#FFFCF7",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFF292E28),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Text",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#292E28",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFF62675D),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Secondary",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#62675D",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFF49664D),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Primary sage",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#49664D",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFF85897D),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Outline",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#85897D",
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
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFA43B32),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Error",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#A43B32",
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
																		margin: const EdgeInsets.only( bottom: 16),
																		width: double.infinity,
																		child: Row(
																			crossAxisAlignment: CrossAxisAlignment.start,
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
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFD4DEE5),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Academic",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#D4DEE5",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFEBD3BC),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Life/Family",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#EBD3BC",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFDDD3E4),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Entertainment",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#DDD3E4",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFD9E2CF),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Personal/Reading",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#D9E2CF",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFC9DEDA),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Career",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#C9DEDA",
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
																							margin: const EdgeInsets.only( right: 12),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFDEDED8),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										width: 81,
																										child: Text(
																											"Unplanned/Extra capacity",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#DEDED8",
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
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										decoration: BoxDecoration(
																											border: Border.all(
																												color: Color(0xFFDDDCD2),
																												width: 1,
																											),
																											borderRadius: BorderRadius.circular(4),
																											color: Color(0xFFE9CFCE),
																										),
																										margin: const EdgeInsets.only( bottom: 4),
																										height: 24,
																										width: double.infinity,
																										child: SizedBox(),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Rest/Recovery",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 11,
																											),
																										),
																									),
																									Text(
																										"#E9CFCE",
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
																Text(
																	"Paper #EEE8DC · Sage container #E0E8DB · Divider #DDDCD2 · Error container #F6E2DE · White #FFFFFF",
																	style: TextStyle(
																		color: Color(0xFF62675D),
																		fontSize: 11,
																	),
																),
															]
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														width: double.infinity,
														child: Row(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																Expanded(
																	child: IntrinsicHeight(
																		child: Container(
																			margin: const EdgeInsets.only( right: 32),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Container(
																						margin: const EdgeInsets.only( bottom: 20),
																						child: Text(
																							"02 / TYPE",
																							style: TextStyle(
																								color: Color(0xFF49664D),
																								fontSize: 12,
																								fontWeight: FontWeight.bold,
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 20),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"Make room.",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 40,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"Roboto Medium · Display 40/44 · Heading 32/38",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"Your day, your pace.",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 32,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"Roboto Medium · Title 22",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 22,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"Roboto Regular · Body 16/22",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 16,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"Roboto Regular · Body 14/20",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 14,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"Roboto Regular · Caption 12/17",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 12,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 12),
																										child: Text(
																											"2:45:00",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 52,
																											),
																										),
																									),
																									Container(
																										width: double.infinity,
																										child: Text(
																											"Roboto Mono Medium · Focus 52/62 · Card 30/36 Small metadata 10–11 · Buttons Roboto Semibold 14/20",
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
																					Container(
																						margin: const EdgeInsets.only( bottom: 20),
																						child: Text(
																							"03 / RHYTHM & SHAPE",
																							style: TextStyle(
																								color: Color(0xFF49664D),
																								fontSize: 12,
																								fontWeight: FontWeight.bold,
																							),
																						),
																					),
																					Container(
																						width: 389,
																						child: Text(
																							"8dp rhythm · 8 / 16 / 24 / 32 / 40 4dp for details · Page inset 24dp Input radius 4 · Cards 12–16 · Modal 28 Pill radius 100 · Buttons 48dp high Android status 24 · Gesture area 24 Material Symbols Rounded · 20–24dp",
																							style: TextStyle(
																								color: Color(0xFF292E28),
																								fontSize: 14,
																							),
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
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Container(
																						margin: const EdgeInsets.only( bottom: 16),
																						child: Text(
																							"04 / COMPONENTS",
																							style: TextStyle(
																								color: Color(0xFF49664D),
																								fontSize: 12,
																								fontWeight: FontWeight.bold,
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( bottom: 16),
																							width: double.infinity,
																							child: Row(
																								children: [
																									InkWell(
																										onTap: () { print('Pressed'); },
																										child: IntrinsicWidth(
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
																													padding: const EdgeInsets.only( top: 14, bottom: 14, left: 69, right: 69),
																													margin: const EdgeInsets.only( right: 12),
																													child: Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
																														children: [
																															Text(
																																"Continue",
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
																													padding: const EdgeInsets.only( top: 14, bottom: 14, left: 76, right: 76),
																													child: Column(
																														crossAxisAlignment: CrossAxisAlignment.start,
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
																								]
																							),
																						),
																					),
																					IntrinsicHeight(
																						child: Container(
																							decoration: BoxDecoration(
																								borderRadius: BorderRadius.circular(16),
																								color: Color(0xFFD4DEE5),
																							),
																							padding: const EdgeInsets.only( top: 16, bottom: 16, left: 16),
																							margin: const EdgeInsets.only( bottom: 16),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"Academic",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 14,
																												fontWeight: FontWeight.bold,
																											),
																										),
																									),
																									Container(
																										margin: const EdgeInsets.only( bottom: 4),
																										child: Text(
																											"2:45:00",
																											style: TextStyle(
																												color: Color(0xFF292E28),
																												fontSize: 30,
																											),
																										),
																									),
																									Text(
																										"Planned 4h · remaining",
																										style: TextStyle(
																											color: Color(0xFF62675D),
																											fontSize: 12,
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
																							child: Row(
																								mainAxisAlignment: MainAxisAlignment.spaceBetween,
																								children: [
																									Text(
																										"Time stepper · 30m",
																										style: TextStyle(
																											color: Color(0xFF292E28),
																											fontSize: 14,
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
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/a2xb3gix_expires_30_days.png",
																																		fit: BoxFit.fill,
																																	)
																																)
																															),
																															Container(
																																margin: const EdgeInsets.only( right: 23),
																																child: Text(
																																	"2h 30m",
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
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/6ninhyg3_expires_30_days.png",
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
																							margin: const EdgeInsets.only( bottom: 16),
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"Progress · 4dp track · sage elapsed",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.circular(100),
																												color: Color(0xFFDDDCD2),
																											),
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														decoration: BoxDecoration(
																															borderRadius: BorderRadius.circular(100),
																															color: Color(0xFF49664D),
																														),
																														width: 125,
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
																													decoration: BoxDecoration(
																														border: Border.all(
																															color: Color(0xFF85897D),
																															width: 1,
																														),
																														borderRadius: BorderRadius.circular(4),
																													),
																													padding: const EdgeInsets.only( top: 17, bottom: 17, left: 16, right: 16),
																													width: double.infinity,
																													child: Row(
																														mainAxisAlignment: MainAxisAlignment.spaceBetween,
																														children: [
																															Text(
																																"7:00 AM",
																																style: TextStyle(
																																	color: Color(0xFF292E28),
																																	fontSize: 16,
																																),
																															),
																															Container(
																																decoration: BoxDecoration(
																																	borderRadius: BorderRadius.circular(4),
																																),
																																width: 20,
																																height: 20,
																																child: ClipRRect(
																																	borderRadius: BorderRadius.circular(4),
																																	child: Image.network(
																																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/b5or9fi6_expires_30_days.png",
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
																																"Wake-up time",
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
																							width: double.infinity,
																							child: Column(
																								crossAxisAlignment: CrossAxisAlignment.start,
																								children: [
																									Container(
																										margin: const EdgeInsets.only( bottom: 8),
																										child: Text(
																											"Bottom navigation · 80dp · active sage pill",
																											style: TextStyle(
																												color: Color(0xFF62675D),
																												fontSize: 12,
																											),
																										),
																									),
																									IntrinsicHeight(
																										child: Container(
																											color: Color(0xFFEEE8DC),
																											padding: const EdgeInsets.only( top: 8, bottom: 22),
																											width: double.infinity,
																											child: Row(
																												mainAxisAlignment: MainAxisAlignment.center,
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( left: 29, right: 29),
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
																																					"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/f549p9dr_expires_30_days.png",
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
																													IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( left: 30, right: 30),
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
																																					"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/ftev0wyq_expires_30_days.png",
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
																													IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Container(
																																padding: const EdgeInsets.only( left: 30, right: 30),
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
																																					"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/pCujTopcw3/m2ffuliz_expires_30_days.png",
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
											]
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