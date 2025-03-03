import 'package:flutter/material.dart';
import 'package:flutter_assessment/modules/medicine/widgets/color_picker_tile.dart';
import 'package:flutter_assessment/modules/medicine/widgets/compartment_widget.dart';
import 'package:flutter_assessment/modules/medicine/widgets/date_picker_tile.dart';
import 'package:flutter_assessment/modules/medicine/widgets/dose_tile.dart';
import 'package:flutter_assessment/modules/medicine/widgets/dropdown_widget.dart';
import 'package:flutter_assessment/modules/medicine/widgets/food_timing_tile.dart';
import 'package:flutter_assessment/modules/medicine/widgets/quantity_button.dart';
import 'package:flutter_assessment/modules/medicine/widgets/search_field_widget.dart';
import 'package:flutter_assessment/modules/medicine/widgets/total_count_slider.dart';
import 'package:flutter_assessment/modules/medicine/widgets/type_picker_tile.dart';
import 'package:flutter_assessment/theme/app_theme.dart';
import 'package:flutter_assessment/theme/widgets/primary_button.dart';
import 'package:flutter_assessment/theme/widgets/show_no_connection_dialogue.dart';

class AddMedicinesScreen extends StatelessWidget {
  AddMedicinesScreen({super.key});

  static Route route() => MaterialPageRoute(builder: (context) => AddMedicinesScreen());

  final List<int> compartments = [1, 2, 3, 4, 5, 6];
  final List<Color> colors = [Colors.pink, Colors.blue, Colors.red, Colors.green, Colors.orange, Colors.yellow];
  final List<String> frequencies = ["Everyday", "Alternate", "Custom"];
  final List<String> timesOptions = ["Once", "Twice", "Three Time", "Four Time"];
  final List<String> foodTiming = ["Before Food", "After Food", "Before Sleep"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor(context).white,
      appBar: AppBar(
        backgroundColor: appColor(context).white,
        automaticallyImplyLeading: false,
        leadingWidth: double.infinity,
        leading: const Padding(
          padding: EdgeInsetsDirectional.only(start: 16.0),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_sharp),
              SizedBox(width: 8),
              Text(
                "Add Medicines",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchFieldWidget(),
              const SizedBox(height: 24),
              const Text("Compartment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              const CompartmentWidget(),
              const SizedBox(height: 24),
              const Text("Colour", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              const ColorPickerTile(),
              const SizedBox(height: 24),
              const Text("Type", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              const TypePickerTile(),
              const SizedBox(height: 24),
              const Text("Quantity", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              const QuantityButton(),
              const SizedBox(height: 16),
              const TotalCountSlider(),
              const SizedBox(height: 24),
              const Text("Set Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              const DatePickerTile(),
              const SizedBox(height: 24),
              const Text("Frequency of Days", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              const DropdownWidget(value: "Everyday"),
              const SizedBox(height: 24),
              const Text("How many times a Day", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              const DropdownWidget(value: "Three Time"),
              const SizedBox(height: 24),
              const DoseTile(title: "Dose 1"),
              const SizedBox(height: 24),
              const DoseTile(title: "Dose 2"),
              const SizedBox(height: 24),
              const DoseTile(title: "Dose 3"),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 6,
                  children: [
                    FoodTimingTile(title: "Before Food", color: appColor(context).primary!.withValues(alpha: 0.2)),
                    FoodTimingTile(title: "After Food", color: appColor(context).secondaryText!.withValues(alpha: 0.1)),
                    FoodTimingTile(title: "Before Sleep", color: appColor(context).secondaryText!.withValues(alpha: 0.1)),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                buttonText: "Add",
                textColor: appColor(context).white,
                onPressed: () {showNoConnectionDialog(context);},
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
