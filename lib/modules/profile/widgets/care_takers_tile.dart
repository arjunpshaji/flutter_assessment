import 'package:flutter/material.dart';
import 'package:flutter_assessment/theme/app_theme.dart';

class CareTakersTile extends StatelessWidget {
  CareTakersTile({super.key});
  final List<Map> careTakersList = [
    {'name': 'Dipa Luna'},
    {'name': 'Roz Sodoski', 'image': "assets/icons/userTwo.jpg"},
    {'name': 'Sunny Timmer', 'image': "assets/icons/userThree.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      decoration: BoxDecoration(
        color: appColor(context).primaryText?.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 16,
          children: List.generate(
            careTakersList.length + 1,
            (index) {
              if (index == careTakersList.length) {
                return Column(
                  spacing: 8,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: appColor(context).background,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: appColor(context).secondaryText!.withValues(alpha: 0.2)),
                        ),
                        child: Icon(
                          Icons.add,
                          color: appColor(context).secondaryText?.withValues(alpha: 0.5),
                          size: 25,
                        )),
                    Text(
                      "Add",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: appColor(context).text),
                    )
                  ],
                );
              }
              return Column(
                spacing: 8,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(careTakersList[index]['image'] ?? "assets/icons/user.png"),
                  ),
                  Text(
                    "${careTakersList[index]['name']}",
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
