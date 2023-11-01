import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:pilihkamar/main.dart';
import 'package:pilihkamar/model/room_detail.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final ListKamar place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final ListKamar place;

  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

  void _showBookingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Kamar di Pesan'),
          content: const Text('Silahkan Konfirmasi di Resepsionis Kotel'),
          actions: <Widget>[
            TextButton(
              child: const Text('Tutup pesan'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ));
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: place.imageUrls.map((url) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(url),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.people),
                      const SizedBox(height: 8.0),
                      Text(
                        place.maxOrang.toString(),
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.bed),
                      const SizedBox(height: 8.0),
                      Text(
                        place.maxRanjang.toString(),
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on),
                      const SizedBox(height: 8.0),
                      Text(
                        place.roomPrice.toString(),
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  const FavoriteButton(),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _showBookingDialog(context);
              },
              child: const Text('Pesan Kamar'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final ListKamar place;

  const DetailWebPage({Key? key, required this.place}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  void _showBookingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Kamar di Pesan'),
          content: const Text('Silahkan Konfirmasi di Resepsionis Kotel'),
          actions: <Widget>[
            TextButton(
              child: const Text('Tutup pesan'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ));
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final screenWidth = constraints.maxWidth;

              double contentWidth = screenWidth <= 1200 ? screenWidth : 1200;

              return SizedBox(
                width: contentWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Detail Kamar',
                      style: TextStyle(
                        fontFamily: 'Staatliches',
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(widget.place.imageUrls[0]),
                              ),
                              const SizedBox(height: 16),
                              Scrollbar(
                                child: Container(
                                  height: 110,
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: widget.place.imageUrls.map((url) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(url),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 32),
                        Expanded(
                          flex: 3,
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text(
                                    widget.place.name,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 30.0,
                                      fontFamily: 'Staatliches',
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          const Icon(Icons.people),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.place.maxOrang.toString(),
                                            style: informationTextStyle,
                                          ),
                                        ],
                                      ),
                                      const FavoriteButton(),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.bed),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.place.maxRanjang.toString(),
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.monetization_on),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.place.roomPrice.toString(),
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Text(
                                      widget.place.description,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Oxygen',
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      _showBookingDialog(context);
                                    },
                                    child: const Text('Pesan Kamar'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
