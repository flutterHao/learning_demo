import 'package:flutter/material.dart';

  class ExpansionPanelListDemo extends StatefulWidget {
    @override
    _ExpansionPanelListState createState() => _ExpansionPanelListState();
  }
  
  class _ExpansionPanelListState extends State<ExpansionPanelListDemo> {
     var currentPanelIndex = -1;
    List<int>mList;
    List<ExpandStateBean>expandStateList;

    _ExpansionPanelListState(){
      mList=new List();
      expandStateList=new List();

      for(int i=0;i<20;i++){
        mList..add(i);
        expandStateList..add(ExpandStateBean(i,false));
      }
    }

    _setCurrentIndex(int index,isExpand){
      setState(() {
        expandStateList.forEach((item){
            if(item.index==index){
              item.isOpen=!isExpand;
            }
        });
      });
    }

    @override
     Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("可扩展组件列表")
      ),
      //加入可滚动组件
      body:SingleChildScrollView(
        child: ExpansionPanelList(
          //交互回掉属性，里边是个匿名函数
          expansionCallback: (index,bol){
            //调用内部方法
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder:(context,isExpand){
                   return ListTile(
                     title: Text('this is headTitle: $index',style: TextStyle(color:Colors.teal),),
                     leading: Icon(Icons.ac_unit,color: Colors.blue,),                     
                   );
              },
              body: ListTile(
                title: Text('this is expansion: $index',style: TextStyle(color:Colors.brown),),
                subtitle: Text('subtitle:$index'),
                leading: Icon(Icons.add_location,color:Colors.red,),        
              ),
              isExpanded: expandStateList[index].isOpen,
            );
          }).toList(),//不理解
        ),
      )

    );
  }
  }

  class ExpandStateBean{
    var index;
    var isOpen;
    ExpandStateBean(this.index,this.isOpen);
  }