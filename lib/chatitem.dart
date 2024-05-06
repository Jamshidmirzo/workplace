import 'package:flutter/material.dart';

class Chatitem extends StatelessWidget {
  String name;
  Chatitem({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://celebbio.org/wp-content/cache/thumb/d8/03187aea4f077d8_400x400.jpg'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.blur_on_outlined),
                      Text(
                        'Online',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
                child: const Icon(Icons.call),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
