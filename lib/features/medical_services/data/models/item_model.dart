class ItemModel {
  final String imageUrl,
      itemName,
      itemDiscount,
      itemBadge,
      itemRating,
      itemAddress,
      itemPhone;
  final String? itemSpecialty;
  final List<String> features;
  ItemModel(
    {
    required this.imageUrl,
    required this.itemName,
    required this.itemAddress,
    required this.itemBadge,
    required this.itemDiscount,
    required this.itemPhone,
    required this.itemRating,
    required this.features,
      this.itemSpecialty,
  });
}
