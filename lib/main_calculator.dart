class CalculateBMI {
  final int height;
  final int weight;
  double _bmi;
  CalculateBMI({this.height,this.weight}) {
    _bmi=weight/((height/100)*(height/100))*1.00;
  }
  String getBMI(){
    return _bmi.toStringAsFixed(2);
  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher body weight then normal. Try to exercise more.';
    }
    else if(_bmi>18.5){
      return 'You have a normal body weight. Good Job!';
    }
    else{
      return 'You have a lower body weight then normal. You can eat a bit more.';
    }
  }


}