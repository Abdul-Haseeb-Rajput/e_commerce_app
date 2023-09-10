import 'package:e_commerce_app/products_dummy_api.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Favourites"),
        backgroundColor: CustColors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: favouriteList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      onTap: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      tileColor: CustColors.black10,
                      leading: CircleAvatar(
                        backgroundColor: CustColors.black45,
                        backgroundImage:
                            NetworkImage(favouriteList[index]["thumbnail"]),
                      ),
                      title: Text("${favouriteList[index]["title"]}"),
                      subtitle:
                          Text("Price \$${favouriteList[index]["price"]}"),
                      trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (favouriteList[index]["favourite"] == true) {
                              favouriteList[index]["favourite"] = false;
                              // favouriteList.removeAt(index);
                            }
                            if (favouriteList[index]["favourite"] == false) {
                              favouriteList.removeAt(index);
                            }
                            print(favouriteList);
                            // print(favouriteList);
                          });
                        },
                        child: CircleAvatar(
                          // change color of fovourute button
                          backgroundColor:
                              favouriteList[index]['favourite'] == true
                                  ? Colors.redAccent
                                  : CustColors.black45,
                          foregroundColor: CustColors.black1,
                          radius: 15,
                          child: Icon(Icons.favorite_outline_rounded),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
