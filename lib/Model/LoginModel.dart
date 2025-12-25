class LoginModel {
  LoginModel({
      this.success, 
      this.message, 
      this.customerdata, 
      this.guestId,});

  LoginModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    customerdata = json['customerdata'] != null ? Customerdata.fromJson(json['customerdata']) : null;
    guestId = json['guest_id'];
  }
  int? success;
  String? message;
  Customerdata? customerdata;
  String? guestId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (customerdata != null) {
      map['customerdata'] = customerdata?.toJson();
    }
    map['guest_id'] = guestId;
    return map;
  }

}

class Customerdata {
  Customerdata({
      this.id, 
      this.name, 
      this.email, 
      this.mobile, 
      this.referee, 
      this.referralCode, 
      this.status, 
      this.token, 
      this.otpverificationstatus, 
      this.emailverificationstatus,});

  Customerdata.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    referee = json['referee'];
    referralCode = json['referral_code'];
    status = json['status'];
    token = json['token'];
    otpverificationstatus = json['otpverificationstatus'];
    emailverificationstatus = json['emailverificationstatus'];
  }
  String? id;
  String? name;
  String? email;
  String? mobile;
  String? referee;
  String? referralCode;
  int? status;
  String? token;
  int? otpverificationstatus;
  int? emailverificationstatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['mobile'] = mobile;
    map['referee'] = referee;
    map['referral_code'] = referralCode;
    map['status'] = status;
    map['token'] = token;
    map['otpverificationstatus'] = otpverificationstatus;
    map['emailverificationstatus'] = emailverificationstatus;
    return map;
  }

}