import 'package:flutter/material.dart';
import 'asset.dart';

class SearchBarTest extends StatefulWidget {
  @override
  _SearchBarTestState createState() => _SearchBarTestState();
}

class _SearchBarTestState extends State<SearchBarTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search App bar'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SearchBarDelegate());
            },
          ),         
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(
      icon: Icon(Icons.search),
      onPressed: (){
        query="";
      },
    )];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: ()=>close(context,null),);
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      color:Colors.green,
      width:100.0,
      height:100.0,
      child:Text(query)
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList=query.isEmpty?
    recentSuggest
    :searchList.where((input)=>input.startsWith(query)).toList();

    return ListView.builder(itemBuilder: (context,index)=>
        ListTile(
          title:RichText(
            text: TextSpan(
              text: suggestionList[index].substring(0,query.length),
              style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              children:[
                TextSpan(
                  text:suggestionList[index].substring(query.length),
                  style:TextStyle(color:Colors.grey)
                )
              ]
            ),            
          ),
        ),
    itemCount:suggestionList.length ,
    );
  }
}
