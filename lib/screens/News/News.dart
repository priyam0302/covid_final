import 'package:flutter/material.dart';
import 'package:covid_final/services/Newsapi_service.dart';
import 'package:covid_final/models/Newsmodel.dart';
import '../mainDrawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatelessWidget {
  final NewsService service = NewsService();

  _launchitem(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: false,
          forceWebView: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {
      throw 'cant load $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: MainDrawer(),
          body: Container(
            color: Colors.grey.withOpacity(0.2),
            child: FutureBuilder(
              future: service.getnews(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<NewsModelArticles>> snapshot) {
                if (snapshot.hasData) {
                  List<dynamic> data = snapshot.data;
                  return CustomScrollView(
                    slivers: <Widget>[
                      SliverAppBar(
                        backgroundColor: Colors.blue[500],
                        expandedHeight: 175.0,
                        floating: false,
                        // pinned: true,
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          background: Image.network(
                            "https://www.meme-arsenal.com/memes/f3faa977098b61296b994d406eb77a6a.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.all(8.0),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate((context, idx) {
                            var val = data[idx];
                            print(data[0].urlToImage);
                            return Container(
                              child: GestureDetector(
                                onTap: () {
                                  _launchitem(val.url);
                                },
                                child: Card(
                                  margin: EdgeInsets.all(8.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)),
                                  elevation: 15.0,
                                  child: SafeArea(
                                    child: Column(
                                      children: <Widget>[
                                        // Text('${val.title}'),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          child: Image.network(
                                            '${val.urlToImage}',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 12.0,
                                              left: 12.0,
                                              right: 12.0),
                                          child: Text(
                                            '${val.title}',
                                            maxLines: 15,
                                            style: GoogleFonts.roboto(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              wordSpacing: 2,
                                              // letterSpacing: 0.8
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(15.0),
                                          child: Text(
                                            '${val.content.split('[')[0]}',
                                            maxLines: 15,
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.roboto(
                                                fontSize: 15.0),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Text('${val.source}'),
                                          trailing: Text(
                                            "${val.publishedAt.split('T')[0]}",
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.8)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }, childCount: data.length),
                        ),
                      )
                    ],
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          )),
    );
  }
}
