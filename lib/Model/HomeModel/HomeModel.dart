class HomeModel {
  HomeModel({
      this.success, 
      this.message, 
      this.banner1, 
      this.banner2, 
      this.banner3, 
      this.banner4, 
      this.banner5, 
      this.recentviews, 
      this.ourProducts, 
      this.suggestedProducts, 
      this.bestSeller, 
      this.flashSail, 
      this.newarrivals, 
      this.categories, 
      this.featuredbrands, 
      this.cartcount, 
      this.wishlistcount, 
      this.currency, 
      this.notificationCount,});

  HomeModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    if (json['banner1'] != null) {
      banner1 = [];
      json['banner1'].forEach((v) {
        banner1?.add(Banner1.fromJson(v));
      });
    }
    if (json['banner2'] != null) {
      banner2 = [];
      json['banner2'].forEach((v) {
        banner2?.add(Banner2.fromJson(v));
      });
    }
    if (json['banner3'] != null) {
      banner3 = [];
      json['banner3'].forEach((v) {
        banner3?.add(Banner3.fromJson(v));
      });
    }
    if (json['recentviews'] != null) {
      recentviews = [];
      json['recentviews'].forEach((v) {
        recentviews?.add(Recentviews.fromJson(v));
      });
    }
    if (json['our_products'] != null) {
      ourProducts = [];
      json['our_products'].forEach((v) {
        ourProducts?.add(OurProducts.fromJson(v));
      });
    }
    if (json['suggested_products'] != null) {
      suggestedProducts = [];
      json['suggested_products'].forEach((v) {
        suggestedProducts?.add(SuggestedProducts.fromJson(v));
      });
    }
    if (json['best_seller'] != null) {
      bestSeller = [];
      json['best_seller'].forEach((v) {
        bestSeller?.add(BestSeller.fromJson(v));
      });
    }
    if (json['flash_sail'] != null) {
      flashSail = [];
      json['flash_sail'].forEach((v) {
        flashSail?.add(FlashSail.fromJson(v));
      });
    }
    if (json['newarrivals'] != null) {
      newarrivals = [];
      json['newarrivals'].forEach((v) {
        newarrivals?.add(Newarrivals.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    if (json['featuredbrands'] != null) {
      featuredbrands = [];
      json['featuredbrands'].forEach((v) {
        featuredbrands?.add(Featuredbrands.fromJson(v));
      });
    }
    cartcount = json['cartcount'];
    wishlistcount = json['wishlistcount'];
    currency = json['currency'] != null ? Currency.fromJson(json['currency']) : null;
    notificationCount = json['notification_count'];
  }
  int? success;
  String? message;
  List<Banner1>? banner1;
  List<Banner2>? banner2;
  List<Banner3>? banner3;
  List<dynamic>? banner4;
  List<dynamic>? banner5;
  List<Recentviews>? recentviews;
  List<OurProducts>? ourProducts;
  List<SuggestedProducts>? suggestedProducts;
  List<BestSeller>? bestSeller;
  List<FlashSail>? flashSail;
  List<Newarrivals>? newarrivals;
  List<Categories>? categories;
  List<Featuredbrands>? featuredbrands;
  int? cartcount;
  dynamic wishlistcount;
  Currency? currency;
  int? notificationCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (banner1 != null) {
      map['banner1'] = banner1?.map((v) => v.toJson()).toList();
    }
    if (banner2 != null) {
      map['banner2'] = banner2?.map((v) => v.toJson()).toList();
    }
    if (banner3 != null) {
      map['banner3'] = banner3?.map((v) => v.toJson()).toList();
    }
    if (banner4 != null) {
      map['banner4'] = banner4?.map((v) => v.toJson()).toList();
    }
    if (banner5 != null) {
      map['banner5'] = banner5?.map((v) => v.toJson()).toList();
    }
    if (recentviews != null) {
      map['recentviews'] = recentviews?.map((v) => v.toJson()).toList();
    }
    if (ourProducts != null) {
      map['our_products'] = ourProducts?.map((v) => v.toJson()).toList();
    }
    if (suggestedProducts != null) {
      map['suggested_products'] = suggestedProducts?.map((v) => v.toJson()).toList();
    }
    if (bestSeller != null) {
      map['best_seller'] = bestSeller?.map((v) => v.toJson()).toList();
    }
    if (flashSail != null) {
      map['flash_sail'] = flashSail?.map((v) => v.toJson()).toList();
    }
    if (newarrivals != null) {
      map['newarrivals'] = newarrivals?.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    if (featuredbrands != null) {
      map['featuredbrands'] = featuredbrands?.map((v) => v.toJson()).toList();
    }
    map['cartcount'] = cartcount;
    map['wishlistcount'] = wishlistcount;
    if (currency != null) {
      map['currency'] = currency?.toJson();
    }
    map['notification_count'] = notificationCount;
    return map;
  }

}

class Currency {
  Currency({
      this.name, 
      this.code, 
      this.symbolLeft, 
      this.symbolRight, 
      this.value, 
      this.currency, 
      this.isDefault, 
      this.status,});

  Currency.fromJson(dynamic json) {
    name = json['name'];
    code = json['code'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    value = json['value'];
    currency = json['currency'];
    isDefault = json['is_default'];
    status = json['status'];
  }
  String? name;
  String? code;
  String? symbolLeft;
  String? symbolRight;
  String? value;
  String? currency;
  int? isDefault;
  int? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['code'] = code;
    map['symbol_left'] = symbolLeft;
    map['symbol_right'] = symbolRight;
    map['value'] = value;
    map['currency'] = currency;
    map['is_default'] = isDefault;
    map['status'] = status;
    return map;
  }

}

class Featuredbrands {
  Featuredbrands({
      this.id, 
      this.image, 
      this.slug, 
      this.name,});

  Featuredbrands.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
    slug = json['slug'];
    name = json['name'];
  }
  int? id;
  String? image;
  String? slug;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    map['slug'] = slug;
    map['name'] = name;
    return map;
  }

}

class Categories {
  Categories({
      this.category, 
      this.subcategory,});

  Categories.fromJson(dynamic json) {
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    if (json['subcategory'] != null) {
      subcategory = [];
      json['subcategory'].forEach((v) {
        subcategory?.add(Category.fromJson(v));
      });
    }
  }
  Category? category;
  List<dynamic>? subcategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (subcategory != null) {
      map['subcategory'] = subcategory?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Category {
  Category({
      this.id, 
      this.slug, 
      this.image, 
      this.name, 
      this.description,});

  Category.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
  }
  int? id;
  String? slug;
  String? image;
  String? name;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['image'] = image;
    map['name'] = name;
    map['description'] = description;
    return map;
  }

}

class Newarrivals {
  Newarrivals({
      this.productId, 
      this.slug, 
      this.code, 
      this.homeImg, 
      this.name, 
      this.isGender, 
      this.category, 
      this.store, 
      this.storeslug, 
      this.manufacturer, 
      this.symbolLeft, 
      this.symbolRight, 
      this.stock, 
      this.minQty, 
      this.oldprice, 
      this.price, 
      this.quantity, 
      this.image, 
      this.cart, 
      this.wishlist,});

  Newarrivals.fromJson(dynamic json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    category = json['category'];
    store = json['store'];
    storeslug = json['storeslug'];
    manufacturer = json['manufacturer'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    stock = json['stock'];
    minQty = json['min_qty'];
    oldprice = json['oldprice'];
    price = json['price'];
    quantity = json['quantity'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? category;
  String? store;
  String? storeslug;
  String? manufacturer;
  String? symbolLeft;
  String? symbolRight;
  String? stock;
  int? minQty;
  String? oldprice;
  String? price;
  String? quantity;
  String? image;
  int? cart;
  int? wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['slug'] = slug;
    map['code'] = code;
    map['home_img'] = homeImg;
    map['name'] = name;
    map['is_gender'] = isGender;
    map['category'] = category;
    map['store'] = store;
    map['storeslug'] = storeslug;
    map['manufacturer'] = manufacturer;
    map['symbol_left'] = symbolLeft;
    map['symbol_right'] = symbolRight;
    map['stock'] = stock;
    map['min_qty'] = minQty;
    map['oldprice'] = oldprice;
    map['price'] = price;
    map['quantity'] = quantity;
    map['image'] = image;
    map['cart'] = cart;
    map['wishlist'] = wishlist;
    return map;
  }

}

class FlashSail {
  FlashSail({
      this.productId, 
      this.slug, 
      this.code, 
      this.homeImg, 
      this.name, 
      this.isGender, 
      this.category, 
      this.store, 
      this.storeslug, 
      this.manufacturer, 
      this.symbolLeft, 
      this.symbolRight, 
      this.stock, 
      this.minQty, 
      this.oldprice, 
      this.price, 
      this.quantity, 
      this.image, 
      this.cart, 
      this.wishlist,});

  FlashSail.fromJson(dynamic json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    category = json['category'];
    store = json['store'];
    storeslug = json['storeslug'];
    manufacturer = json['manufacturer'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    stock = json['stock'];
    minQty = json['min_qty'];
    oldprice = json['oldprice'];
    price = json['price'];
    quantity = json['quantity'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? category;
  String? store;
  String? storeslug;
  String? manufacturer;
  String? symbolLeft;
  String? symbolRight;
  String? stock;
  int? minQty;
  String? oldprice;
  String? price;
  String? quantity;
  String? image;
  int? cart;
  int? wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['slug'] = slug;
    map['code'] = code;
    map['home_img'] = homeImg;
    map['name'] = name;
    map['is_gender'] = isGender;
    map['category'] = category;
    map['store'] = store;
    map['storeslug'] = storeslug;
    map['manufacturer'] = manufacturer;
    map['symbol_left'] = symbolLeft;
    map['symbol_right'] = symbolRight;
    map['stock'] = stock;
    map['min_qty'] = minQty;
    map['oldprice'] = oldprice;
    map['price'] = price;
    map['quantity'] = quantity;
    map['image'] = image;
    map['cart'] = cart;
    map['wishlist'] = wishlist;
    return map;
  }

}

class BestSeller {
  BestSeller({
      this.productId, 
      this.slug, 
      this.code, 
      this.homeImg, 
      this.name, 
      this.isGender, 
      this.category, 
      this.store, 
      this.storeslug, 
      this.manufacturer, 
      this.symbolLeft, 
      this.symbolRight, 
      this.stock, 
      this.minQty, 
      this.oldprice, 
      this.price, 
      this.quantity, 
      this.image, 
      this.cart, 
      this.wishlist,});

  BestSeller.fromJson(dynamic json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    category = json['category'];
    store = json['store'];
    storeslug = json['storeslug'];
    manufacturer = json['manufacturer'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    stock = json['stock'];
    minQty = json['min_qty'];
    oldprice = json['oldprice'];
    price = json['price'];
    quantity = json['quantity'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? category;
  String? store;
  String? storeslug;
  String? manufacturer;
  String? symbolLeft;
  String? symbolRight;
  String? stock;
  int? minQty;
  String? oldprice;
  String? price;
  String? quantity;
  String? image;
  int? cart;
  int? wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['slug'] = slug;
    map['code'] = code;
    map['home_img'] = homeImg;
    map['name'] = name;
    map['is_gender'] = isGender;
    map['category'] = category;
    map['store'] = store;
    map['storeslug'] = storeslug;
    map['manufacturer'] = manufacturer;
    map['symbol_left'] = symbolLeft;
    map['symbol_right'] = symbolRight;
    map['stock'] = stock;
    map['min_qty'] = minQty;
    map['oldprice'] = oldprice;
    map['price'] = price;
    map['quantity'] = quantity;
    map['image'] = image;
    map['cart'] = cart;
    map['wishlist'] = wishlist;
    return map;
  }

}

class SuggestedProducts {
  SuggestedProducts({
      this.productId, 
      this.slug, 
      this.code, 
      this.homeImg, 
      this.name, 
      this.isGender, 
      this.category, 
      this.store, 
      this.storeslug, 
      this.manufacturer, 
      this.symbolLeft, 
      this.symbolRight, 
      this.stock, 
      this.minQty, 
      this.oldprice, 
      this.price, 
      this.quantity, 
      this.image, 
      this.cart, 
      this.wishlist,});

  SuggestedProducts.fromJson(dynamic json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    category = json['category'];
    store = json['store'];
    storeslug = json['storeslug'];
    manufacturer = json['manufacturer'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    stock = json['stock'];
    minQty = json['min_qty'];
    oldprice = json['oldprice'];
    price = json['price'];
    quantity = json['quantity'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? category;
  String? store;
  String? storeslug;
  String? manufacturer;
  String? symbolLeft;
  String? symbolRight;
  String? stock;
  int? minQty;
  String? oldprice;
  String? price;
  String? quantity;
  String? image;
  int? cart;
  int? wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['slug'] = slug;
    map['code'] = code;
    map['home_img'] = homeImg;
    map['name'] = name;
    map['is_gender'] = isGender;
    map['category'] = category;
    map['store'] = store;
    map['storeslug'] = storeslug;
    map['manufacturer'] = manufacturer;
    map['symbol_left'] = symbolLeft;
    map['symbol_right'] = symbolRight;
    map['stock'] = stock;
    map['min_qty'] = minQty;
    map['oldprice'] = oldprice;
    map['price'] = price;
    map['quantity'] = quantity;
    map['image'] = image;
    map['cart'] = cart;
    map['wishlist'] = wishlist;
    return map;
  }

}

class OurProducts {
  OurProducts({
      this.productId, 
      this.slug, 
      this.code, 
      this.homeImg, 
      this.name, 
      this.isGender, 
      this.category, 
      this.store, 
      this.storeslug, 
      this.manufacturer, 
      this.symbolLeft, 
      this.symbolRight, 
      this.stock, 
      this.minQty, 
      this.oldprice, 
      this.price, 
      this.quantity, 
      this.image, 
      this.cart, 
      this.wishlist,});

  OurProducts.fromJson(dynamic json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    category = json['category'];
    store = json['store'];
    storeslug = json['storeslug'];
    manufacturer = json['manufacturer'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    stock = json['stock'];
    minQty = json['min_qty'];
    oldprice = json['oldprice'];
    price = json['price'];
    quantity = json['quantity'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? category;
  String? store;
  String? storeslug;
  String? manufacturer;
  String? symbolLeft;
  String? symbolRight;
  String? stock;
  int? minQty;
  String? oldprice;
  String? price;
  String? quantity;
  String? image;
  int? cart;
  int? wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['slug'] = slug;
    map['code'] = code;
    map['home_img'] = homeImg;
    map['name'] = name;
    map['is_gender'] = isGender;
    map['category'] = category;
    map['store'] = store;
    map['storeslug'] = storeslug;
    map['manufacturer'] = manufacturer;
    map['symbol_left'] = symbolLeft;
    map['symbol_right'] = symbolRight;
    map['stock'] = stock;
    map['min_qty'] = minQty;
    map['oldprice'] = oldprice;
    map['price'] = price;
    map['quantity'] = quantity;
    map['image'] = image;
    map['cart'] = cart;
    map['wishlist'] = wishlist;
    return map;
  }

}

class Recentviews {
  Recentviews({
      this.productId, 
      this.slug, 
      this.code, 
      this.homeImg, 
      this.name, 
      this.isGender, 
      this.category, 
      this.store, 
      this.storeslug, 
      this.manufacturer, 
      this.symbolLeft, 
      this.symbolRight, 
      this.stock, 
      this.minQty, 
      this.oldprice, 
      this.price, 
      this.quantity, 
      this.image, 
      this.cart, 
      this.wishlist,});

  Recentviews.fromJson(dynamic json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    category = json['category'];
    store = json['store'];
    storeslug = json['storeslug'];
    manufacturer = json['manufacturer'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    stock = json['stock'];
    minQty = json['min_qty'];
    oldprice = json['oldprice'];
    price = json['price'];
    quantity = json['quantity'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  dynamic isGender;
  String? category;
  String? store;
  String? storeslug;
  String? manufacturer;
  String? symbolLeft;
  String? symbolRight;
  String? stock;
  int? minQty;
  String? oldprice;
  String? price;
  String? quantity;
  String? image;
  int? cart;
  int? wishlist;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['productId'] = productId;
    map['slug'] = slug;
    map['code'] = code;
    map['home_img'] = homeImg;
    map['name'] = name;
    map['is_gender'] = isGender;
    map['category'] = category;
    map['store'] = store;
    map['storeslug'] = storeslug;
    map['manufacturer'] = manufacturer;
    map['symbol_left'] = symbolLeft;
    map['symbol_right'] = symbolRight;
    map['stock'] = stock;
    map['min_qty'] = minQty;
    map['oldprice'] = oldprice;
    map['price'] = price;
    map['quantity'] = quantity;
    map['image'] = image;
    map['cart'] = cart;
    map['wishlist'] = wishlist;
    return map;
  }

}

class Banner3 {
  Banner3({
      this.id, 
      this.linkType, 
      this.linkValue, 
      this.image, 
      this.video, 
      this.title, 
      this.subTitle, 
      this.buttonText, 
      this.logo,});

  Banner3.fromJson(dynamic json) {
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    video = json['video'];
    title = json['title'];
    subTitle = json['sub_title'];
    buttonText = json['button_text'];
    logo = json['logo'];
  }
  int? id;
  int? linkType;
  String? linkValue;
  String? image;
  dynamic video;
  String? title;
  String? subTitle;
  String? buttonText;
  dynamic logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link_type'] = linkType;
    map['link_value'] = linkValue;
    map['image'] = image;
    map['video'] = video;
    map['title'] = title;
    map['sub_title'] = subTitle;
    map['button_text'] = buttonText;
    map['logo'] = logo;
    return map;
  }

}

class Banner2 {
  Banner2({
      this.id, 
      this.linkType, 
      this.linkValue, 
      this.image, 
      this.video, 
      this.title, 
      this.subTitle, 
      this.buttonText, 
      this.logo,});

  Banner2.fromJson(dynamic json) {
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    video = json['video'];
    title = json['title'];
    subTitle = json['sub_title'];
    buttonText = json['button_text'];
    logo = json['logo'];
  }
  int? id;
  int? linkType;
  String? linkValue;
  String? image;
  dynamic video;
  String? title;
  String? subTitle;
  String? buttonText;
  dynamic logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link_type'] = linkType;
    map['link_value'] = linkValue;
    map['image'] = image;
    map['video'] = video;
    map['title'] = title;
    map['sub_title'] = subTitle;
    map['button_text'] = buttonText;
    map['logo'] = logo;
    return map;
  }

}

class Banner1 {
  Banner1({
      this.id, 
      this.linkType, 
      this.linkValue, 
      this.image, 
      this.video, 
      this.title, 
      this.subTitle, 
      this.buttonText, 
      this.logo,});

  Banner1.fromJson(dynamic json) {
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    video = json['video'];
    title = json['title'];
    subTitle = json['sub_title'];
    buttonText = json['button_text'];
    logo = json['logo'];
  }
  int? id;
  int? linkType;
  String? linkValue;
  String? image;
  dynamic video;
  String? title;
  String? subTitle;
  String? buttonText;
  dynamic logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link_type'] = linkType;
    map['link_value'] = linkValue;
    map['image'] = image;
    map['video'] = video;
    map['title'] = title;
    map['sub_title'] = subTitle;
    map['button_text'] = buttonText;
    map['logo'] = logo;
    return map;
  }

}