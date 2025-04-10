void main(List<String> args) {
  String s1 = 'new string';
  String s2 = " it's me ";
  int temp = 56;
  String s3 = "tempearature$temp";
  String s4 = ''' multiple line string   
              hello how are yo  ''';
  String s5 =
      r'hello nme new   hello  how \n hello new video '; //! called absoulte string which skip new line funcitonalites and act as normala string

  String s6 = 'there is new rose emoji : \u{1ff39}';
  print(s1 + s2 + s3 + s4 + s5 + s6);
}
