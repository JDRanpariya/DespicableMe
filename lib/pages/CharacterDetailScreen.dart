import 'package:despicable_me/models/Character.dart';
import 'package:despicable_me/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';

class CharacterDetailScreen extends StatefulWidget {
  final Character character;

    final double _expandedBottomSheetBottom = 0;
    final double _collapsedBottomSheetBottom = -214;
    final double _completeBottomSheetBottom = -300;

  CharacterDetailScreen({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailScreenState createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> with AfterLayoutMixin<CharacterDetailScreen> {
  double _bottomSheetBottomPosition = -330;
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;

    



    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Hero(
          tag: "background-${widget.character.name}",
          child: DecoratedBox(
              decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: widget.character.colors,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          )),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1.0, top: 1.0),
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 38,
                  ),
                  onPressed: () {
                    setState(() {
                      _bottomSheetBottomPosition = -330;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
              Align(
                alignment: Alignment(0.5, -0.6),
                child: Hero(
                  tag: "img-${widget.character.imgPath}",
                  child: Image.asset(
                    widget.character.imgPath,
                    height: screenHeight * 0.5,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38.0, vertical: 8.0),
                child: Hero(
                    tag: "title-${widget.character.name}",
                    child: Material(
                        color: Colors.transparent,
                        child: Container(
                            child: Text(
                          widget.character.name,
                          style: AppTheme.heading,
                        )))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(38, 2, 8, 60),
                child: Text(
                  widget.character.description,
                  style: AppTheme.subheading,
                ),
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 400),
          curve: Curves.decelerate,
          bottom: _bottomSheetBottomPosition,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: _onTap,
                                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    height: 60,
                    child: Text(
                      "Gallary",
                      style: AppTheme.subheading.copyWith(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: GridView.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      shrinkWrap: true,
                      children: [
                        Image.asset(widget.character.imgPath, height: 50, width: 50, ),
                        Container(height:50, width:50,decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(25)),),
                        Image.asset(widget.character.imgPath, height: 50, width: 50,),
                        Container(height:50, width:50,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(25) ),),
                        Container(height:50, width:50,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(25) ),),
                        Image.asset(widget.character.imgPath, height: 50, width: 50,),
                        Container(height:50, width:50,decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(25)),),
                        Image.asset(widget.character.imgPath, height: 50, width: 50,),
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 300), () {
              setState(() {
        isCollapsed = true;
        _bottomSheetBottomPosition = widget._collapsedBottomSheetBottom;
      });
    });

  }

  _onTap() {
    setState(() {
      _bottomSheetBottomPosition = isCollapsed ? widget._expandedBottomSheetBottom : widget._collapsedBottomSheetBottom;
      isCollapsed=!isCollapsed;
    });
  }
}


