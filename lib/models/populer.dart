class Popular {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  String ingredients;

  Popular({
    this.title = '',
    this.subtitle = '',
    this.price = '',
    this.imageUrl = '',
    this.ingredients = '',
  });
}

List<Popular> popularList = [
  Popular(
    title: 'Batik Hitam',
    subtitle: 'Laki Laki batik hitam casual melayu riau',
    price: 'Rp. 150.000',
    imageUrl: 'assets/batik.png',
    ingredients: 'Cotton, Lengan panjang',
  ),
  Popular(
    title: 'Batik Corak',
    subtitle: 'Laki Laki batik hitam casual melayu riau',
    price: 'Rp. 150.000',
    imageUrl: 'assets/batik2.png',
    ingredients: 'Desain etnic, Long Sleeves',
  ),
  Popular(
    title: 'Highlander',
    subtitle: 'Laki Laki batik hitam casual melayu riau',
    price: 'Rp. 150.000',
    imageUrl: 'assets/batik.png',
    ingredients: 'Cotton, Lengan panjang',
  ),
];
