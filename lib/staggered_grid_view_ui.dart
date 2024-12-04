import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp",
      "https://images.pexels.com/photos/1416736/pexels-photo-1416736.jpeg?cs=srgb&dl=pexels-jonas-mohamadi-1416736.jpg&fm=jpg",
      "https://media.istockphoto.com/id/647467002/photo/kids-having-picnic-in-blooming-garden.jpg?s=612x612&w=0&k=20&c=-Qp_KzRPCZedKkh14z-6-GoXs_abScPmnFgPwYnFbos=",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRXxfn1j1vKFy8yJeBGl2AS6Dcah-lKgHofg&s",
      "https://media.istockphoto.com/id/537873758/photo/beautiful-young-woman-having-picnic-in-blooming-spring-park.jpg?s=612x612&w=is&k=20&c=TXEsbE50O5eaFqZ7LvSJpBjkmgJcTZFSEEDwjZ3XyZc=",
    ];
    final List<String> items = List.generate(5, (index) => " $index");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Staggered Grid View'),
        ),
        body: StaggeredGridView.countBuilder(
          crossAxisCount: 5,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(images[index]))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  items[index],
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          staggeredTileBuilder: (int index) {
            // Adjust the size of tiles based on the index
            if (index % 5 == 0) {
              return const StaggeredTile.fit(2); // 2 columns for every 5th item
            } else if (index % 3 == 0) {
              return const StaggeredTile.fit(1); // 1 column for every 3rd item
            } else {
              return const StaggeredTile.fit(3); // 2 columns for other items
            }
          },
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
        ));
  }
}
