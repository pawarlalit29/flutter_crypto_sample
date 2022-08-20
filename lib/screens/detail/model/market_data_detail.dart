class MarketDataDetails {
  String? id;
  String? symbol;
  String? name;
  Null? assetPlatformId;
  int? blockTimeInMinutes;
  String? hashingAlgorithm;
  Null? publicNotice;
  Description? description;
  Image? image;
  String? genesisDate;
  double? sentimentVotesUpPercentage;
  double? sentimentVotesDownPercentage;
  int? marketCapRank;
  int? coingeckoRank;
  double? coingeckoScore;
  double? developerScore;
  double? communityScore;
  double? liquidityScore;
  double? publicInterestScore;
  String? lastUpdated;
  List<Tickers>? tickers;

  MarketDataDetails(
      {this.id,
      this.symbol,
      this.name,
      this.assetPlatformId,
      this.blockTimeInMinutes,
      this.hashingAlgorithm,
      this.publicNotice,
      this.description,
      this.image,
      this.genesisDate,
      this.sentimentVotesUpPercentage,
      this.sentimentVotesDownPercentage,
      this.marketCapRank,
      this.coingeckoRank,
      this.coingeckoScore,
      this.developerScore,
      this.communityScore,
      this.liquidityScore,
      this.publicInterestScore,
      this.lastUpdated,
      this.tickers});

  MarketDataDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    assetPlatformId = json['asset_platform_id'];
    blockTimeInMinutes = json['block_time_in_minutes'];
    hashingAlgorithm = json['hashing_algorithm'];
    publicNotice = json['public_notice'];
    description = json['description'] != null
        ? new Description.fromJson(json['description'])
        : null;
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    genesisDate = json['genesis_date'];
    sentimentVotesUpPercentage = json['sentiment_votes_up_percentage'];
    sentimentVotesDownPercentage = json['sentiment_votes_down_percentage'];
    marketCapRank = json['market_cap_rank'];
    coingeckoRank = json['coingecko_rank'];
    coingeckoScore = json['coingecko_score'];
    developerScore = json['developer_score'];
    communityScore = json['community_score'];
    liquidityScore = json['liquidity_score'];
    publicInterestScore = json['public_interest_score'];
    lastUpdated = json['last_updated'];
    if (json['tickers'] != null) {
      tickers = <Tickers>[];
      json['tickers'].forEach((v) {
        tickers!.add(new Tickers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['symbol'] = this.symbol;
    data['name'] = this.name;
    data['asset_platform_id'] = this.assetPlatformId;
    data['block_time_in_minutes'] = this.blockTimeInMinutes;
    data['hashing_algorithm'] = this.hashingAlgorithm;
    data['public_notice'] = this.publicNotice;
    if (this.description != null) {
      data['description'] = this.description!.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    data['genesis_date'] = this.genesisDate;
    data['sentiment_votes_up_percentage'] = this.sentimentVotesUpPercentage;
    data['sentiment_votes_down_percentage'] = this.sentimentVotesDownPercentage;
    data['market_cap_rank'] = this.marketCapRank;
    data['coingecko_rank'] = this.coingeckoRank;
    data['coingecko_score'] = this.coingeckoScore;
    data['developer_score'] = this.developerScore;
    data['community_score'] = this.communityScore;
    data['liquidity_score'] = this.liquidityScore;
    data['public_interest_score'] = this.publicInterestScore;
    data['last_updated'] = this.lastUpdated;
    if (this.tickers != null) {
      data['tickers'] = this.tickers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Description {
  String? en;

  Description({this.en});

  Description.fromJson(Map<String, dynamic> json) {
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    return data;
  }
}

class Image {
  String? thumb;
  String? small;
  String? large;

  Image({this.thumb, this.small, this.large});

  Image.fromJson(Map<String, dynamic> json) {
    thumb = json['thumb'];
    small = json['small'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumb'] = this.thumb;
    data['small'] = this.small;
    data['large'] = this.large;
    return data;
  }
}

class Tickers {
  String? base;
  String? target;
  Market? market;
  double? last;
  double? volume;
  ConvertedLast? convertedLast;
  ConvertedLast? convertedVolume;
  String? trustScore;
  double? bidAskSpreadPercentage;
  String? timestamp;
  String? lastTradedAt;
  String? lastFetchAt;
  bool? isAnomaly;
  bool? isStale;
  String? tradeUrl;
  Null? tokenInfoUrl;
  String? coinId;
  String? targetCoinId;

  Tickers(
      {this.base,
      this.target,
      this.market,
      this.last,
      this.volume,
      this.convertedLast,
      this.convertedVolume,
      this.trustScore,
      this.bidAskSpreadPercentage,
      this.timestamp,
      this.lastTradedAt,
      this.lastFetchAt,
      this.isAnomaly,
      this.isStale,
      this.tradeUrl,
      this.tokenInfoUrl,
      this.coinId,
      this.targetCoinId});

  Tickers.fromJson(Map<String, dynamic> json) {
    base = json['base'];
    target = json['target'];
    market =
        json['market'] != null ? new Market.fromJson(json['market']) : null;
    last = json['last'];
    volume = json['volume'];
    convertedLast = json['converted_last'] != null
        ? new ConvertedLast.fromJson(json['converted_last'])
        : null;
    convertedVolume = json['converted_volume'] != null
        ? new ConvertedLast.fromJson(json['converted_volume'])
        : null;
    trustScore = json['trust_score'];
    bidAskSpreadPercentage = json['bid_ask_spread_percentage'];
    timestamp = json['timestamp'];
    lastTradedAt = json['last_traded_at'];
    lastFetchAt = json['last_fetch_at'];
    isAnomaly = json['is_anomaly'];
    isStale = json['is_stale'];
    tradeUrl = json['trade_url'];
    tokenInfoUrl = json['token_info_url'];
    coinId = json['coin_id'];
    targetCoinId = json['target_coin_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base'] = this.base;
    data['target'] = this.target;
    if (this.market != null) {
      data['market'] = this.market!.toJson();
    }
    data['last'] = this.last;
    data['volume'] = this.volume;
    if (this.convertedLast != null) {
      data['converted_last'] = this.convertedLast!.toJson();
    }
    if (this.convertedVolume != null) {
      data['converted_volume'] = this.convertedVolume!.toJson();
    }
    data['trust_score'] = this.trustScore;
    data['bid_ask_spread_percentage'] = this.bidAskSpreadPercentage;
    data['timestamp'] = this.timestamp;
    data['last_traded_at'] = this.lastTradedAt;
    data['last_fetch_at'] = this.lastFetchAt;
    data['is_anomaly'] = this.isAnomaly;
    data['is_stale'] = this.isStale;
    data['trade_url'] = this.tradeUrl;
    data['token_info_url'] = this.tokenInfoUrl;
    data['coin_id'] = this.coinId;
    data['target_coin_id'] = this.targetCoinId;
    return data;
  }
}

class Market {
  String? name;
  String? identifier;
  bool? hasTradingIncentive;

  Market({this.name, this.identifier, this.hasTradingIncentive});

  Market.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    identifier = json['identifier'];
    hasTradingIncentive = json['has_trading_incentive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['identifier'] = this.identifier;
    data['has_trading_incentive'] = this.hasTradingIncentive;
    return data;
  }
}

class ConvertedLast {
  dynamic? btc;
  dynamic? eth;
  dynamic? usd;

  ConvertedLast({this.btc, this.eth, this.usd});

  ConvertedLast.fromJson(Map<String, dynamic> json) {
    btc = json['btc'];
    eth = json['eth'];
    usd = json['usd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['btc'] = this.btc;
    data['eth'] = this.eth;
    data['usd'] = this.usd;
    return data;
  }
}
