class Coronaupdate {
  String? provinceState;
  String? countryRegion;
  String? lastUpdate;
  String? confirmed;
  String? deaths;
  String? recovered;

  Coronaupdate(
      {this.provinceState,
      this.countryRegion,
      this.lastUpdate,
      this.confirmed,
      this.deaths,
      this.recovered});

 factory   Coronaupdate.fromJson(Map<String, dynamic> json) { return
 Coronaupdate(
    provinceState :json['provinceState'],
    countryRegion : json['countryRegion'],
    lastUpdate :json['lastUpdate'],
    confirmed : json['confirmed'],
    deaths : json['deaths'],
    recovered : json['recovered'],);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['provinceState'] = this.provinceState;
    data['countryRegion'] = this.countryRegion;
    data['lastUpdate'] = this.lastUpdate;
    data['confirmed'] = this.confirmed;
    data['deaths'] = this.deaths;
    data['recovered'] = this.recovered;
    return data;
  }
}
