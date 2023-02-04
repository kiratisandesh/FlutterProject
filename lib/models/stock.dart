class Stock {
  final String symbol;
  final String company;
  final double price;
  final String rate;

  Stock(
      {required this.symbol,
      required this.company,
      required this.price,
      required this.rate});

  static List<Stock> getAll() {
    List<Stock> stocks = <Stock>[];
    stocks.add(Stock(
        company: "Lumbini General Insurance Co. Ltd.",
        symbol: "LGIL",
        price: 508.40,
        rate: "10.00%"));
    stocks.add(Stock(
        company: "Adarsha Laghubitta Bittiya Sanstha Limited",
        symbol: "ADLB	",
        price: 1449.30,
        rate: "10.00%"));
    stocks.add(Stock(
        company: "Peoples Hydropower Company Limited",
        symbol: "PHCL	",
        price: 384.00,
        rate: "6.14%"));
    stocks.add(Stock(
        company: "SuryaJyoti Life Insurance Company Limited",
        symbol: "SJLIC	",
        price: 519.10,
        rate: "5.00%"));
    stocks.add(Stock(
        company: "Barahi Hydropower Public Limited",
        symbol: "BHPL	",
        price: 560.00,
        rate: "4.71%"));
    stocks.add(Stock(
        company: "Swet-Ganga Hydropower & Construction Limited",
        symbol: "SGHC",
        price: 374.40,
        rate: "9.04%"));

    return stocks;
  }
}
