import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imgPath;
  final String description;
  final List<Color> colors;

  Character({this.name, this.imgPath, this.description, this.colors});

}

List characters = [

  Character(
    name: "Kevin",
    imgPath: "assets/images/Kevin_minions.png",
    description: 
              "Kevin loves to make fun of and tease people or Minions, shown when he made fun of Jerry and teases him for being a coward. He loves playing golf and cricket. In the film Minions he is the leader of the trio in search of a new master. He truly cares about the well-being of the Minion tribe (which is dependent on them having a proper master).     ",
    colors: [Colors.orange.shade200,Colors.deepOrange.shade400]
  ),

  Character(
    name: "Agnes",
    imgPath: "assets/images/Agnes.png",
    description: 
              "Agnes, like her sisters, wished to be adopted by someone who cared about her. At first, Agnes is only one out of the three sisters to be excited to be adopted by Gru. She happily hugs his leg and plays games with him, while her sisters are gawking at Gru, their dream of the 'perfect parents' in tatters. She is unaware of Gru's own dislike of the whole adoption, her innocence prevailing. She is a very naive, sweet, and innocent child, which is why Margo is so protective of her. She thinks Gru's 'dog' is cute and chases after him, despite some protest from Margo.",
    colors: [Colors.pink.shade200,Colors.redAccent.shade400]
  ),

    Character(
    name: "Felonius Gru",
    imgPath: "assets/images/FaloniusGru.png",
    description: 
              "At first, Gru was a sneaky and somewhat cold-hearted man, who was determined to become the greatest villain in the world. At first he showed a dislike of children being easily irritated by Agnes, Edith and Margo. He was self-centered and in the beginning, as he only adopted the girls so that he could get the shrink ray which he intended to use to shrink the moon so that he could steal it",
    colors: [Colors.blueGrey.shade200,Colors.blueGrey.shade600]
  ),

  Character(
    name: "Lucy Wilde",
    imgPath: "assets/images/lucy.png",
    description: 
              """Lucy, although initially introduced as a serious and stoic woman, is generally very happy, enthusiastic, cheerful, and perky, shown when she exclaims,Yay! after telling Gru she is his new partner.She seems to be quite alert at times, as shown when Gru tried freezing her with his freeze ray, when she quickly albeit casually, as though done a number of times before) countered this attack with her flamethrower. Lucy is also very athletic and skilled in combat, demonstrated when she accidentally knocked a tray of cupcakes and managed to strike every single one, with a combination of jiu-jitsu, Krav Maga, Aztec warfare, and krumpin! although she accidentally flung the remainder of the cupcakes at Gru. She is also shown being a great athlete when she fights Eduardos guard chicken, El Polito.""",
    colors: [Colors.lightBlueAccent.shade200,Colors.blueAccent.shade400]
  ),
  
  Character(
    name: "Victor Perkins",
    imgPath: "assets/images/Vector.png",
    description: 
              "Vector is highly intelligent, but also overly confident and exceedingly arrogant. Similar to Gru, Vector's armory consists of bizarre items beyond imagination, of which he often boasts about. Likewise, he isVector has a rather excessive fondness for cookies. As such, he eagerly admits Agnes, Edith and Margo into his fortress when they arrived to sell them. Vector also seems to have an affiliation for aquatic life (both marine and freshwater animals), as he keeps an adult great white shark in a large aquarium in his fortress and uses advanced, aquatic-themed weapons such as the squid launcher and the piranha gun.",
    colors: [Colors.amber.shade100,Colors.amber.shade900]
  ),

  Character(
    name: "Kyle Gru",
    imgPath: "assets/images/Kyle.png",
    description: 
              "Kyle was originally a vicious, aggressive, ferocious, and monstrous blue creature that even Gru had trouble controlling. At times he would attack Gru but despite this he also seemed to be easily spooked and appeared frightened whenever Gru or anyone else opened the secret lair and also ran away from Agnes, unused to the fact that she thought he is cute instead of trying to avoid him. When Agnes, Edith and Margo first arrived, Kyle greeted them by snarling but he gradually warms up to the girls, especially Agnes and started sleeping with her at night. Although he seemed exasperated when the three girls dressed him up, he nevertheless develops an attachment towards them just like Gru did.",
    colors: [Colors.indigo.shade200,Colors.indigo.shade400]
  ),
];