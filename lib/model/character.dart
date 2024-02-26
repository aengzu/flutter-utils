class Character{
  final String? name;
  final String?  description;
  final String? image;


  Character({this.name, this.image, this.description});

  static List<Character> characters = [
    Character(name: "코난",  image: "conan.png", description: "10분뒤 심장마비로 사망"),
    Character(name: "사이키 쿠스오",  image: "saiki.png", description: "10분뒤 심장마비로 사망"),
    Character(name: "아키야마 신이치",  image: "shinichi.png",description: "10분뒤 심장마비로 사망"),
    Character(name: "코난",  image: "conan.png", description: "10분뒤 심장마비로 사망"),
    Character(name: "사이키 쿠스오",  image: "saiki.png", description: "10분뒤 심장마비로 사망"),
    Character(name: "아키야마 신이치",  image: "shinichi.png",description: "10분뒤 심장마비로 사망"),


  ];

  static List<Character> getAllCharacters() {
    return characters;
  }

}