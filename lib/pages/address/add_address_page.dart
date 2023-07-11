// import 'package:flutter/material.dart';
// import 'package:food_delivery/controllers/auth_controller.dart';
// import 'package:food_delivery/controllers/location_controller.dart';
// import 'package:food_delivery/controllers/user_controller.dart';
// import 'package:food_delivery/utils/colors.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class AddAddressPage extends StatefulWidget {
//   const AddAddressPage({super.key});

//   @override
//   State<AddAddressPage> createState() => _AddAddressPageState();
// }

// class _AddAddressPageState extends State<AddAddressPage> {
//   TextEditingController _addressController = TextEditingController();
//   final TextEditingController _contactPersonName = TextEditingController();
//   final TextEditingController _contactPersonNumber = TextEditingController();
//   late bool _isLogged;
//   //usa map = 45.51563, -122.677433
//   CameraPosition _cameraPosition = const CameraPosition(
//       target: LatLng(6.562042185879587, -3.1710484144669815), zoom: 17);
//   late LatLng _initialPosition = LatLng(6.562042185879587, -3.1710484144669815);

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _isLogged = Get.find<AuthController>().userLoggedIn();
//     if (_isLogged && Get.find<UserController>().userModel == null) {
//       Get.find<UserController>().getUserInfo();
//     }
//     if (Get.find<LocationController>().addressList.isNotEmpty) {
//       _cameraPosition = CameraPosition(
//           target: LatLng(
//         double.parse(Get.find<LocationController>().getAddress["latitude"]),
//         double.parse(Get.find<LocationController>().getAddress["longitude"]),
//       ));
//       _initialPosition = LatLng(
//         double.parse(Get.find<LocationController>().getAddress["latitude"]),
//         double.parse(Get.find<LocationController>().getAddress["longitude"]),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Address page"),
//           backgroundColor: AppColors.mainColor,
//         ),
//         body: GetBuilder<LocationController>(
//           builder: (locationController) {
//             return Column(
//               children: [
//                 Container(
//                   height: 140,
//                   width: MediaQuery.of(context).size.width,
//                   margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(
//                         width: 2,
//                         color: Theme.of(context).primaryColor,
//                       )),
//                   child: Stack(
//                     children: [
//                       GoogleMap(
//                         initialCameraPosition:
//                             CameraPosition(target: _initialPosition, zoom: 17),
//                         zoomControlsEnabled: false,
//                         compassEnabled: false,
//                         indoorViewEnabled: true,
//                         mapToolbarEnabled: false,
//                         onCameraIdle: () {
//                           locationController.updatePosition(
//                               _cameraPosition, true);
//                         },
//                         onCameraMove: (position) => _cameraPosition = position,
//                         onMapCreated: (GoogleMapController controller) {
//                           locationController.setMapController(controller);
//                         },
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             );
//           },
//         ));
//   }
// }
