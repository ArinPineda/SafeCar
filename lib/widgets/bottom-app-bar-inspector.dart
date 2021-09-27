import 'package:argon_flutter/constants/Theme.dart';
import 'package:flutter/material.dart';


class BottomAppBarInspector extends StatefulWidget{
  @override
    final int index;
    final double margin;
    final ValueChanged<int> onChangedTap;

    const BottomAppBarInspector({
      @required this.index,
      @required this.margin,
      @required this.onChangedTap,
      Key key
    }) : super(key: key);
  _BottomAppBarInspector createState() => _BottomAppBarInspector();
}

class _BottomAppBarInspector extends State<BottomAppBarInspector>{
  @override
  Widget build(BuildContext context) {

    final placeholder = Opacity(
      opacity: 0, 
      child: IconButton(
        icon: Icon(Icons.no_cell), 
        onPressed: null,)
      );

    return BottomAppBar(
      color: ArgonColors.primary,
      shape: CircularNotchedRectangle(),
      notchMargin: widget.margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BuildTapItem(icon: Icon(Icons.folder_open_outlined), index: 0),
          placeholder,
          BuildTapItem(icon: Icon(Icons.delete), index: 1),
        ],
      ),
    );
  }

  Widget BuildTapItem({ 
    @required Icon icon, 
    @required int index }){
    final isSelected = index == widget.index;
    return IconTheme(
      data: IconThemeData(
        color: isSelected ? ArgonColors.secondary : ArgonColors.white
      ), 
      child: IconButton(
        icon: icon,
        onPressed: () => widget.onChangedTap(index),
      ));
  }

}