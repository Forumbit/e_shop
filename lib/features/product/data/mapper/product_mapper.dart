import 'package:e_shop/features/product/data/models/product/product_model.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';

class ProductMapper {
  static ProductModel fromEntity(ProductEntity entity) {
    return ProductModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      price: entity.price,
      discountPercentage: entity.discountPercentage,
      rating: entity.rating,
      stock: entity.stock,
      brand: entity.brand,
      category: entity.category,
      thumbnail: entity.thumbnail,
      images: List<String>.from(entity.images),
    );
  }

  static ProductEntity toEntity(ProductModel model) {
    return ProductEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      price: model.price,
      discountPercentage: model.discountPercentage,
      rating: model.rating,
      stock: model.stock,
      brand: model.brand,
      category: model.category,
      thumbnail: model.thumbnail,
      images: List<String>.from(model.images),
    );
  }
}
