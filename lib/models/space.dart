class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String country;
  String city;
  int raiting;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.country,
    this.city,
    this.raiting,
    this.address,
    this.mapUrl,
    this.phone,
    this.photos,
    this.numberOfBedrooms,
    this.numberOfCupboards,
    this.numberOfKitchens,
  });

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    price = json['price'];
    country = json['country'];
    city = json['city'];
    raiting = json['rating'];
    address = json['address'];
    mapUrl = json['mao_url'];
    phone = json['phone'];
    photos = json['photos'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
    numberOfKitchens = json['number_of_kitchens'];
  }
}
