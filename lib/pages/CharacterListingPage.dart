import 'package:despicable_me/models/Character.dart';
import 'package:despicable_me/styleguide.dart';
import 'package:despicable_me/widgets/CharacterWidget.dart';
import 'package:flutter/material.dart';

class CharacterListingPage extends StatefulWidget {
  @override
  _CharacterListingPageState createState() => _CharacterListingPageState();
}

class _CharacterListingPageState extends State<CharacterListingPage> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
 
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          size: 22,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search,
              size: 22,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 4.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Despicable Me\n", style: AppTheme.display1),
                  TextSpan(text: "Characters", style: AppTheme.display2)
                ]),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  for (var i = 0; i < characters.length; i++)
                    CharacterWidget(character: characters[i], pageController: _pageController, currentPage: i)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
