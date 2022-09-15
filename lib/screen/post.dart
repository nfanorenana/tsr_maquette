import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  final postExample = '''
Une idée pour divertir nos petits loups. Durant les vacances de février, j'ai découvert les magazines jeux Mégastar. Moi qui craignais de devoir négocier entre les écrans et des magazines de jeux, j'ai été agréablement surprise. Ils n'ont pas arrêté: coloriage / méli-mélo / jeux d'enquêtes ... ! J'ai même profité de l'offre du moment "abonnement découverte 3 mois" pour les abonnés. Ils sont impatients de recevoir leur prochain magazine.

#megastar #magazinescoloriage #sudoku #motscroises #magazinesdejeux #thesocialrace
''';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      constraints: BoxConstraints(
        minHeight: screenSize.height,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            postExample,
            style: const TextStyle(color: Colors.black, fontSize: 18.0),
          ),
          const SizedBox(
            height: 30.00,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(238, 239, 243, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Copier le texte',
                      style: TextStyle(
                        color: Color.fromRGBO(146, 150, 227, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.copy,
                      color: Color.fromRGBO(146, 150, 227, 1),
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Télécharger les visuels',
                style: TextStyle(
                  color: Color.fromRGBO(146, 150, 227, 1),
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.file_download_outlined,
                color: Color.fromRGBO(146, 150, 227, 1),
                size: 26,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
