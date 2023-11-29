import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[200],
        appBar: AppBar(
          title:const Center( child:Text('Book List',style: TextStyle(color:Colors.black),)),
        backgroundColor: Colors.deepOrange[900],
        ),
         body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(
                width:double.infinity,
                child: BookCard1()),
                const SizedBox(height: 30,),
            BookCard2(),]
           
      )
    ),
    );
  }
}
class BookCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.red.withOpacity(0.3),
      splashColor: Colors.deepOrangeAccent.withOpacity(0.5),
      onTap: () {
        // Navigate to the book details page here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookDetailsPage1()),
        );
      },
      child: Card(
        elevation: 40,
        color: Colors.black12,
        shadowColor: Colors.deepOrangeAccent[400],
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80.0,
                height: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/474x/bb/ac/18/bbac18199774e7a372579e99fbbca0a5.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              SizedBox(width: 16.0),
              // Book details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Adventures of Huckleberry Finn',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Mark Twain',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow[700]),
                        SizedBox(width: 4.0),
                        Text(
                          '3.8',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class BookCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.red.withOpacity(0.3),
      splashColor: Colors.deepOrangeAccent.withOpacity(0.5),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookDetailsPage2()),
        );
      },
      child: Card(
        elevation: 40,
        color: Colors.black12,
        shadowColor: Colors.deepOrangeAccent[400],
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80.0,
                height: 120.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.kobo.com/book-images/a753bdb9-a0b6-4013-9aa8-0b466e779fb3/353/569/90/False/harry-potter-and-the-cursed-child-parts-one-and-two-the-official-playscript-of-the-original-west-end-production.jpg'), // Replace with actual book cover image URL
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harry Potter and the Cursed Child - Parts One and Two',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      ' J.K. Rowling, Jack Thorne, John Tiffany ',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow[700]),
                        SizedBox(width: 4.0),
                        Text(
                          '3.9',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

