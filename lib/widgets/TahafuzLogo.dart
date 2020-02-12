import 'package:health_financer/packageLib.dart';
import 'package:google_fonts/google_fonts.dart';


class TahafuzLogo extends StatelessWidget {
  const TahafuzLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(42.0),
                  child: Container(width: 580.0,
          height: 100.0,
          child: Container(
            color: Colors.transparent.withOpacity(0.1),
            child: Image.network('https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/pakistan-flag-jaime-enriquez.jpg',
            fit: BoxFit.fill,),
          ),),
        ),
        
        
        
        
        
        Align(
          alignment: Alignment.center,
                  child: Text(
            'Tahafuz',
            style: GoogleFonts.nanumBrushScript(
              textStyle: Theme.of(context).textTheme.display1,
              fontSize: 112.0,
              fontWeight: FontWeight.bold,
              color: Colors.white24,
            ),
          ),
        ),
      ],
    );
  }
}
