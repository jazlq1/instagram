import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> perfilImagen = [
    "images/1.jpg",
    "images/2.png",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
  ];

  List<String> publicaciones = [
    "images/post_1.jpg",
    "images/post_2.jpg",
    "images/post_3.jpg",
    "images/post_4.jpg",
    "images/post_5.jpg",
    "images/post_6.jpg",
    "images/post_7.jpg",
    "images/post_8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/insta_nombre.png",
          height: 90,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Historias
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: EdgeInsets.all(6),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            "images/historia.jpeg",
                          ),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(
                              perfilImagen[index],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Nombre",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Column(
                children: List.generate(
                    8,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Encabezado de publicaciones
                            Row(children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage: AssetImage(
                                    "images/historia.jpeg",
                                  ),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(
                                      perfilImagen[index],
                                    ),
                                  ),
                                ),
                              ),
                              Text("Nombre de Perfil"),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: () {},
                              )
                            ]),
                            //Publicaciones
                            Image.asset(publicaciones[index]),
                            //Reacciones imágenes
                            Row(
                              children: [
                                //Botón de me gusta
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),

                                //Botón de comentarios
                                IconButton(
                                  icon: Icon(Icons.chat_bubble_outline),
                                  onPressed: () {},
                                ),

                                //Botón de compartir
                                IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: () {},
                                ),

                                //Botón de agregar a favorito
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.bookmark_outline),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(text: "Le gusta a "),
                                      TextSpan(
                                        text: "Nombre de perfil",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: " y a "),
                                      TextSpan(
                                        text: "500 más",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
