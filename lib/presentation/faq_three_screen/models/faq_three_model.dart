import '../../../core/app_export.dart';import 'faqthree_item_model.dart';/// This class defines the variables used in the [faq_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FaqThreeModel {Rx<List<FaqthreeItemModel>> faqthreeItemList = Rx([FaqthreeItemModel(apaItuTaTernak: "Apa itu TaTernak?".obs,text: ">".obs),FaqthreeItemModel(apaItuTaTernak: "Apa peran TaTernak?".obs,text: ">".obs),FaqthreeItemModel(apaItuTaTernak: "Kapan pembeli harus menggunakan Taternak?".obs,text: ">".obs)]);

 }
