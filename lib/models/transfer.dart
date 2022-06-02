class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);

  @override
  String toString() {
    return '{ vallue: $value, account: $accountNumber }';
  }
}
