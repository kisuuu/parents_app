// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:school_parent_app/components/portfolio_image_detail_page.dart';
// import 'package:school_parent_app/testing.dart';

// // List<ImageDetails> _images = [
// //   ImageDetails(
// //     imagePath: 'assets/images/Sports_1.jpg',
// //   ),
// //   ImageDetails(
// //     imagePath: 'assets/images/Sports_2.jpg',
// //   ),
// //   ImageDetails(
// //     imagePath: 'assets/images/Sports_3.jpg',
// //   ),
// //   ImageDetails(
// //     imagePath: 'assets/images/Sports_4.jpeg',
// //   ),
// //   ImageDetails(
// //     imagePath: 'assets/images/Sports_5.jpeg',
// //   ),
// // ];

// class ImagePage extends StatelessWidget {
//   const ImagePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _loadImagePaths(context),
//       builder: (
//         BuildContext context,
//         AsyncSnapshot<List<String>> imagePathsSnapshot,
//       ) {
//         if (imagePathsSnapshot.connectionState == ConnectionState.done &&
//             imagePathsSnapshot.hasData) {
//           return _buildcontent(imagePathsSnapshot.data!);
//         }

//         return Center(child: CircularProgressIndicator());
//       },
//     );
//   }

//   SliverGrid _buildcontent(List<String> imagePaths) {
//     return SliverGrid(
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 150,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//       ),
//       delegate: SliverChildBuilderDelegate(
//         (BuildContext context, int index) {
//           return PortfolioGalleryImageWidget(
//             imagePath: imagePaths[index],
//             onImageTap: () => Navigator.push(
//               context,
//               _createGalleryDetailRoute(imagePaths, index),
//             ),
//           );
//         },
//         childCount: imagePaths.length,
//       ),
//     );
//   }

//   Future<List<String>> _loadImagePaths(BuildContext context) async {
//     final String manifestContentJson =
//         await DefaultAssetBundle.of(context).loadString('AssetManifest.json');

//     final Map<String, dynamic> manifestMap = json.decode(manifestContentJson);

//     return manifestMap.keys
//         .where((String key) => key.contains('assets/image/'))
//         .toList();
//   }

//   MaterialPageRoute _createGalleryDetailRoute(
//       List<String> imagePaths, int index) {
//     return MaterialPageRoute(
//         builder: (context) => PortfolioGalleryDetailPage(
//               imagePaths: imagePaths,
//               currentIndex: index,
//             ));
//   }
// }

import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "School Image",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 114, 146, 207),
                Color.fromARGB(255, 40, 85, 174)
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Spacer(),
              Image.asset("assets/images/working.gif"),
              Text(
                "This page isn't available right now",
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
