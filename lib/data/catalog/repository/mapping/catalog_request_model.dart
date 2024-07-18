import 'package:repository/data/catalog/model/catalog_request_model.dart';
import 'package:repository/domain/catalog/entities/catalog_filter.dart';

extension CatalogeRequestDataMapping on CatalogFilter {
  CatalogRequestModel toRequestData({required String catalogType}) {
    final requestData = CatalogRequestModel(
      catalogueType: catalogType,
      language: language,
      field1: countryCode ?? "",
      field2: paymentMode?.id ?? "",
      field3: paymentMode?.receiverCurrency ?? "", //      field3: state?.id ?? "",
      field4: bankId ?? "",
    );
    return requestData;
  }
}
