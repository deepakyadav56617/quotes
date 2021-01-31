import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotes_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "Stephen King",
        text:
            "If you don't have time to read, you don't have the time (or the tools) to write. Simple as that."),
    Quote(author: 'Mark Twain', text: "Substitute 'damn' every time you're inclined to write 'very;' your editor will delete it and the writing will be just as it should be."),
    Quote(author: 'Toni Morrison', text: "If there's a book that you want to read, but it hasn't been written yet, then you must write it.")
  ];
  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map(
            (quote) {
              return QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }
                );
            },
          ).toList(),
        ));
  }
}

