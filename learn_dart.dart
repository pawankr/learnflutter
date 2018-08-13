
void main(){
  var deck = new Deck();
//   deck.shuffle();
//   print(deck.length());
//   print(deck.deal(5));
//   print(deck.length());
  
//   deck.removeCard('Diamonds', 'Ace');
  print(deck);
}

class Deck{
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','Jack','Queen','King'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];
    
    for (var mySuit in suits) {
      for (var rank in ranks){
        var card = new Card(
          rank: rank,
          suit: mySuit
        );
        cards.add(card);
      }
    }
  }
  toString(){
    return cards.toString();
  }
  
  shuffle(){
    cards.shuffle();
  }
  
  length(){
    return cards.length;
  }
  
  cardsWithSuit(String suit){
    return cards.where((card) => card.suit == suit);
  }
  
  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    
    return hand;
  }
  
  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}


class Card{
  String suit;
  String rank;
  
  Card({this.rank,this.suit});
  toString(){
    return '$rank of $suit';
  }
}

// void main() {
//   var person = new Person('Stephan');
  
//   person.printName();
// }
// class Person {
//   String firstName;
  
//   Person(this.firstName);
  
//   printName(){
//     print(firstName);
//   }
// }

// void main() {
// //   for (int i = 0; i < 5; i++) {
// //     print('hello ${i + 1}');
// //   }
//   var name = myName();
//   print ('My name is $name');
// }

// String myName(){
//   return 'Stephen';
// }
