import 'package:flutter/material.dart';
import 'package:jeu/presentation/resources/app_strings.dart';
import 'package:jeu/presentation/widget/itmes_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animals Catalog")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Select the animal you want to play with",
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: AppStrings.animals.length,
                itemBuilder: (context, index) {
                  return ItemsWidget(animalModel: AppStrings.animals[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
