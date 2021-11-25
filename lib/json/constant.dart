import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

const String APP_TITLE = 'SHOP UI';
const String homeImg = 'https://www.refinery29.com/images/10478581.png';

const String profileUrl =
    "https://cdn-icons-png.flaticon.com/512/149/149071.png";

const List<Map<String, Object>> categories = [
  {
    'title': 'Shoes',
    'imgUrl':
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/jvcf7clhvzyavyopsi9n/%E0%B8%A3%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%B4%E0%B9%88%E0%B8%87%E0%B8%9C%E0%B8%B9%E0%B9%89-revolution-5-8P3bh3.png',
  },
  {
    'title': 'Bag',
    'imgUrl':
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9d93427a-51aa-4487-aaa4-d42478290c3f/%E0%B9%80%E0%B8%9B%E0%B9%89%E0%B8%AA%E0%B8%B0%E0%B8%9E%E0%B8%B2%E0%B8%A2%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87-eletal-v01GJk.png',
  },
  {
    'title': 'Shirt Men',
    'imgUrl':
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/u1zdvupiwoyyilv7pohm/sportswear-jdi-t-shirt-JNzp26.png',
  },
  {
    'title': 'Shirt Women',
    'imgUrl':
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e6f7af9b-99bf-4108-8934-234a6cd22311/%E0%B9%80%E0%B8%AA%E0%B8%B7%E0%B9%89%E0%B8%AD%E0%B8%A1%E0%B8%B5%E0%B8%AE%E0%B8%B9%E0%B9%89%E0%B8%94%E0%B8%9C%E0%B9%89%E0%B8%B2%E0%B8%9F%E0%B8%A5%E0%B8%B5%E0%B8%8B%E0%B8%9C%E0%B8%B9%E0%B9%89-sportswear-sJ378n.png',
  },
  {
    'title': 'Pant',
    'imgUrl':
        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cb3a64ad-9a5e-4363-b8fc-910a7bb3b49c/attack-womens-7-8-training-pants-jHHktz.png',
  },
];

const List<Map<String, Object>> recommends = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl':
        'https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl':
        'https://images.unsplash.com/photo-1562572159-4efc207f5aff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl':
        'https://images.unsplash.com/photo-1541257710737-06d667133a53?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  }
];

const List<Map<String, Object>> recently = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1475180098004-ca77a66827be?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl':
        'https://images.unsplash.com/photo-1563826904577-6b72c5d75e53?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTQzfHxmYXNoaW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl':
        'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl':
        'https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80',
  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl':
        'https://images.unsplash.com/photo-1507007727303-1532f71109cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  }
];

const List<String> slider = [
  'https://images.unsplash.com/photo-1465408953385-7c4627c29435?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/flagged/photo-1574876242429-3164fb8bf4bc?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1483118714900-540cf339fd46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
];

