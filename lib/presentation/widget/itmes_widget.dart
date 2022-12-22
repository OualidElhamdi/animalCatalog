import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jeu/domain/animal_model.dart';
import 'package:provider/provider.dart';

import '../resources/routes_manager.dart';
import '../viewmodel/viewmodel.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({Key? key, required this.animalModel}) : super(key: key);

  final AnimalModel animalModel;

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<ViewModel>(context);
    return GestureDetector(
      onTap: (){
        model.url = "";
        model.selectAnimal(animalModel.name);
        GoRouter.of(context).push(Routes.secondPageRoute);
      },

      child: Card(
        elevation: 4,
        shadowColor: const Color(0xff007bff),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        semanticContainer: false,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 6 / 3,
              child: Image.asset(
                'assets/images/${animalModel.image}',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
