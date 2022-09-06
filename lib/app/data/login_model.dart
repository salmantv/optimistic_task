// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'dart:convert';

LoginModel modelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String modelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.shipperId,
    this.sId,
    this.branchId,
    this.name,
    this.userName,
    this.password,
    this.country,
    this.address,
    this.mobile,
    this.language,
    this.logoPath,
    this.isActive,
    this.isDelete,
    this.date,
    this.companyName,
    this.phoneNumber,
    this.state,
    this.city,
    this.zipCode,
    this.googleLocation,
    this.rateLevelDomestic,
    this.rateLevelInternational,
    this.paymentType,
    this.deliveryCharge,
    this.cancellationCharge,
    this.bankName,
    this.accountNumber,
    this.typeOfAccount,
    this.tblBranch,
    this.tblBranchItemRecieving,
    this.tblBranchItemRecievingDetails,
    this.tblPickUpRequest,
    this.tblProduct,
    this.tblRequest,
    this.tblShipperRequest,
    this.tblUser,
  });

  int? shipperId;
  dynamic sId;
  int? branchId;
  String? name;
  String? userName;
  dynamic password;
  String? country;
  String? address;
  String? mobile;
  dynamic language;
  dynamic logoPath;
  dynamic isActive;
  dynamic isDelete;
  dynamic date;
  String? companyName;
  dynamic phoneNumber;
  dynamic state;
  String? city;
  String? zipCode;
  String? googleLocation;
  dynamic rateLevelDomestic;
  dynamic rateLevelInternational;
  dynamic paymentType;
  dynamic deliveryCharge;
  dynamic cancellationCharge;
  String? bankName;
  String? accountNumber;
  dynamic typeOfAccount;
  dynamic tblBranch;
  List<dynamic>? tblBranchItemRecieving;
  List<dynamic>? tblBranchItemRecievingDetails;
  List<dynamic>? tblPickUpRequest;
  List<dynamic>? tblProduct;
  List<dynamic>? tblRequest;
  List<dynamic>? tblShipperRequest;
  List<dynamic>? tblUser;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        shipperId: json["ShipperId"] == null ? null : json["ShipperId"],
        sId: json["SId"],
        branchId: json["BranchID"] == null ? null : json["BranchID"],
        name: json["Name"] == null ? null : json["Name"],
        userName: json["UserName"] == null ? null : json["UserName"],
        password: json["Password"],
        country: json["Country"] == null ? null : json["Country"],
        address: json["Address"] == null ? null : json["Address"],
        mobile: json["Mobile"] == null ? null : json["Mobile"],
        language: json["Language"],
        logoPath: json["LogoPath"],
        isActive: json["IsActive"],
        isDelete: json["IsDelete"],
        date: json["Date"],
        companyName: json["CompanyName"] == null ? null : json["CompanyName"],
        phoneNumber: json["PhoneNumber"],
        state: json["State"],
        city: json["City"] == null ? null : json["City"],
        zipCode: json["ZipCode"] == null ? null : json["ZipCode"],
        googleLocation:
            json["GoogleLocation"] == null ? null : json["GoogleLocation"],
        rateLevelDomestic: json["RateLevelDomestic"],
        rateLevelInternational: json["RateLevelInternational"],
        paymentType: json["PaymentType"],
        deliveryCharge: json["DeliveryCharge"],
        cancellationCharge: json["CancellationCharge"],
        bankName: json["BankName"] == null ? null : json["BankName"],
        accountNumber:
            json["AccountNumber"] == null ? null : json["AccountNumber"],
        typeOfAccount: json["TypeOfAccount"],
        tblBranch: json["Tbl_Branch"],
        tblBranchItemRecieving: json["Tbl_Branch_Item_Recieving"] == null
            ? null
            : List<dynamic>.from(
                json["Tbl_Branch_Item_Recieving"].map((x) => x)),
        tblBranchItemRecievingDetails:
            json["Tbl_Branch_Item_Recieving_Details"] == null
                ? null
                : List<dynamic>.from(
                    json["Tbl_Branch_Item_Recieving_Details"].map((x) => x)),
        tblPickUpRequest: json["Tbl_PickUpRequest"] == null
            ? null
            : List<dynamic>.from(json["Tbl_PickUpRequest"].map((x) => x)),
        tblProduct: json["Tbl_Product"] == null
            ? null
            : List<dynamic>.from(json["Tbl_Product"].map((x) => x)),
        tblRequest: json["Tbl_Request"] == null
            ? null
            : List<dynamic>.from(json["Tbl_Request"].map((x) => x)),
        tblShipperRequest: json["Tbl_ShipperRequest"] == null
            ? null
            : List<dynamic>.from(json["Tbl_ShipperRequest"].map((x) => x)),
        tblUser: json["Tbl_User"] == null
            ? null
            : List<dynamic>.from(json["Tbl_User"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "ShipperId": shipperId == null ? null : shipperId,
        "SId": sId,
        "BranchID": branchId == null ? null : branchId,
        "Name": name == null ? null : name,
        "UserName": userName == null ? null : userName,
        "Password": password,
        "Country": country == null ? null : country,
        "Address": address == null ? null : address,
        "Mobile": mobile == null ? null : mobile,
        "Language": language,
        "LogoPath": logoPath,
        "IsActive": isActive,
        "IsDelete": isDelete,
        "Date": date,
        "CompanyName": companyName == null ? null : companyName,
        "PhoneNumber": phoneNumber,
        "State": state,
        "City": city == null ? null : city,
        "ZipCode": zipCode == null ? null : zipCode,
        "GoogleLocation": googleLocation == null ? null : googleLocation,
        "RateLevelDomestic": rateLevelDomestic,
        "RateLevelInternational": rateLevelInternational,
        "PaymentType": paymentType,
        "DeliveryCharge": deliveryCharge,
        "CancellationCharge": cancellationCharge,
        "BankName": bankName == null ? null : bankName,
        "AccountNumber": accountNumber == null ? null : accountNumber,
        "TypeOfAccount": typeOfAccount,
        "Tbl_Branch": tblBranch,
        "Tbl_Branch_Item_Recieving": tblBranchItemRecieving == null
            ? null
            : List<dynamic>.from(tblBranchItemRecieving!.map((x) => x)),
        "Tbl_Branch_Item_Recieving_Details": tblBranchItemRecievingDetails ==
                null
            ? null
            : List<dynamic>.from(tblBranchItemRecievingDetails!.map((x) => x)),
        "Tbl_PickUpRequest": tblPickUpRequest == null
            ? null
            : List<dynamic>.from(tblPickUpRequest!.map((x) => x)),
        "Tbl_Product": tblProduct == null
            ? null
            : List<dynamic>.from(tblProduct!.map((x) => x)),
        "Tbl_Request": tblRequest == null
            ? null
            : List<dynamic>.from(tblRequest!.map((x) => x)),
        "Tbl_ShipperRequest": tblShipperRequest == null
            ? null
            : List<dynamic>.from(tblShipperRequest!.map((x) => x)),
        "Tbl_User":
            tblUser == null ? null : List<dynamic>.from(tblUser!.map((x) => x)),
      };
}