const List<Map<String, Object>> explores = [
  {
    'title': 'Jackets',
    'imgUrl':
        'https://images.unsplash.com/photo-1551537482-f2075a1d41f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Coats',
    'imgUrl':
        'https://images.unsplash.com/photo-1520012218364-3dbe62c99bee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Accessories',
    'imgUrl':
        'https://images.unsplash.com/photo-1509741102003-ca64bfe5f069?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Demin',
    'imgUrl':
        'https://images.unsplash.com/photo-1548435407-2d408a5f0aa3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Handbag',
    'imgUrl':
        'https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Hat',
    'imgUrl':
        'https://images.unsplash.com/photo-1514327605112-b887c0e61c0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  }
];

const List<Map<String, Object>> exploreProduct = [
  {
    'title': 'Jacket',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Coats',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Accessories',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1556656793-08538906a9f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Demin',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1544642899-f0d6e5f6ed6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Handbag',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1560891958-68bb1fe7fb78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  }
];

const List<String> exploreSlide = [
  'https://images.unsplash.com/photo-1591997297702-d43f7f008486?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjQ3MzMyfQ&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565155003033-252a7073802c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1561537051-cf36d6224a9f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1549822944-02701d3e20ed?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
];

const List<Map<String, Object>> subcategories = [
  {
    'title': 'T-Shirts',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i3/2472663307/O1CN01GHWzn61aIeOP2exzq_!!2472663307-0-lubanu-s.jpg_500x500.jpg'
  },
  {
    'title': 'Sweats',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i1/2854425749/O1CN011sL5R1iPjWP3kmt_!!2854425749.jpg_500x500.jpg'
  },
  {
    'title': 'Jackets',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i3/732039845/O1CN01LL4Kdt2Mb3sOFPWIl_!!732039845-0-lubanu-s.jpg_500x500.jpg'
  },
  {
    'title': 'Jeans',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i4/3655303985/O1CN01XICa671fJAsO7Q90Q_!!0-item_pic.jpg_500x500.jpg'
  },
  {
    'title': 'Overalls',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i1/278238551/O1CN019NPekl2D2PMdIXp28_!!278238551-0-lubanu-s.jpg_500x500.jpg'
  },
  {
    'title': 'Skirts',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i2/1595030501/O1CN01qyKPJJ1FZUzEjUOIY_!!1595030501.jpg_500x500.jpg'
  },
  {
    'title': 'Backpack',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i4/1595030501/O1CN01pqxD2f1FZUywgzA24_!!1595030501.jpg_500x500.jpg'
  },
  {
    'title': 'Bag',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i4/3655303985/O1CN01vxwMwF1fJAtErBkyH_!!3655303985.jpg_500x500.jpg'
  },
  {
    'title': 'Watch',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i2/2600752020/O1CN01safAmD1QnCeuLUN3C_!!2600752020.jpg_500x500.jpg'
  },
  {
    'title': 'Dresses',
    'imgUrl':
        'https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20190804145741-472815.JPG'
  },
];

const List<Map<String, Color>> colors = [
  {'title': Colors.green},
  {'title': Colors.blue},
  {'title': Colors.orange},
  {'title': Colors.black},
];

const List<Map<String, Object>> sizes = [
  {'title': 'S'},
  {'title': 'M'},
  {'title': 'L'},
  {'title': 'XL'},
  {'title': 'XXL'},
];

const List exploreBanner = [
  {
    'year': '2019',
    'title': 'Urban Collection',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2020',
    'title': 'Urban Fashion',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
  {
    'year': '2021',
    'title': 'Urban Collection',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2022',
    'title': 'Urban Fashion',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
];

const List productDetail = [
  'https://images.unsplash.com/photo-1565155003033-252a7073802c?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
  'https://images.unsplash.com/photo-1545911825-6bfa5b0c34a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572112686886-5c0b5bc8dacd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1582041148887-67274b989ae3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
];

const List brands = ['Adidas', 'Bershka', 'Converse', 'Diesel'];

const List historySearches = [
  'Red Sunglasses',
  'Large T-Shirt',
  'Jaws Hoodie',
  'Blue Sweater',
  'Levi’s Jeans'
];

const List cartList = [
  {
    "img":
        "https://f.btwcdn.com/store-37484/product/68ddf986-70f4-63f9-b0e3-5d071ef6a379.jpg",
    "name": "Test Product_1",
    "ref": "04559812",
    "price": "\$150",
    "size": "Detail: "
  },
  {
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFN8LekxcNsJPVB5PhIla3i6pFJNfJ62FF_w&usqp=CAU",
    "name": "Test Product_2",
    "ref": "04459811",
    "price": "\$300",
    "size": "Detail: "
  },
  {
    "img":
        "https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPEYEBOGLER-COSEVE88413F32E363/1601890054864_0..jpg",
    "name": "Test Product_3",
    "ref": "04454586",
    "price": "\$200",
    "size": "Detail: "
  },
  {
    "img":
        "https://www.erawonthailand.com/wp-content/uploads/2019/08/118-562x562.jpg",
    "name": "Test Product_4",
    "ref": "04454100",
    "price": "\$300",
    "size": "Detail: "
  },
  {
    "img":
        "https://image.spreadshirtmedia.com/image-server/v1/mp/products/T210A2MPA3176PT17X35Y44D1035601547FS2732/views/1,width=600,height=600,appearanceId=2,backgroundColor=F2F2F2,modelId=1543,crop=list/laundry-the-only-thing-separated-by-color-quote-mens-t-shirt.jpg",
    "name": "Test Product_5",
    "ref": "04463144",
    "price": "\$150",
    "size": "Detail: "
  },
];

List menusMore = [
  "Home",
  "Explore",
  "Stores",
  "Cart",
  "Notifications",
  "Loyalty Card",
  "My orders"
];

List itemsTab = [
  {"icon": Icons.home, "size": 28.0},
  {"icon": FontAwesomeIcons.mapMarkerAlt, "size": 22.0},
  {"icon": FontAwesomeIcons.userAlt, "size": 21.0},
  {"icon": FontAwesomeIcons.shoppingBag, "size": 22.0},
  {"icon": Icons.more_horiz, "size": 40.0},
];

List accountList = [
  "Account Details",
  "Loyalty card & offers",
  "Notifications",
  "Delivery Information",
  "Payment Information",
  "Language",
  "Privacy Settings"
];

List storeList = [
  {
    "img":
        "https://f.btwcdn.com/store-37484/product/68ddf986-70f4-63f9-b0e3-5d071ef6a379.jpg",
    "name": "Shirt_1",
    "open": 1
  },
  {
    "img":
        "https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPEYEBOGLER-COSEVE88413F32E363/1601890054864_0..jpg",
    "name": "Shirt_2",
    "open": 0
  },
  {
    "img":
        "https://www.erawonthailand.com/wp-content/uploads/2019/08/118-562x562.jpg",
    "name": "Shirt_3",
    "open": 0
  },
];

class Constants {
  static const regularHeading = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black);

  static const boldHeading = TextStyle(
      fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black);

  static const regularDarkText = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);
}
