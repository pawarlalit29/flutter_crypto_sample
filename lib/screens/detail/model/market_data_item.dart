// ignore_for_file: unnecessary_question_mark

class MarketDataItem {
	CurrentPrice? currentPrice;
	CurrentPrice? high24h;
	CurrentPrice? low24h;
	dynamic? priceChange24h;
	dynamic? priceChangePercentage24h;
	dynamic? priceChangePercentage7d;
	dynamic? priceChangePercentage14d;
	dynamic? priceChangePercentage30d;
	dynamic? priceChangePercentage60d;
	dynamic? priceChangePercentage200d;
	dynamic? priceChangePercentage1y;
	dynamic? marketCapChange24h;
	dynamic? marketCapChangePercentage24h;
	CurrentPrice? priceChange24hInCurrency;
	CurrentPrice? priceChangePercentage7dInCurrency;
	CurrentPrice? priceChangePercentage30dInCurrency;
	CurrentPrice? priceChangePercentage1yInCurrency;
	CurrentPrice? marketCapChange24hInCurrency;
	CurrentPrice? marketCapChangePercentage24hInCurrency;
	dynamic? totalSupply;
	dynamic? maxSupply;
	dynamic? circulatingSupply;
	String? lastUpdated;

	MarketDataItem({this.currentPrice, this.high24h, this.low24h, this.priceChange24h, this.priceChangePercentage24h, this.priceChangePercentage7d, this.priceChangePercentage14d, this.priceChangePercentage30d, this.priceChangePercentage60d, this.priceChangePercentage200d, this.priceChangePercentage1y, this.marketCapChange24h, this.marketCapChangePercentage24h, this.priceChange24hInCurrency, this.priceChangePercentage7dInCurrency, this.priceChangePercentage30dInCurrency, this.priceChangePercentage1yInCurrency, this.marketCapChange24hInCurrency, this.marketCapChangePercentage24hInCurrency, this.totalSupply, this.maxSupply, this.circulatingSupply, this.lastUpdated});

	MarketDataItem.fromJson(Map<String, dynamic> json) {
		currentPrice = json['current_price'] != null ? CurrentPrice.fromJson(json['current_price']) : null;
		high24h = json['high_24h'] != null ? CurrentPrice.fromJson(json['high_24h']) : null;
		low24h = json['low_24h'] != null ? CurrentPrice.fromJson(json['low_24h']) : null;
		priceChange24h = json['price_change_24h'];
		priceChangePercentage24h = json['price_change_percentage_24h'];
		priceChangePercentage7d = json['price_change_percentage_7d'];
		priceChangePercentage14d = json['price_change_percentage_14d'];
		priceChangePercentage30d = json['price_change_percentage_30d'];
		priceChangePercentage60d = json['price_change_percentage_60d'];
		priceChangePercentage200d = json['price_change_percentage_200d'];
		priceChangePercentage1y = json['price_change_percentage_1y'];
		marketCapChange24h = json['market_cap_change_24h'];
		marketCapChangePercentage24h = json['market_cap_change_percentage_24h'];
		priceChange24hInCurrency = json['price_change_24h_in_currency'] != null ? CurrentPrice.fromJson(json['price_change_24h_in_currency']) : null;
		priceChangePercentage7dInCurrency = json['price_change_percentage_7d_in_currency'] != null ? CurrentPrice.fromJson(json['price_change_percentage_7d_in_currency']) : null;
		priceChangePercentage30dInCurrency = json['price_change_percentage_30d_in_currency'] != null ? CurrentPrice.fromJson(json['price_change_percentage_30d_in_currency']) : null;
		priceChangePercentage1yInCurrency = json['price_change_percentage_1y_in_currency'] != null ? CurrentPrice.fromJson(json['price_change_percentage_1y_in_currency']) : null;
		marketCapChange24hInCurrency = json['market_cap_change_24h_in_currency'] != null ? CurrentPrice.fromJson(json['market_cap_change_24h_in_currency']) : null;
		marketCapChangePercentage24hInCurrency = json['market_cap_change_percentage_24h_in_currency'] != null ? CurrentPrice.fromJson(json['market_cap_change_percentage_24h_in_currency']) : null;
		totalSupply = json['total_supply'];
		maxSupply = json['max_supply'];
		circulatingSupply = json['circulating_supply'];
		lastUpdated = json['last_updated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = Map<String, dynamic>();
		if (currentPrice != null) {
      data['current_price'] = currentPrice!.toJson();
    }
		if (high24h != null) {
      data['high_24h'] = high24h!.toJson();
    }
		if (low24h != null) {
      data['low_24h'] = low24h!.toJson();
    }
		data['price_change_24h'] = priceChange24h;
		data['price_change_percentage_24h'] = priceChangePercentage24h;
		data['price_change_percentage_7d'] = priceChangePercentage7d;
		data['price_change_percentage_14d'] = priceChangePercentage14d;
		data['price_change_percentage_30d'] = priceChangePercentage30d;
		data['price_change_percentage_60d'] = priceChangePercentage60d;
		data['price_change_percentage_200d'] = priceChangePercentage200d;
		data['price_change_percentage_1y'] = priceChangePercentage1y;
		data['market_cap_change_24h'] = marketCapChange24h;
		data['market_cap_change_percentage_24h'] = marketCapChangePercentage24h;
		if (priceChange24hInCurrency != null) {
      data['price_change_24h_in_currency'] = priceChange24hInCurrency!.toJson();
    }
		if (priceChangePercentage7dInCurrency != null) {
      data['price_change_percentage_7d_in_currency'] = priceChangePercentage7dInCurrency!.toJson();
    }
		if (priceChangePercentage30dInCurrency != null) {
      data['price_change_percentage_30d_in_currency'] = priceChangePercentage30dInCurrency!.toJson();
    }
		if (priceChangePercentage1yInCurrency != null) {
      data['price_change_percentage_1y_in_currency'] = priceChangePercentage1yInCurrency!.toJson();
    }
		if (marketCapChange24hInCurrency != null) {
      data['market_cap_change_24h_in_currency'] = marketCapChange24hInCurrency!.toJson();
    }
		if (marketCapChangePercentage24hInCurrency != null) {
      data['market_cap_change_percentage_24h_in_currency'] = marketCapChangePercentage24hInCurrency!.toJson();
    }
		data['total_supply'] = totalSupply;
		data['max_supply'] = maxSupply;
		data['circulating_supply'] = circulatingSupply;
		data['last_updated'] = lastUpdated;
		return data;
	}
}

class CurrentPrice {
	dynamic inr;
	
	CurrentPrice({this.inr});

	CurrentPrice.fromJson(Map<String, dynamic> json) {
		inr = json['inr'];
	
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = Map<String, dynamic>();
		data['inr'] = inr;
		return data;
	}
}

