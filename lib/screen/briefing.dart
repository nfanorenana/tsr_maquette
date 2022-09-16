import 'package:flutter/material.dart';
import 'package:tsr_maquette/widget/campagne_footer.dart';
import 'package:tsr_maquette/widget/remuneration_card.dart';
import 'package:tsr_maquette/widget/sn_logo.dart';
import 'package:tsr_maquette/widget/text_card.dart';
import 'package:tsr_maquette/widget/title_card.dart';

import '../widget/price.dart';

class Briefing extends StatelessWidget {
  const Briefing({Key? key}) : super(key: key);

  final briefingContent = '''
Le but de la campagne est de promouvoir le site Internet Megastar et ses revues de jeux pour adultes et enfants.

L'objectif est de donner un coup de boost à la marque et de rajeunir son image en valorisant les moments de vie et les usages...
''';

  final contenuPostContent = '''
La mise en avant des produits pourra se faire grâce à l'offre du moment "abonnement découverte" limité à 2 numéros.

Ex: Abonnement à Barbie Jeux (https://www.megastar.fr/produits/abonnements/jeux-pour-enfants/barbie-jeux)...
''';

  final tag =
      '''#magestar #magazinecoloriages #sudoku #motscroises #magazinesjeux #thesocialrace
      ''';

  final tagParagraph =
      "Rappel: l'utilisation de compte boost pour augmenter vos performance est interdit";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          constraints: BoxConstraints(
            minHeight: screenSize.height * 1.88,
          ),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCard(
                title: 'Description',
                content: briefingContent,
              ),
              SizedBox(
                height: screenSize.height / 30,
              ),
              TextCard(
                title: 'Contenu des posts',
                content: contenuPostContent,
              ),
              SizedBox(
                height: screenSize.height / 30,
              ),
              const SnLogo(color: Colors.black),
              SizedBox(
                height: screenSize.height / 30,
              ),
              TextCard(
                title: 'Tags et comptes à identifier',
                tag: tag,
                content: tagParagraph,
              ),
              SizedBox(
                height: screenSize.height / 30,
              ),
              const RemunerationCard()
            ],
          ),
        ),
      ],
    );
  }
}
