class Operator {
  String operator;

  Operator(this.operator);

  static List<Operator> sOperator = [
    Operator("+"),
    Operator("-"),
    Operator("*"),
    Operator("/")
  ];
}
