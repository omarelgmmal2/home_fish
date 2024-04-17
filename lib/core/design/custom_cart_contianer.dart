import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../home/pages/orders/model.dart';
import 'app_image.dart';

class CustomContainerCart extends StatefulWidget {
  final MyCartModel model;

  const CustomContainerCart({
    super.key,
    required this.model,
  });

  @override
  State<CustomContainerCart> createState() => _CustomContainerCartState();
}

class _CustomContainerCartState extends State<CustomContainerCart> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        dismissible: DismissiblePane(onDismissed: () {}),
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {

            },
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        height: 110,
        width: 350,
        decoration: BoxDecoration(
          //color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage(
              widget.model.image,
              height: 60,
              width: 87,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.model.title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "${widget.model.price}",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 125,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xffEDBE2A),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "${count}",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (count > 1) {
                            count--;
                          }
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.only(bottom: 50),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xffEDBE2A),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Icon(
                          Icons.minimize,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
