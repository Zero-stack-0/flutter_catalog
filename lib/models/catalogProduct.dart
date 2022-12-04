// ignore_for_file: non_constant_identifier_names

class CatalogItemsModel {
  static final products = [
    CatalogProduct(
        Id: "1",
        Name: "Mac Air M1",
        Price: 999,
        ImageUrl:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/mbp-spacegray-select-202206?wid=1280&hei=1190&fmt=jpeg&qlt=90&.v=1664497359481",
        Color: "#00000",
        Description: "Mac is laptop used for development and for productivity")
  ];
}

class CatalogProduct {
  final String Id;
  final String Name;
  final num Price;
  final String ImageUrl;
  final String Color;
  final String Description;

  CatalogProduct(
      {required this.Id,
      required this.Name,
      required this.Price,
      required this.ImageUrl,
      required this.Color,
      required this.Description});
}
