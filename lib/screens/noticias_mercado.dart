import 'package:app_noticias/helper/List_Category_model.dart';
import 'package:app_noticias/helper/article_model.dart';

import 'package:app_noticias/helper/category_model.dart';
import 'package:app_noticias/helper/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Noticias extends StatefulWidget {


  @override
  State<Noticias> createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {

  List<Category_model> categories = List<Category_model>();
  List<ArticleModel> articles = List<ArticleModel>();
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }


  void getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Invest",
              style:
              TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.3,
      ),
      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),

      ) : SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),

          child:Column(
            children: <Widget>[



              Container(
                margin: new EdgeInsets.only(top: 10),
                height: 70, child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return CategoryTile(
                    imageUrl: categories[index].imageUrl,
                    categoryName: categories[index].categoryName,
                  );
                }
              ),


              ),



              Container(
                margin: EdgeInsets.only(top: 16),

                child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return BlogTileNews(
                        imgUrl: articles[index].urlToImage,
                        title: articles[index].title,
                        desc: articles[index].description,
                        url: articles[index].url,

                      );
                    }),
              )

            ],
          )
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /*
      * onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => CategoryNews(
              newsCategory: categoryName.toLowerCase(),
            )
        ));
      },*/
      child: Container(
        margin: EdgeInsets.only(right: 16),

        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: imageUrl, width: 100, height: 60, fit: BoxFit.cover,
              ),
              
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black26
              ),
              child: Text(
                categoryName,  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTileNews extends StatelessWidget {
  final String imgUrl, title, desc, content, url;
  BlogTileNews({this.imgUrl, this.desc, this.title, this.content, this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(


      child: Container(
        margin: EdgeInsets.only(bottom: 16),

        child: Column(
          children: <Widget>[
            SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
                child: Image.network(imgUrl)),
            SizedBox(height: 8),
            Text(title, style: TextStyle(
              fontSize: 17,
              color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 8),
            Text(desc, style: TextStyle(
              color: Colors.black54
            ),)

          ],
        ),
      ),
    );
  }
}

