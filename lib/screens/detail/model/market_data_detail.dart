import 'package:flutter_crypto_sample/screens/detail/model/market_data_item.dart';

class MarketDataDetails {
  String? id;
  String? symbol;
  String? name;
  String? assetPlatformId;
  int? blockTimeInMinutes;
  String? hashingAlgorithm;
  Null? publicNotice;
  Description? description;
  Image_? image;
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
  MarketDataItem? marketDataItem;

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
        ? Description.fromJson(json['description'])
        : null;
    image = json['image'] != null ? Image_.fromJson(json['image']) : null;
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
    marketDataItem = json['market_data'] != null ? MarketDataItem.fromJson(json['market_data']) : null;
    if (json['tickers'] != null) {
      tickers = <Tickers>[];
      json['tickers'].forEach((v) {
        tickers!.add(Tickers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['symbol'] = symbol;
    data['name'] = name;
    data['asset_platform_id'] = assetPlatformId;
    data['block_time_in_minutes'] = blockTimeInMinutes;
    data['hashing_algorithm'] = hashingAlgorithm;
    data['public_notice'] = publicNotice;
    if (description != null) {
      data['description'] = description!.toJson();
    }
    if (image != null) {
      data['image'] = image!.toJson();
    }
    data['genesis_date'] = genesisDate;
    data['sentiment_votes_up_percentage'] = sentimentVotesUpPercentage;
    data['sentiment_votes_down_percentage'] = sentimentVotesDownPercentage;
    data['market_cap_rank'] = marketCapRank;
    data['coingecko_rank'] = coingeckoRank;
    data['coingecko_score'] = coingeckoScore;
    data['developer_score'] = developerScore;
    data['community_score'] = communityScore;
    data['liquidity_score'] = liquidityScore;
    data['public_interest_score'] = publicInterestScore;
    data['last_updated'] = lastUpdated;
    data['market_data'] = marketDataItem;
    if (tickers != null) {
      data['tickers'] = tickers!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['en'] = en;
    return data;
  }
}

class Image_ {
  String? thumb;
  String? small;
  String? large;

  Image_({this.thumb, this.small, this.large});

  Image_.fromJson(Map<String, dynamic> json) {
    thumb = json['thumb'];
    small = json['small'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['thumb'] = thumb;
    data['small'] = small;
    data['large'] = large;
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
  String? tokenInfoUrl;
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
        json['market'] != null ? Market.fromJson(json['market']) : null;
    last = json['last'];
    volume = json['volume'];
    convertedLast = json['converted_last'] != null
        ? ConvertedLast.fromJson(json['converted_last'])
        : null;
    convertedVolume = json['converted_volume'] != null
        ? ConvertedLast.fromJson(json['converted_volume'])
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['base'] = base;
    data['target'] = target;
    if (market != null) {
      data['market'] = market!.toJson();
    }
    data['last'] = last;
    data['volume'] = volume;
    if (convertedLast != null) {
      data['converted_last'] = convertedLast!.toJson();
    }
    if (convertedVolume != null) {
      data['converted_volume'] = convertedVolume!.toJson();
    }
    data['trust_score'] = trustScore;
    data['bid_ask_spread_percentage'] = bidAskSpreadPercentage;
    data['timestamp'] = timestamp;
    data['last_traded_at'] = lastTradedAt;
    data['last_fetch_at'] = lastFetchAt;
    data['is_anomaly'] = isAnomaly;
    data['is_stale'] = isStale;
    data['trade_url'] = tradeUrl;
    data['token_info_url'] = tokenInfoUrl;
    data['coin_id'] = coinId;
    data['target_coin_id'] = targetCoinId;
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['identifier'] = identifier;
    data['has_trading_incentive'] = hasTradingIncentive;
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['btc'] = btc;
    data['eth'] = eth;
    data['usd'] = usd;
    return data;
  }
}
