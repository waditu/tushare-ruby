require 'spec_helper'

describe Tushare::Datayes do
  before do
    @datayes = Tushare::Datayes
  end

  it 'can get china_macro_data data' do
    tp @datayes.china_macro_data(indic_id: 'M010000002')
  end

  it 'can get china_macro_info data' do
    tp @datayes.china_macro_info(indic_id: 'M010000002')
  end

  it 'can get global_macro_data data' do
    tp @datayes.global_macro_data(indic_id: 'G010000003')
  end

  it 'can get global_macro_info data' do
    tp @datayes.global_macro_info(indic_id: 'G010000003')
  end

  it 'can get industrial_data data' do
    tp @datayes.industrial_data(indic_id: 'I010000004')
  end

  it 'can get industrial_info data' do
    tp @datayes.industrial_info(indic_id: 'I010000004')
  end

  it 'can get china_data_gdp data' do
    tp @datayes.china_data_gdp(indic_id: 'M010000002')
  end

  it 'can get china_data_eci data' do
    tp @datayes.china_data_eci(indic_id: 'M020000003')
  end

  it 'can get china_data_pmi data' do
    tp @datayes.china_data_pmi(indic_id: 'M020000008')
  end

  it 'can get china_data_cci data' do
    tp @datayes.china_data_cci(indic_id: 'M020000042')
  end

  it 'can get china_data_economists_boom_index data' do
    tp @datayes.china_data_economists_boom_index(indic_id: 'M020000046')
  end

  it 'can get china_data_industrial_business_climate_index data' do
    tp @datayes.china_data_industrial_business_climate_index(indic_id: 'M020000050')
  end

  it 'can get china_data_cpi data' do
    tp @datayes.china_data_cpi(indic_id: 'M030000003')
  end

  it 'can get china_data_ppi data' do
    tp @datayes.china_data_ppi(indic_id: 'M030000147')
  end

  it 'can get china_data_industry data' do
    tp @datayes.china_data_industry(indic_id: 'M040000003')
  end

  it 'can get china_data_retail_sales data' do
    tp @datayes.china_data_retail_sales(indic_id: 'M050000002')
  end

  it 'can get china_data_resident_income_exp data' do
    tp @datayes.china_data_resident_income_exp(indic_id: 'M060000003')
  end

  it 'can get china_data_fai data' do
    tp @datayes.china_data_fai(indic_id: 'M070000003')
  end

  it 'can get china_data_real_estate data' do
    tp @datayes.china_data_real_estate(indic_id: 'M080000003')
  end

  it 'can get china_data_foreign_trade data' do
    tp @datayes.china_data_foreign_trade(indic_id: 'M090000003')
  end

  it 'can get china_data_fdi data' do
    tp @datayes.china_data_fdi(indic_id: 'M090000030')
  end

  it 'can get china_data_money_statistics data' do
    tp @datayes.china_data_money_statistics(indic_id: 'M100000003')
  end

  it 'can get china_data_all_system_financing data' do
    tp @datayes.china_data_all_system_financing(indic_id: 'M100000017')
  end

  it 'can get china_data_lending_deposit data' do
    tp @datayes.china_data_lending_deposit(indic_id: 'M100000035')
  end

  it 'can get china_data_credit_funds_table data' do
    tp @datayes.china_data_credit_funds_table(indic_id: 'M100000064')
  end

  it 'can get china_data_open_market_operation data' do
    tp @datayes.china_data_open_market_operation(indic_id: 'M100000280')
  end

  it 'can get china_data_exchange_rate data' do
    tp @datayes.china_data_exchange_rate(indic_id: 'M110000003')
  end

  it 'can get china_data_interest_rate_lending_deposit data' do
    tp @datayes.china_data_interest_rate_lending_deposit(indic_id: 'M120000004')
  end

  it 'can get china_data_interest_rate_shibor data' do
    tp @datayes.china_data_interest_rate_shibor(indic_id: 'M120000057')
  end

  it 'can get china_data_interest_rate_interbank_repo data' do
    tp @datayes.china_data_interest_rate_interbank_repo(indic_id: 'M120000067')
  end

  it 'can get china_data_finance data' do
    tp @datayes.china_data_finance(indic_id: 'M130000003')
  end

  it 'can get china_data_gold_close_price data' do
    tp @datayes.china_data_gold_close_price(indic_id: 'M140000090', begin_date: '20140101')
  end

  it 'can get us_data_gdp data' do
    tp @datayes.us_data_gdp(indic_id: 'G010000003')
  end

  it 'can get us_data_foreign_trade data' do
    tp @datayes.us_data_foreign_trade(indic_id: 'G010000009')
  end

  it 'can get us_data_price_index data' do
    tp @datayes.us_data_price_index(indic_id: 'G010000038')
  end

  it 'can get us_data_employment_unemployment data' do
    tp @datayes.us_data_employment_unemployment(indic_id: 'G010000065')
  end

  it 'can get us_data_interest_rate data' do
    tp @datayes.us_data_interest_rate(indic_id: 'G010000087')
  end

  it 'can get us_data_exchange_rate data' do
    tp @datayes.us_data_exchange_rate(indic_id: 'G010000108')
  end

  it 'can get us_data_money_supply data' do
    tp @datayes.us_data_money_supply(indic_id: 'G010000139')
  end

  it 'can get us_data_consumer_credit data' do
    tp @datayes.us_data_consumer_credit(indic_id: 'G010000150')
  end

  it 'can get us_data_climate_index data' do
    tp @datayes.us_data_climate_index(indic_id: 'G010000158')
  end

  it 'can get us_data_durable_goods data' do
    tp @datayes.us_data_durable_goods(indic_id: 'G010000203')
  end

  it 'can get us_data_real_estate data' do
    tp @datayes.us_data_real_estate(indic_id: 'G010000212')
  end

  it 'can get us_data_domestic_trade data' do
    tp @datayes.us_data_domestic_trade(indic_id: 'G010000227')
  end

  it 'can get eu_data_gdp data' do
    tp @datayes.eu_data_gdp(indic_id: 'G020000004')
  end

  it 'can get eu_data_foreign_trade data' do
    tp @datayes.eu_data_foreign_trade(indic_id: 'G020000024')
  end

  it 'can get eu_data_price_index data' do
    tp @datayes.eu_data_price_index(indic_id: 'G020000034')
  end

  it 'can get eu_data_employment_unemployment data' do
    tp @datayes.eu_data_employment_unemployment(indic_id: 'G020000054')
  end

  it 'can get eu_data_interest_rate data' do
    tp @datayes.eu_data_interest_rate(indic_id: 'G020000062')
  end

  it 'can get eu_data_exchange_rate data' do
    tp @datayes.eu_data_exchange_rate(indic_id: 'G020000113')
  end

  it 'can get eu_data_banking data' do
    tp @datayes.eu_data_banking(indic_id: 'G020000146')
  end

  it 'can get eu_data_climate_index data' do
    tp @datayes.eu_data_climate_index(indic_id: 'G020000170')
  end

  it 'can get eu_data_industry data' do
    tp @datayes.eu_data_industry(indic_id: 'G020000198')
  end

  it 'can get eu_data_retail data' do
    tp @datayes.eu_data_retail(indic_id: 'G020000206')
  end

  it 'can get switzerland_data_gdp data' do
    tp @datayes.switzerland_data_gdp(indic_id: 'G110000003')
  end

  it 'can get switzerland_data_price_index data' do
    tp @datayes.switzerland_data_price_index(indic_id: 'G110000009')
  end

  it 'can get switzerland_data_climate_index data' do
    tp @datayes.switzerland_data_climate_index(indic_id: 'G110000017')
  end

  it 'can get switzerland_data_money_supply data' do
    tp @datayes.switzerland_data_money_supply(indic_id: 'G110000019')
  end

  it 'can get sweden_data_gdp data' do
    tp @datayes.sweden_data_gdp(indic_id: 'G120000003')
  end

  it 'can get sweden_data_price_index data' do
    tp @datayes.sweden_data_price_index(indic_id: 'G120000009')
  end

  it 'can get sweden_data_foreign_trade data' do
    tp @datayes.sweden_data_foreign_trade(indic_id: 'G120000030')
  end

  it 'can get korea_data_gdp data' do
    tp @datayes.korea_data_gdp(indic_id: 'G130000003')
  end

  it 'can get korea_data_price_index data' do
    tp @datayes.korea_data_price_index(indic_id: 'G130000010')
  end

  it 'can get korea_data_employment_unemployment data' do
    tp @datayes.korea_data_employment_unemployment(indic_id: 'G130000016')
  end

  it 'can get korea_data_interest_rates data' do
    tp @datayes.korea_data_interest_rates(indic_id: 'G130000019')
  end

  it 'can get korea_data_exchange_rate data' do
    tp @datayes.korea_data_exchange_rate(indic_id: 'G130000027')
  end

  it 'can get korea_data_money_supply data' do
    tp @datayes.korea_data_money_supply(indic_id: 'G130000032')
  end

  it 'can get korea_data_climate_index data' do
    tp @datayes.korea_data_climate_index(indic_id: 'G130000040')
  end

  it 'can get korea_data_external_debt data' do
    tp @datayes.korea_data_external_debt(indic_id: 'G130000051')
  end

  it 'can get korea_data_industryand_service data' do
    tp @datayes.korea_data_industryand_service(indic_id: 'G130000056')
  end

  it 'can get korea_data_real_estate data' do
    tp @datayes.korea_data_real_estate(indic_id: 'G130000067')
  end

  it 'can get australia_data_gdp data' do
    tp @datayes.australia_data_gdp(indic_id: 'G070000003')
  end

  it 'can get australia_data_foreign_trade data' do
    tp @datayes.australia_data_foreign_trade(indic_id: 'G070000015')
  end

  it 'can get australia_data_price_index data' do
    tp @datayes.australia_data_price_index(indic_id: 'G070000039')
  end

  it 'can get australia_data_employment data' do
    tp @datayes.australia_data_employment(indic_id: 'G070000049')
  end

  it 'can get australia_data_climate_index data' do
    tp @datayes.australia_data_climate_index(indic_id: 'G070000061')
  end

  it 'can get italy_data_gdp data' do
    tp @datayes.italy_data_gdp(indic_id: 'G080000004')
  end

  it 'can get italy_data_payments_balance data' do
    tp @datayes.italy_data_payments_balance(indic_id: 'G080000011')
  end

  it 'can get italy_data_price_index data' do
    tp @datayes.italy_data_price_index(indic_id: 'G080000018')
  end

  it 'can get italy_data_employment data' do
    tp @datayes.italy_data_employment(indic_id: 'G080000027')
  end

  it 'can get italy_data_finance data' do
    tp @datayes.italy_data_finance(indic_id: 'G080000034')
  end

  it 'can get italy_data_climate_index data' do
    tp @datayes.italy_data_climate_index(indic_id: 'G080000039')
  end

  it 'can get italy_data_interest_rate data' do
    tp @datayes.italy_data_interest_rate(indic_id: 'G080000046')
  end

  it 'can get spain_data_gdp data' do
    tp @datayes.spain_data_gdp(indic_id: 'G090000004')
  end

  it 'can get spain_data_foreign_trade data' do
    tp @datayes.spain_data_foreign_trade(indic_id: 'G090000028')
  end

  it 'can get spain_data_payments_balance data' do
    tp @datayes.spain_data_payments_balance(indic_id: 'G090000019')
  end

  it 'can get spain_data_banking data' do
    tp @datayes.spain_data_banking(indic_id: 'G090000032')
  end

  it 'can get spain_data_transportation data' do
    tp @datayes.spain_data_transportation(indic_id: 'G090000039')
  end

  it 'can get spain_data_energy data' do
    tp @datayes.spain_data_energy(indic_id: 'G090000049')
  end

  it 'can get spain_data_finance data' do
    tp @datayes.spain_data_finance(indic_id: 'G090000058')
  end

  it 'can get canada_data_gdp data' do
    tp @datayes.canada_data_gdp(indic_id: 'G100000003')
  end

  it 'can get canada_data_payments_balance data' do
    tp @datayes.canada_data_payments_balance(indic_id: 'G100000021')
  end

  it 'can get canada_data_foreign_trade data' do
    tp @datayes.canada_data_foreign_trade(indic_id: 'G100000025')
  end

  it 'can get canada_data_price_index data' do
    tp @datayes.canada_data_price_index(indic_id: 'G100000034')
  end

  it 'can get canada_data_banking data' do
    tp @datayes.canada_data_banking(indic_id: 'G100000061')
  end

  it 'can get canada_data_employment data' do
    tp @datayes.canada_data_employment(indic_id: 'G100000080')
  end

  it 'can get canada_data_manufacturing data' do
    tp @datayes.canada_data_manufacturing(indic_id: 'G100000088')
  end

  it 'can get canada_data_real_estate data' do
    tp @datayes.canada_data_real_estate(indic_id: 'G100000096')
  end

  it 'can get canada_data_climate_index data' do
    tp @datayes.canada_data_climate_index(indic_id: 'G100000101')
  end

  it 'can get hk_data_gdp data' do
    tp @datayes.hk_data_gdp(indic_id: 'G140000004')
  end

  it 'can get hk_data_foreign_trade data' do
    tp @datayes.hk_data_foreign_trade(indic_id: 'G140000006')
  end

  it 'can get hk_data_price_index data' do
    tp @datayes.hk_data_price_index(indic_id: 'G140000018')
  end

  it 'can get hk_data_finance data' do
    tp @datayes.hk_data_finance(indic_id: 'G140000030')
  end

  it 'can get hk_data_banking data' do
    tp @datayes.hk_data_banking(indic_id: 'G140000035')
  end

  it 'can get hk_data_industry data' do
    tp @datayes.hk_data_industry(indic_id: 'G140000048')
  end

  it 'can get hk_data_consumption data' do
    tp @datayes.hk_data_consumption(indic_id: 'G140000051')
  end

  it 'can get hk_data_throughput data' do
    tp @datayes.hk_data_throughput(indic_id: 'G140000062')
  end

  it 'can get hk_data_employment data' do
    tp @datayes.hk_data_employment(indic_id: 'G140000064')
  end

  it 'can get hk_data_interest_rate data' do
    tp @datayes.hk_data_interest_rate(indic_id: 'G140000073')
  end

  it 'can get hk_data_exchange_rate data' do
    tp @datayes.hk_data_exchange_rate(indic_id: 'G140000102')
  end

  it 'can get hk_data_real_estate data' do
    tp @datayes.hk_data_real_estate(indic_id: 'G140000106')
  end

  it 'can get hk_data_tourism data' do
    tp @datayes.hk_data_tourism(indic_id: 'G140000110')
  end

  it 'can get india_data_gdp data' do
    tp @datayes.india_data_gdp(indic_id: 'G200000003')
  end

  it 'can get india_data_payments_balance data' do
    tp @datayes.india_data_payments_balance(indic_id: 'G200000006')
  end

  it 'can get india_data_price_index data' do
    tp @datayes.india_data_price_index(indic_id: 'G200000016')
  end

  it 'can get india_data_tourism data' do
    tp @datayes.india_data_tourism(indic_id: 'G200000033')
  end

  it 'can get india_data_energy data' do
    tp @datayes.india_data_energy(indic_id: 'G200000035')
  end

  it 'can get india_data_climate_index data' do
    tp @datayes.india_data_climate_index(indic_id: 'G200000045')
  end

  it 'can get india_data_banking data' do
    tp @datayes.india_data_banking(indic_id: 'G200000049')
  end

  it 'can get india_data_industry data' do
    tp @datayes.india_data_industry(indic_id: 'G200000073')
  end

  it 'can get india_data_foreign_trade data' do
    tp @datayes.india_data_foreign_trade(indic_id: 'G200000095')
  end

  it 'can get malaysia_data_gdp data' do
    tp @datayes.malaysia_data_gdp(indic_id: 'G210000003')
  end

  it 'can get malaysia_data_payments_balance data' do
    tp @datayes.malaysia_data_payments_balance(indic_id: 'G210000007')
  end

  it 'can get malaysia_data_foreign_trade data' do
    tp @datayes.malaysia_data_foreign_trade(indic_id: 'G210000024')
  end

  it 'can get malaysia_data_price_index data' do
    tp @datayes.malaysia_data_price_index(indic_id: 'G210000032')
  end

  it 'can get malaysia_data_employment data' do
    tp @datayes.malaysia_data_employment(indic_id: 'G210000038')
  end

  it 'can get malaysia_data_industry data' do
    tp @datayes.malaysia_data_industry(indic_id: 'G210000040')
  end

  it 'can get malaysia_data_finance data' do
    tp @datayes.malaysia_data_finance(indic_id: 'G210000042')
  end

  it 'can get malaysia_data_money_supply data' do
    tp @datayes.malaysia_data_money_supply(indic_id: 'G210000046')
  end

  it 'can get malaysia_data_real_estate data' do
    tp @datayes.malaysia_data_real_estate(indic_id: 'G210000052')
  end

  it 'can get indonesia_data_gdp data' do
    tp @datayes.indonesia_data_gdp(indic_id: 'G220000003')
  end

  it 'can get indonesia_data_payments_balance data' do
    tp @datayes.indonesia_data_payments_balance(indic_id: 'G220000015')
  end

  it 'can get indonesia_data_foreign_trade data' do
    tp @datayes.indonesia_data_foreign_trade(indic_id: 'G220000030')
  end

  it 'can get indonesia_data_price_index data' do
    tp @datayes.indonesia_data_price_index(indic_id: 'G220000036')
  end

  it 'can get indonesia_data_industry data' do
    tp @datayes.indonesia_data_industry(indic_id: 'G220000040')
  end

  it 'can get indonesia_data_finance data' do
    tp @datayes.indonesia_data_finance(indic_id: 'G220000042')
  end

  it 'can get indonesia_data_banking data' do
    tp @datayes.indonesia_data_banking(indic_id: 'G220000044')
  end

  it 'can get indonesia_data_security data' do
    tp @datayes.indonesia_data_security(indic_id: 'G220000048')
  end

  it 'can get indonesia_data_tourism data' do
    tp @datayes.indonesia_data_tourism(indic_id: 'G220000057')
  end

  it 'can get turkey_data_gdp data' do
    tp @datayes.turkey_data_gdp(indic_id: 'G230000003')
  end

  it 'can get turkey_data_payments_balance data' do
    tp @datayes.turkey_data_payments_balance(indic_id: 'G230000008')
  end

  it 'can get turkey_data_foreign_trade data' do
    tp @datayes.turkey_data_foreign_trade(indic_id: 'G230000031')
  end

  it 'can get turkey_data_price_index data' do
    tp @datayes.turkey_data_price_index(indic_id: 'G230000037')
  end

  it 'can get turkey_data_employment data' do
    tp @datayes.turkey_data_employment(indic_id: 'G230000041')
  end

  it 'can get turkey_data_industry data' do
    tp @datayes.turkey_data_industry(indic_id: 'G230000043')
  end

  it 'can get turkey_data_finance data' do
    tp @datayes.turkey_data_finance(indic_id: 'G230000045')
  end

  it 'can get turkey_data_money_supply data' do
    tp @datayes.turkey_data_money_supply(indic_id: 'G230000049')
  end

  it 'can get thailand_data_gdp data' do
    tp @datayes.thailand_data_gdp(indic_id: 'G240000003')
  end

  it 'can get thailand_data_payments_balance data' do
    tp @datayes.thailand_data_payments_balance(indic_id: 'G240000021')
  end

  it 'can get thailand_data_foreign_trade data' do
    tp @datayes.thailand_data_foreign_trade(indic_id: 'G240000036')
  end

  it 'can get thailand_data_price_index data' do
    tp @datayes.thailand_data_price_index(indic_id: 'G240000039')
  end

  it 'can get thailand_data_employment data' do
    tp @datayes.thailand_data_employment(indic_id: 'G240000049')
  end

  it 'can get thailand_data_industry data' do
    tp @datayes.thailand_data_industry(indic_id: 'G240000060')
  end

  it 'can get thailand_data_finance data' do
    tp @datayes.thailand_data_finance(indic_id: 'G240000070')
  end

  it 'can get thailand_data_climate_index data' do
    tp @datayes.thailand_data_climate_index(indic_id: 'G240000078')
  end

  it 'can get thailand_data_money_supply data' do
    tp @datayes.thailand_data_money_supply(indic_id: 'G240000093')
  end

  it 'can get uk_data_gdp data' do
    tp @datayes.uk_data_gdp(indic_id: 'G060000003')
  end

  it 'can get uk_data_foreign_trade data' do
    tp @datayes.uk_data_foreign_trade(indic_id: 'G060000011')
  end

  it 'can get uk_data_cpi data' do
    tp @datayes.uk_data_cpi(indic_id: 'G060000021')
  end

  it 'can get uk_data_rpi data' do
    tp @datayes.uk_data_rpi(indic_id: 'G060000028')
  end

  it 'can get uk_data_employment data' do
    tp @datayes.uk_data_employment(indic_id: 'G060000032')
  end

  it 'can get uk_data_money_supply data' do
    tp @datayes.uk_data_money_supply(indic_id: 'G060000038')
  end

  it 'can get uk_data_consumer_credit data' do
    tp @datayes.uk_data_consumer_credit(indic_id: 'G060000051')
  end

  it 'can get uk_data_climate_index data' do
    tp @datayes.uk_data_climate_index(indic_id: 'G060000054')
  end

  it 'can get uk_data_finance data' do
    tp @datayes.uk_data_finance(indic_id: 'G060000058')
  end

  it 'can get uk_data_industrial_pi data' do
    tp @datayes.uk_data_industrial_pi(indic_id: 'G060000063')
  end

  it 'can get uk_data_house_pi data' do
    tp @datayes.uk_data_house_pi(indic_id: 'G060000068')
  end

  it 'can get uk_data_interest_rates data' do
    tp @datayes.uk_data_interest_rates(indic_id: 'G060000075')
  end

  it 'can get uk_data_exchange_rate data' do
    tp @datayes.uk_data_exchange_rate(indic_id: 'G060000084')
  end

  it 'can get japan_data_gdp data' do
    tp @datayes.japan_data_gdp(indic_id: 'G030000003')
  end

  it 'can get japan_data_foreign_trade data' do
    tp @datayes.japan_data_foreign_trade(indic_id: 'G030000011')
  end

  it 'can get japan_data_cpi data' do
    tp @datayes.japan_data_cpi(indic_id: 'G030000021')
  end

  it 'can get japan_data_employment data' do
    tp @datayes.japan_data_employment(indic_id: 'G030000032')
  end

  it 'can get japan_data_money_supply data' do
    tp @datayes.japan_data_money_supply(indic_id: 'G030000039')
  end

  it 'can get japan_data_climate_index data' do
    tp @datayes.japan_data_climate_index(indic_id: 'G030000049')
  end

  it 'can get japan_data_industrial_pi data' do
    tp @datayes.japan_data_industrial_pi(indic_id: 'G030000061')
  end

  it 'can get japan_data_house_pi data' do
    tp @datayes.japan_data_house_pi(indic_id: 'G030000068')
  end

  it 'can get japan_data_interest_rates data' do
    tp @datayes.japan_data_interest_rates(indic_id: 'G030000071')
  end

  it 'can get japan_data_exchange_rate data' do
    tp @datayes.japan_data_exchange_rate(indic_id: 'G030000079')
  end

  it 'can get germany_data_gdp data' do
    tp @datayes.germany_data_gdp(indic_id: 'G040000003')
  end

  it 'can get germany_data_foreign_trade data' do
    tp @datayes.germany_data_foreign_trade(indic_id: 'G040000011')
  end

  it 'can get germany_data_cpi data' do
    tp @datayes.germany_data_cpi(indic_id: 'G040000024')
  end

  it 'can get germany_data_ppi data' do
    tp @datayes.germany_data_ppi(indic_id: 'G040000037')
  end

  it 'can get germany_data_import_export_pi data' do
    tp @datayes.germany_data_import_export_pi(indic_id: 'G040000041')
  end

  it 'can get germany_data_employment data' do
    tp @datayes.germany_data_employment(indic_id: 'G040000044')
  end

  it 'can get germany_data_money_supply data' do
    tp @datayes.germany_data_money_supply(indic_id: 'G040000056')
  end

  it 'can get germany_data_climate_index data' do
    tp @datayes.germany_data_climate_index(indic_id: 'G040000063')
  end

  it 'can get germany_data_finance data' do
    tp @datayes.germany_data_finance(indic_id: 'G040000070')
  end

  it 'can get germany_data_industrial_pi data' do
    tp @datayes.germany_data_industrial_pi(indic_id: 'G040000077')
  end

  it 'can get germany_data_real_estate data' do
    tp @datayes.germany_data_real_estate(indic_id: 'G040000085')
  end

  it 'can get germany_data_domestic_trade data' do
    tp @datayes.germany_data_domestic_trade(indic_id: 'G040000094')
  end

  it 'can get germany_data_interest_rates data' do
    tp @datayes.germany_data_interest_rates(indic_id: 'G040000098')
  end

  it 'can get france_data_finance data' do
    tp @datayes.france_data_finance(indic_id: 'G050000003')
  end

  it 'can get france_data_gdp data' do
    tp @datayes.france_data_gdp(indic_id: 'G050000008')
  end

  it 'can get france_data_foreign_trade data' do
    tp @datayes.france_data_foreign_trade(indic_id: 'G050000012')
  end

  it 'can get france_data_cpi data' do
    tp @datayes.france_data_cpi(indic_id: 'G050000017')
  end

  it 'can get france_data_ppi data' do
    tp @datayes.france_data_ppi(indic_id: 'G050000025')
  end

  it 'can get france_data_import_pi data' do
    tp @datayes.france_data_import_pi(indic_id: 'G050000029')
  end

  it 'can get france_data_employment data' do
    tp @datayes.france_data_employment(indic_id: 'G050000031')
  end

  it 'can get france_data_money_supply data' do
    tp @datayes.france_data_money_supply(indic_id: 'G050000034')
  end

  it 'can get france_data_climate_index data' do
    tp @datayes.france_data_climate_index(indic_id: 'G050000038')
  end

  it 'can get france_data_industrial_pi data' do
    tp @datayes.france_data_industrial_pi(indic_id: 'G050000043')
  end

  it 'can get france_data_domestic_trade data' do
    tp @datayes.france_data_domestic_trade(indic_id: 'G050000050')
  end

  it 'can get france_data_interest_rates data' do
    tp @datayes.france_data_interest_rates(indic_id: 'G050000054')
  end

  it 'can get taiwan_data_gdp data' do
    tp @datayes.taiwan_data_gdp(indic_id: 'G150000003')
  end

  it 'can get taiwan_data_external_debt data' do
    tp @datayes.taiwan_data_external_debt(indic_id: 'G150000012')
  end

  it 'can get taiwan_data_foreign_trade data' do
    tp @datayes.taiwan_data_foreign_trade(indic_id: 'G150000015')
  end

  it 'can get taiwan_data_cpi data' do
    tp @datayes.taiwan_data_cpi(indic_id: 'G150000024')
  end

  it 'can get taiwan_data_import_export_pi data' do
    tp @datayes.taiwan_data_import_export_pi(indic_id: 'G150000031')
  end

  it 'can get taiwan_data_employment data' do
    tp @datayes.taiwan_data_employment(indic_id: 'G150000036')
  end

  it 'can get taiwan_data_money_supply data' do
    tp @datayes.taiwan_data_money_supply(indic_id: 'G150000047')
  end

  it 'can get taiwan_data_lending_deposit data' do
    tp @datayes.taiwan_data_lending_deposit(indic_id: 'G150000060')
  end

  it 'can get taiwan_data_reserve_fund data' do
    tp @datayes.taiwan_data_reserve_fund(indic_id: 'G150000067')
  end

  it 'can get taiwan_data_climate_index data' do
    tp @datayes.taiwan_data_climate_index(indic_id: 'G150000074')
  end

  it 'can get taiwan_data_finance data' do
    tp @datayes.taiwan_data_finance(indic_id: 'G150000083')
  end

  it 'can get taiwan_data_industrial_pi data' do
    tp @datayes.taiwan_data_industrial_pi(indic_id: 'G150000089')
  end

  it 'can get taiwan_data_real_estate data' do
    tp @datayes.taiwan_data_real_estate(indic_id: 'G150000094')
  end

  it 'can get taiwan_data_tourism data' do
    tp @datayes.taiwan_data_tourism(indic_id: 'G150000100')
  end

  it 'can get taiwan_data_cross_strait_trade data' do
    tp @datayes.taiwan_data_cross_strait_trade(indic_id: 'G150000113')
  end

  it 'can get taiwan_data_businessand_economy data' do
    tp @datayes.taiwan_data_businessand_economy(indic_id: 'G150000118')
  end

  it 'can get taiwan_data_interest_rates data' do
    tp @datayes.taiwan_data_interest_rates(indic_id: 'G150000125')
  end

  it 'can get taiwan_data_exchange_rate data' do
    tp @datayes.taiwan_data_exchange_rate(indic_id: 'G150000132')
  end

  it 'can get macao_data_gdp data' do
    tp @datayes.macao_data_gdp(indic_id: 'G160000003')
  end

  it 'can get macao_data_price_index data' do
    tp @datayes.macao_data_price_index(indic_id: 'G160000010')
  end

  it 'can get macao_data_employment data' do
    tp @datayes.macao_data_employment(indic_id: 'G160000020')
  end

  it 'can get macao_data_money_supply data' do
    tp @datayes.macao_data_money_supply(indic_id: 'G160000024')
  end

  it 'can get macao_data_foreign_exchange_reserves data' do
    tp @datayes.macao_data_foreign_exchange_reserves(indic_id: 'G160000032')
  end

  it 'can get macao_data_tourism data' do
    tp @datayes.macao_data_tourism(indic_id: 'G160000035')
  end

  it 'can get macao_data_gaming_industry data' do
    tp @datayes.macao_data_gaming_industry(indic_id: 'G160000044')
  end

  it 'can get macao_data_interest_rates data' do
    tp @datayes.macao_data_interest_rates(indic_id: 'G160000047')
  end

  it 'can get macao_data_exchange_rate data' do
    tp @datayes.macao_data_exchange_rate(indic_id: 'G160000062')
  end

  it 'can get russia_data_gdp data' do
    tp @datayes.russia_data_gdp(indic_id: 'G170000003')
  end

  it 'can get russia_data_foreign_trade data' do
    tp @datayes.russia_data_foreign_trade(indic_id: 'G170000008')
  end

  it 'can get russia_data_cpi data' do
    tp @datayes.russia_data_cpi(indic_id: 'G170000014')
  end

  it 'can get russia_data_money_supply data' do
    tp @datayes.russia_data_money_supply(indic_id: 'G170000021')
  end

  it 'can get russia_data_climate_index data' do
    tp @datayes.russia_data_climate_index(indic_id: 'G170000024')
  end

  it 'can get russia_data_interest_rates data' do
    tp @datayes.russia_data_interest_rates(indic_id: 'G170000028')
  end

  it 'can get russia_data_exchange_rate data' do
    tp @datayes.russia_data_exchange_rate(indic_id: 'G170000044')
  end

  it 'can get brazil_data_gdp data' do
    tp @datayes.brazil_data_gdp(indic_id: 'G180000003')
  end

  it 'can get brazil_data_foreign_trade data' do
    tp @datayes.brazil_data_foreign_trade(indic_id: 'G180000008')
  end

  it 'can get brazil_data_price_index data' do
    tp @datayes.brazil_data_price_index(indic_id: 'G180000015')
  end

  it 'can get brazil_data_employment data' do
    tp @datayes.brazil_data_employment(indic_id: 'G180000024')
  end

  it 'can get brazil_data_money_supply data' do
    tp @datayes.brazil_data_money_supply(indic_id: 'G180000031')
  end

  it 'can get brazil_data_climate_index data' do
    tp @datayes.brazil_data_climate_index(indic_id: 'G180000038')
  end

  it 'can get brazil_data_retail_sale data' do
    tp @datayes.brazil_data_retail_sale(indic_id: 'G180000041')
  end

  it 'can get brazil_data_interest_rates data' do
    tp @datayes.brazil_data_interest_rates(indic_id: 'G180000043')
  end

  it 'can get brazil_data_exchange_rate data' do
    tp @datayes.brazil_data_exchange_rate(indic_id: 'G180000046')
  end

  it 'can get south_africa_data_gdp data' do
    tp @datayes.south_africa_data_gdp(indic_id: 'G190000003')
  end

  it 'can get south_africa_data_employment_unemployment data' do
    tp @datayes.south_africa_data_employment_unemployment(indic_id: 'G190000009')
  end

  it 'can get south_africa_data_foreign_trade data' do
    tp @datayes.south_africa_data_foreign_trade(indic_id: 'G190000022')
  end

  it 'can get south_africa_data_cpi data' do
    tp @datayes.south_africa_data_cpi(indic_id: 'G190000033')
  end

  it 'can get south_africa_data_money_supply data' do
    tp @datayes.south_africa_data_money_supply(indic_id: 'G190000039')
  end

  it 'can get south_africa_data_climate_index data' do
    tp @datayes.south_africa_data_climate_index(indic_id: 'G190000051')
  end

  it 'can get south_africa_data_industry data' do
    tp @datayes.south_africa_data_industry(indic_id: 'G190000057')
  end

  it 'can get south_africa_data_real_estate data' do
    tp @datayes.south_africa_data_real_estate(indic_id: 'G190000062')
  end

  it 'can get south_africa_data_retail_sales data' do
    tp @datayes.south_africa_data_retail_sales(indic_id: 'G190000074')
  end

  it 'can get south_africa_data_interest_rates data' do
    tp @datayes.south_africa_data_interest_rates(indic_id: 'G190000081')
  end

  it 'can get south_africa_data_exchange_rate data' do
    tp @datayes.south_africa_data_exchange_rate(indic_id: 'G190000087')
  end

  it 'can get agric_data_price data' do
    tp @datayes.agric_data_price(begin_date: '20150101', end_date: '20150101', indic_id: 'I010000005,I010000006,I010000290,I010000008,I010000033,I010000034,I010000035,I010000036,I010000037,I010000038,I010000023,I010000024,I010000027,I010000040,I010000041,I010000043,I010000046')
  end

  it 'can get agric_data_outp_v data' do
    tp @datayes.agric_data_outp_v(begin_date: '20130331', end_date: '20140331', indic_id: 'I010000089,I010000088,I010000090,I010000091,I010000092')
  end

  it 'can get agric_data_wasde data' do
    tp @datayes.agric_data_wasde(begin_date: '20150331', end_date: '20150331', indic_id: 'I010000099,I010000100,I010000101,I010000103,I010000117,I010000120,I010000123,I010000127,I010000129,I010000132,I010000135,I010000139,I010000142,I010000145,I010000183,I010000205,I010000208')
  end

  it 'can get agric_data_impt_expt data' do
    tp @datayes.agric_data_impt_expt(begin_date: '20140430', end_date: '20140430', indic_id: 'I010000229,I010000228,I010000230,I010000231,I010000232,I010000233,I010000234,I010000235,I010000236,I010000237,I010000238,I010000239,I010000240,I010000241,I010000242,I010000243')
  end

  it 'can get food_bvg_data_price data' do
    tp @datayes.food_bvg_data_price(begin_date: '20150101', end_date: '20150105', indic_id: 'I020000005,I020000004,I020000006,I020000008,I020000027,I020000028,I020000030')
  end

  it 'can get food_bvg_data_sales_output data' do
    tp @datayes.food_bvg_data_sales_output(begin_date: '20140331', end_date: '20140331', indic_id: 'I020000032,I020000033,I020000034,I020000035,I020000036,I020000037,I020000038,I020000039,I020000040,I020000041,I020000042,I020000043,I020000044,I020000045,I020000046,I020000047,I020000048,I020000049,I020000050')
  end

  it 'can get food_bvg_data_impt_expt data' do
    tp @datayes.food_bvg_data_impt_expt(begin_date: '20140331', end_date: '20140331', indic_id: 'I020000058,I020000059,I020000060,I020000061,I020000062,I020000063,I020000064,I020000065,I020000066,I020000067,I020000068,I020000069,I020000070,I020000071,I020000072')
  end

  it 'can get comm_trade_data_trscg data' do
    tp @datayes.comm_trade_data_trscg(begin_date: '20131231', end_date: '20140331', indic_id: 'I030000004,I030000003,I030000005,I030000006,I030000007,I030000008,I030000009,I030000010,I030000011')
  end

  it 'can get comm_trade_data_sales50_large_en data' do
    tp @datayes.comm_trade_data_sales50_large_en(begin_date: '20131230', end_date: '20140331', indic_id: 'I030000021,I030000020,I030000022,I030000023,I030000024,I030000025,I030000026')
  end

  it 'can get comm_trade_data_index_key_circ_en data' do
    tp @datayes.comm_trade_data_index_key_circ_en(begin_date: '20140101', end_date: '20140331', indic_id: 'I030000013,I030000015,I030000017,I030000029,I030000030,I030000031,I030000032')
  end

  it 'can get cater_tour_data_trscg data' do
    tp @datayes.cater_tour_data_trscg(begin_date: '20141130', end_date: '20150228', indic_id: 'I040000003,I040000004,I040000005,I040000006,I040000007,I040000008,I040000009,I040000010')
  end

  it 'can get cater_tour_data_hotels_oper data' do
    tp @datayes.cater_tour_data_hotels_oper(begin_date: '20140331', end_date: '20140331', indic_id: 'I040000012,I040000013,I040000014,I040000015,I040000016,I040000017,I040000018,I040000019,I040000020,I040000021,I040000022,I040000023,I040000024,I040000025,I040000026,I040000027,I040000028')
  end

  it 'can get cater_tour_data_new_hotel data' do
    tp @datayes.cater_tour_data_new_hotel(begin_date: '20141031', end_date: '20141231', indic_id: 'I040000055,I040000054,I040000056,I040000057,I040000058')
  end

  it 'can get cater_tour_data_inbound_tour data' do
    tp @datayes.cater_tour_data_inbound_tour(begin_date: '20140331', end_date: '20140430', indic_id: 'I040000060,I040000061,I040000062,I040000063,I040000064,I040000065,I040000066,I040000067,I040000068,I040000069,I040000070,I040000071')
  end

  it 'can get bio_medicine_data_sales_output data' do
    tp @datayes.bio_medicine_data_sales_output(begin_date: '20140130', end_date: '20140430', indic_id: 'I050000090,I050000091,I050000092,I050000093,I050000094,I050000095,I050000096,I050000097')
  end

  it 'can get bio_medicine_data_impt_expt data' do
    tp @datayes.bio_medicine_data_impt_expt(begin_date: '20140331', end_date: '20140430', indic_id: 'I050000100,I050000102,I050000103,I050000106,I050000107,I050000108,I050000109,I050000110,I050000111,I050000112,I050000113,I050000114')
  end

  it 'can get petrochem_data_price data' do
    tp @datayes.petrochem_data_price(begin_date: '20140328', end_date: '20140331', indic_id: 'I060000003,I060000004,I060000005,I060000105,I060000106,I060000013,I060000107,I060000108,I060000014,I060000015,I060000023')
  end

  it 'can get petrochem_data_sales_output data' do
    tp @datayes.petrochem_data_sales_output(begin_date: '20141230', end_date: '20150228', indic_id: 'I060000042,I060000043,I060000044,I060000051,I060000052,I060000053,I060000054,I060000055,I060000056,I060000058,I060000059,I060000109,I060000110')
  end

  it 'can get petrochem_data_impt_expt data' do
    tp @datayes.petrochem_data_impt_expt(begin_date: '20150131', end_date: '20150131', indic_id: 'I060000073,I060000074,I060000075,I060000076,I060000077,I060000078,I060000079,I060000080,I060000081,I060000082,I060000083,I060000084,I060000085,I060000086')
  end

  it 'can get cloth_tex_data_price data' do
    tp @datayes.cloth_tex_data_price(begin_date: '20150108', end_date: '20150108', indic_id: 'I070000003,I070000004,I070000005,I070000021,I070000022,I070000024,I070000025,I070000026,I070000027,I070000028,I070000029,I070000033,I070000034,I070000035,I070000036,I070000037')
  end

  it 'can get cloth_tex_data_sales_output data' do
    tp @datayes.cloth_tex_data_sales_output(begin_date: '20150228', end_date: '20150228', indic_id: 'I070000087,I070000088,I070000089,I070000090,I070000091,I070000092,I070000093,I070000094,I070000095,I070000096,I070000097,I070000098,I070000099,I070000101')
  end

  it 'can get cloth_tex_data_cotton_wasde data' do
    tp @datayes.cloth_tex_data_cotton_wasde(begin_date: '20150228', end_date: '20150228', indic_id: 'I070000115,I070000116,I070000117,I070000118,I070000119,I070000120,I070000121,I070000122,I070000123,I070000124,I070000125,I070000126,I070000127,I070000128,I070000129,I070000130,I070000131')
  end

  it 'can get cloth_tex_data_impt_expt data' do
    tp @datayes.cloth_tex_data_impt_expt(begin_date: '20150131', end_date: '20150131', indic_id: 'I070000137,I070000138,I070000139,I070000140,I070000141,I070000142,I070000143,I070000144,I070000145,I070000146,I070000147,I070000148,I070000149,I070000150')
  end

  it 'can get light_manuf_data_price data' do
    tp @datayes.light_manuf_data_price(begin_date: '20141230', end_date: '20150107', indic_id: 'I080000010,I080000011,I080000012,I080000013,I080000014,I080000015,I080000016,I080000017,I080000018,I080000019,I080000020')
  end

  it 'can get light_manuf_data_sales_output data' do
    tp @datayes.light_manuf_data_sales_output(begin_date: '20141130', end_date: '20150228', indic_id: 'I080000027,I080000028,I080000029,I080000030,I080000031')
  end

  it 'can get light_manuf_data_impt_expt data' do
    tp @datayes.light_manuf_data_impt_expt(begin_date: '20150131', end_date: '20150131', indic_id: 'I080000039,I080000040,I080000041,I080000044,I080000045,I080000046,I080000047,I080000050,I080000051,I080000052,I080000054,I080000055,I080000056,I080000058')
  end

  it 'can get mining_data_price data' do
    tp @datayes.mining_data_price(begin_date: '20150108', end_date: '20150108', indic_id: 'I090000004,I090000005,I090000006,I090000007,I090000008,I090000009,I090000014,I090000020,I090000021,I090000022,I090000026,I090000027,I090000030,I090000031')
  end

  it 'can get mining_data_outp_sales_transp data' do
    tp @datayes.mining_data_outp_sales_transp(begin_date: '20150126', end_date: '20150131', indic_id: 'I090000083,I090000079,I090000081,I090000082,I090000098,I090000099')
  end

  it 'can get mining_data_impt_expt data' do
    tp @datayes.mining_data_impt_expt(begin_date: '20150131', end_date: '20150131', indic_id: 'I090000114,I090000115,I090000117,I090000119,I090000120,I090000122,I090000124,I090000125,I090000126,I090000128,I090000130,I090000131,I090000132,I090000134')
  end

  it 'can get fer_metal_data_price data' do
    tp @datayes.fer_metal_data_price(begin_date: '20150130', end_date: '20150130', indic_id: 'I100000004,I100000006,I100000007,I100000050,I100000051,I100000052,I100000053,I100000067,I100000068,I100000069,I100000070,I100000071,I100000212,I100000213,I100000214')
  end

  it 'can get fer_metal_data_sales_output data' do
    tp @datayes.fer_metal_data_sales_output(begin_date: '20150313', end_date: '20150320', indic_id: 'I100000131,I100000136,I100000137,I100000140,I100000141,I100000145,I100000146,I100000150,I100000154,I100000157,I100000162,I100000165,I100000211')
  end

  it 'can get fer_metal_data_impt_expt data' do
    tp @datayes.fer_metal_data_impt_expt(begin_date: '20150131', end_date: '20150131', indic_id: 'I100000176,I100000177,I100000178,I100000179,I100000180,I100000187,I100000188,I100000189,I100000190,I100000191,I100000198,I100000199,I100000200,I100000201,I100000202,I100000203')
  end

  it 'can get nonfer_metal_data_price data' do
    tp @datayes.nonfer_metal_data_price(begin_date: '20150108', end_date: '20150108', indic_id: 'I110000004,I110000005,I110000007,I110000010,I110000011,I110000012,I110000013,I110000028,I110000029,I110000030,I110000031,I110000042,I110000043,I110000044,I110000045,I110000047,I110000056,I110000057,I110000058')
  end

  it 'can get nonfer_metal_data_sales_output data' do
    tp @datayes.nonfer_metal_data_sales_output(begin_date: '20150107', end_date: '20150108', indic_id: 'I110000123,I110000124,I110000125,I110000126,I110000127,I110000128,I110000130,I110000131,I110000132')
  end

  it 'can get nonfer_metal_data_impt_expt data' do
    tp @datayes.nonfer_metal_data_impt_expt(begin_date: '20150131', end_date: '20150131', indic_id: 'I110000147,I110000148,I110000149,I110000150,I110000151,I110000152,I110000154,I110000155,I110000156,I110000157,I110000158,I110000159,I110000160,I110000161,I110000162')
  end

  it 'can get delivery_eq_data_price data' do
    tp @datayes.delivery_eq_data_price(begin_date: '20141031', end_date: '20150131', indic_id: 'I120000005,I120000006,I120000007,I120000008,I120000009,I120000004')
  end

  it 'can get delivery_eq_data_sales_output data' do
    tp @datayes.delivery_eq_data_sales_output(begin_date: '20141231', end_date: '20141231', indic_id: 'I120000012,I120000013,I120000014,I120000015,I120000016,I120000017,I120000018,I120000019,I120000020,I120000022,I120000023,I120000024,I120000025,I120000026,I120000027,I1200000111,I120000112,I120000113')
  end

  it 'can get delivery_eq_data_impt_expt data' do
    tp @datayes.delivery_eq_data_impt_expt(begin_date: '20141231', end_date: '20141231', indic_id: 'I120000053,I120000054,I120000055,I120000056,I120000057,I120000058,I120000059,I120000060,I120000061,I120000062,I120000063,I120000064,I120000065,I120000066,I120000067,I120000068,I120000069')
  end

  it 'can get traffic_trans_data_railway data' do
    tp @datayes.traffic_trans_data_railway(begin_date: '20140330', end_date: '20140531', indic_id: 'I130000004,I130000005,I130000006,I130000007,I130000008,I130000009,I130000010,I130000011,I130000012')
  end

  it 'can get traffic_trans_data_road data' do
    tp @datayes.traffic_trans_data_road(begin_date: '20140930', end_date: '20141130', indic_id: 'I130000016,I130000017,I130000018,I130000019,I130000021,I130000022,I130000023,I130000024')
  end

  it 'can get traffic_trans_data_waterway data' do
    tp @datayes.traffic_trans_data_waterway(begin_date: '20150102', end_date: '20150107', indic_id: 'I130000028,I130000029,I130000030,I130000031,I130000032')
  end

  it 'can get traffic_trans_data_air data' do
    tp @datayes.traffic_trans_data_air(begin_date: '20141130', end_date: '20141130', indic_id: 'I130000048,I130000049,I130000050,I130000051,I130000052,I130000053,I130000054,I130000055,I130000056,I130000057,I130000058,I130000059,I130000060,I130000061,I130000062,I130000063')
  end

  it 'can get util_industry_data_power data' do
    tp @datayes.util_industry_data_power(begin_date: '20141130', end_date: '20141130', indic_id: 'I140000004,I140000005,I140000006,I140000007,I140000008,I140000009,I140000010,I140000011,I140000012,I140000013,I140000014,I140000015,I140000016,I140000017,I140000018,I140000019,I140000020')
  end

  it 'can get util_industry_data_water data' do
    tp @datayes.util_industry_data_water(begin_date: '20141130', end_date: '20141231', indic_id: 'I140000031,I140000032,I140000033,I140000034,I140000035,I140000036,I140000037,I140000038')
  end

  it 'can get util_industry_data_gas data' do
    tp @datayes.util_industry_data_gas(begin_date: '20141031', end_date: '20141231', indic_id: 'I140000042,I140000043,I140000044,I140000045,I140000046,I140000047')
  end

  it 'can get util_industry_data_envir_prot data' do
    tp @datayes.util_industry_data_envir_prot(begin_date: '20150101', end_date: '20150105', indic_id: 'I140000054,I140000055,I140000056,I140000057,I140000058')
  end

  it 'can get elec_comp_data_price data' do
    tp @datayes.elec_comp_data_price(begin_date: '20141130', end_date: '20141219', indic_id: 'I150000003,I150000004,I150000005,I150000006,I150000007,I150000010,I150000011')
  end

  it 'can get elec_comp_data_sales_output data' do
    tp @datayes.elec_comp_data_sales_output(begin_date: '20141031', end_date: '20141231', indic_id: 'I150000027,I150000028,I150000029,I150000030,I150000037,I150000038')
  end

  it 'can get elec_comp_data_impt_expt data' do
    tp @datayes.elec_comp_data_impt_expt(begin_date: '20150131', end_date: '20150131', indic_id: 'I150000040,I150000041,I150000042,I150000043,I150000044,I150000045,I150000046,I150000047,I150000048,I150000049,I150000050,I150000051,I150000052,I150000054,I150000055,I150000056')
  end

  it 'can get info_eqpt_data_price data' do
    tp @datayes.info_eqpt_data_price(begin_date: '20141215', end_date: '20150228', indic_id: 'I160000004,I160000005')
  end

  it 'can get info_eqpt_data_sales_output data' do
    tp @datayes.info_eqpt_data_sales_output(begin_date: '20141130', end_date: '20141231', indic_id: 'I160000031,I160000032,I160000033,I160000034,I160000035,I160000036,I160000038,I160000039,I160000040,I160000041,I160000042,I160000064,I160000065')
  end

  it 'can get info_eqpt_data_impt_expt data' do
    tp @datayes.info_eqpt_data_impt_expt(begin_date: '20141231', end_date: '20150131', indic_id: 'I160000051,I160000052,I160000053,I160000055,I160000056,I160000057,I160000058,I160000060')
  end

  it 'can get household_apls_data_sales_output data' do
    tp @datayes.household_apls_data_sales_output(begin_date: '20141031', end_date: '20141130', indic_id: 'I170000013,I170000014,I170000015,I170000016,I170000017,I170000018,I170000019,I170000020,I170000021,I170000035')
  end

  it 'can get household_apls_data_impt_expt data' do
    tp @datayes.household_apls_data_impt_expt(begin_date: '20141231', end_date: '20150131', indic_id: 'I170000038,I170000040,I170000041,I170000042,I170000043,I170000044,I170000045,I170000046,I170000047,I170000048,I170000049,I170000050,I170000051,I170000052')
  end

  it 'can get info_serv_data_software data' do
    tp @datayes.info_serv_data_software(begin_date: '20141031', end_date: '20141231', indic_id: 'I180000004,I180000005,I180000006,I180000007,I180000008,I180000010')
  end

  it 'can get info_serv_data_comm data' do
    tp @datayes.info_serv_data_comm(begin_date: '20141031', end_date: '20141130', indic_id: 'I180000040,I180000041,I180000042,I180000043,I180000044,I180000046,I180000047,I180000048,I180000049,I180000050,I180000052,I180000053,I180000054')
  end

  it 'can get info_serv_data_internet data' do
    tp @datayes.info_serv_data_internet(begin_date: '20140131', end_date: '20140930', indic_id: 'I180000060,I180000061,I180000062,I180000063,I180000064,I180000065,I180000066,I180000067')
  end

  it 'can get real_est_data_price data' do
    tp @datayes.real_est_data_price(begin_date: '20141231', end_date: '20141231', indic_id: 'I190000004,I190000005,I190000006,I190000007,I190000008,I190000009,I190000010,I190000011,I190000012,I190000013,I190000014,I190000015,I190000016,I190000017,I190000018,I190000019,I190000020')
  end

  it 'can get real_est_data_invest_dvpt data' do
    tp @datayes.real_est_data_invest_dvpt(begin_date: '20141130', end_date: '20141231', indic_id: 'I190000238,I190000239,I190000240,I190000241,I190000242,I190000244,I190000245,I190000246,I190000247,I190000248')
  end

  it 'can get real_est_data_land data' do
    tp @datayes.real_est_data_land(begin_date: '20141231', end_date: '20141231', indic_id: 'I190000252,I190000253,I190000254,I190000255,I190000256,I190000257,I190000259,I190000262,I190000263,I190000264,I190000265,I190000266,I190000267,I190000269,I190000272')
  end

  it 'can get real_est_data_sales data' do
    tp @datayes.real_est_data_sales(begin_date: '20141231', end_date: '20141231', indic_id: 'I190000328,I190000329,I190000331,I190000332,I190000333,I190000334,I190000335,I190000336,I190000337,I190000338,I190000339,I190000340,I190000341,I190000342,I190000343,I190000344')
  end

  it 'can get bldg_mater_data_price data' do
    tp @datayes.bldg_mater_data_price(begin_date: '20141228', end_date: '20141231', indic_id: 'I200000008,I200000013,I200000014,I200000015,I200000040')
  end

  it 'can get bldg_mater_data_sales_output data' do
    tp @datayes.bldg_mater_data_sales_output(begin_date: '20141031', end_date: '20141130', indic_id: 'I200000018,I200000019,I200000020,I200000021,I200000022,I200000023,I200000024,I200000025,I200000026,I200000027')
  end

  it 'can get mchnr_eqpt_data_sales_output data' do
    tp @datayes.mchnr_eqpt_data_sales_output(begin_date: '20141130', end_date: '20141130', indic_id: 'I210000004,I210000005,I210000006,I210000008,I210000009,I210000010,I210000011,I210000012,I210000013,I210000014,I210000015,I210000016,I210000017,I210000019,I210000024,I210000025,I210000026,I210000027')
  end

  it 'can get mchnr_eqpt_data_impt_expt data' do
    tp @datayes.mchnr_eqpt_data_impt_expt(begin_date: '20140331', end_date: '20140430', indic_id: 'I210000036,I210000037,I210000038,I210000039,I210000040,I210000041,I210000042,I210000043,I210000044,I210000045')
  end

  it 'can get bank_data_assets_liabilities data' do
    tp @datayes.bank_data_assets_liabilities(begin_date: '20141231', end_date: '20141231', indic_id: 'I220000003,I220000004,I220000005,I220000006,I220000007,I220000008,I220000009,I220000010,I220000011,I220000012,I220000013,I220000014,I220000015,I220000017,I220000018,I220000019,I220000020,I220000021,I220000022,I220000023,I220000024,I220000025')
  end

  it 'can get bank_data_non_performing_loans data' do
    tp @datayes.bank_data_non_performing_loans(begin_date: '20141231', end_date: '20141231', indic_id: 'I220000031,I220000032,I220000033,I220000034,I220000035,I220000036,I220000037,I220000038,I220000039,I220000040,I220000041,I220000042,I220000043,I220000044,,I220000045,I220000046,I220000047,I220000048')
  end

  it 'can get securities_data_oper_indic data' do
    tp @datayes.securities_data_oper_indic(begin_date: '20130101', end_date: '20141231', indic_id: 'I230000003,I230000006,I230000004,I230000005,I230000007,I230000008')
  end

  it 'can get ins_data_prem_pry_insurance data' do
    tp @datayes.ins_data_prem_pry_insurance(begin_date: '20141031', end_date: '20141231', indic_id: 'I240000010,I240000015,I240000011,I240000014,I240000012,I240000013,I240000016')
  end

  it 'can get ins_data_claim_payment data' do
    tp @datayes.ins_data_claim_payment(begin_date: '20140930', end_date: '20141231', indic_id: 'I240000023,I240000024,I240000025,I240000026,I240000027')
  end

  it 'can get ins_data_fund_balance data' do
    tp @datayes.ins_data_fund_balance(begin_date: '20141130', end_date: '20141231', indic_id: 'I240000034,I240000035,I240000036,I240000037I240000038,I240000039,I240000040,I240000041,I240000042,I240000043')
  end

  it 'can get ins_data_assets data' do
    tp @datayes.ins_data_assets(begin_date: '20141130', end_date: '20141231', indic_id: 'I240000045,I240000046,I240000047,I240000048,I240000049,I240000050,I240000051,I240000052,I240000053,I240000054,I240000056,I240000057')
  end

  # it 'can get ecommerce_data data' do
  #   tp @datayes.ecommerce_data(indic_id: '', indic_name: '', begin_date: '',
  #                              end_date: '', field: '')
  # end

  # it 'can get ecommerce_info data' do
  #   tp @datayes.ecommerce_info(indic_id: '', indic_name_abbr: '', parent_id: '',
  #                              field: '')
  # end

  # it 'can get ecommerce_data_yili data' do
  #   tp @datayes.ecommerce_data_yili(indic_id: '', indic_name: '',
  #                                   begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_guangming data' do
  #   tp @datayes.ecommerce_data_guangming(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_cheng_de_lolo data' do
  #   tp @datayes.ecommerce_data_cheng_de_lolo(indic_id: '', indic_name: '',
  #                                            begin_date: '', end_date: '',
  #                                            field: '')
  # end

  # it 'can get ecommerce_data_qiaqia data' do
  #   tp @datayes.ecommerce_data_qiaqia(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_vv_group data' do
  #   tp @datayes.ecommerce_data_vv_group(indic_id: '', indic_name: '',
  #                                       begin_date: '', end_date: '',
  #                                       field: '')
  # end

  # it 'can get ecommerce_data_jinfeng_wine data' do
  #   tp @datayes.ecommerce_data_jinfeng_wine(indic_id: '', indic_name: '',
  #                                           begin_date: '', end_date: '',
  #                                           field: '')
  # end

  # it 'can get ecommerce_data_guyue_longshan data' do
  #   tp @datayes.ecommerce_data_guyue_longshan(indic_id: '', indic_name: '',
  #                                             begin_date: '', end_date: '',
  #                                             field: '')
  # end

  # it 'can get ecommerce_data_shanxi_fenjiu data' do
  #   tp @datayes.ecommerce_data_shanxi_fenjiu(indic_id: '', indic_name: '',
  #                                            begin_date: '', end_date: '',
  #                                            field: '')
  # end

  # it 'can get ecommerce_data_zhangyu_a data' do
  #   tp @datayes.ecommerce_data_zhangyu_a(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_mogao data' do
  #   tp @datayes.ecommerce_data_mogao(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_kemen_noodle_mfg data' do
  #   tp @datayes.ecommerce_data_kemen_noodle_mfg(indic_id: '', indic_name: '',
  #                                               begin_date: '', end_date: '',
  #                                               field: '')
  # end

  # it 'can get ecommerce_data_jinzi_ham data' do
  #   tp @datayes.ecommerce_data_jinzi_ham(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_lotus data' do
  #   tp @datayes.ecommerce_data_lotus(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_beiyin_mate data' do
  #   tp @datayes.ecommerce_data_beiyin_mate(indic_id: '', indic_name: '',
  #                                          begin_date: '', end_date: '',
  #                                          field: '')
  # end

  # it 'can get ecommerce_data_qingdao_haier data' do
  #   tp @datayes.ecommerce_data_qingdao_haier(indic_id: '', indic_name: '',
  #                                            begin_date: '', end_date: '',
  #                                            field: '')
  # end

  # it 'can get ecommerce_data_tcl_group data' do
  #   tp @datayes.ecommerce_data_tcl_group(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_midea_group data' do
  #   tp @datayes.ecommerce_data_midea_group(indic_id: '', indic_name: '',
  #                                          begin_date: '', end_date: '',
  #                                          field: '')
  # end

  # it 'can get ecommerce_data_whirlpool data' do
  #   tp @datayes.ecommerce_data_whirlpool(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_joyoung data' do
  #   tp @datayes.ecommerce_data_joyoung(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_vatti data' do
  #   tp @datayes.ecommerce_data_vatti(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_supor data' do
  #   tp @datayes.ecommerce_data_supor(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_konka data' do
  #   tp @datayes.ecommerce_data_konka(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_changhong data' do
  #   tp @datayes.ecommerce_data_changhong(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_little_swan data' do
  #   tp @datayes.ecommerce_data_little_swan(indic_id: '', indic_name: '',
  #                                          begin_date: '', end_date: '',
  #                                          field: '')
  # end

  # it 'can get ecommerce_data_meiling data' do
  #   tp @datayes.ecommerce_data_meiling(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_zte data' do
  #   tp @datayes.ecommerce_data_zte(indic_id: '', indic_name: '', begin_date: '',
  #                                  end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_datang_telecom data' do
  #   tp @datayes.ecommerce_data_datang_telecom(indic_id: '', indic_name: '',
  #                                             begin_date: '', end_date: '',
  #                                             field: '')
  # end

  # it 'can get ecommerce_data_bird data' do
  #   tp @datayes.ecommerce_data_bird(indic_id: '', indic_name: '',
  #                                   begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_dahua_technology data' do
  #   tp @datayes.ecommerce_data_dahua_technology(indic_id: '', indic_name: '',
  #                                               begin_date: '', end_date: '',
  #                                               field: '')
  # end

  # it 'can get ecommerce_data_tsinghua_tongfang data' do
  #   tp @datayes.ecommerce_data_tsinghua_tongfang(indic_id: '', indic_name: '',
  #                                                begin_date: '', end_date: '',
  #                                                field: '')
  # end

  # it 'can get ecommerce_data_hedy data' do
  #   tp @datayes.ecommerce_data_hedy(indic_id: '', indic_name: '',
  #                                   begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_haday data' do
  #   tp @datayes.ecommerce_data_haday(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_yanjing_beer data' do
  #   tp @datayes.ecommerce_data_yanjing_beer(indic_id: '', indic_name: '',
  #                                           begin_date: '', end_date: '',
  #                                           field: '')
  # end

  # it 'can get ecommerce_data_maiquer data' do
  #   tp @datayes.ecommerce_data_maiquer(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_citic_guoan_wine data' do
  #   tp @datayes.ecommerce_data_citic_guoan_wine(indic_id: '', indic_name: '',
  #                                               begin_date: '', end_date: '',
  #                                               field: '')
  # end

  # it 'can get ecommerce_data_qingqing_barley_wine data' do
  #   tp @datayes.ecommerce_data_qingqing_barley_wine(indic_id: '',
  #                                                   indic_name: '',
  #                                                   begin_date: '',
  #                                                   end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_haoxiangni data' do
  #   tp @datayes.ecommerce_data_haoxiangni(indic_id: '', indic_name: '',
  #                                         begin_date: '', end_date: '',
  #                                         field: '')
  # end

  # it 'can get ecommerce_data_fuling_zhacai data' do
  #   tp @datayes.ecommerce_data_fuling_zhacai(indic_id: '', indic_name: '',
  #                                            begin_date: '', end_date: '',
  #                                            field: '')
  # end

  # it 'can get ecommerce_data_huangshanghuang data' do
  #   tp @datayes.ecommerce_data_huangshanghuang(indic_id: '', indic_name: '',
  #                                              begin_date: '', end_date: '',
  #                                              field: '')
  # end

  # it 'can get ecommerce_data_hainan_yedao data' do
  #   tp @datayes.ecommerce_data_hainan_yedao(indic_id: '', indic_name: '',
  #                                           begin_date: '', end_date: '',
  #                                           field: '')
  # end

  # it 'can get ecommerce_data_shuangta_food data' do
  #   tp @datayes.ecommerce_data_shuangta_food(indic_id: '', indic_name: '',
  #                                            begin_date: '', end_date: '',
  #                                            field: '')
  # end

  # it 'can get ecommerce_data_jiugui_liquor data' do
  #   tp @datayes.ecommerce_data_jiugui_liquor(indic_id: '', indic_name: '',
  #                                            begin_date: '', end_date: '',
  #                                            field: '')
  # end

  # it 'can get ecommerce_data_black_sesame data' do
  #   tp @datayes.ecommerce_data_black_sesame(indic_id: '', indic_name: '',
  #                                           begin_date: '', end_date: '',
  #                                           field: '')
  # end

  # it 'can get ecommerce_data_kings_luck data' do
  #   tp @datayes.ecommerce_data_kings_luck(indic_id: '', indic_name: '',
  #                                         begin_date: '', end_date: '',
  #                                         field: '')
  # end

  # it 'can get ecommerce_data_laobaigan_liquor data' do
  #   tp @datayes.ecommerce_data_laobaigan_liquor(indic_id: '', indic_name: '',
  #                                               begin_date: '', end_date: '',
  #                                               field: '')
  # end

  # it 'can get ecommerce_data_shuanghui_dvpt data' do
  #   tp @datayes.ecommerce_data_shuanghui_dvpt(indic_id: '', indic_name: '',
  #                                             begin_date: '', end_date: '',
  #                                             field: '')
  # end

  # it 'can get ecommerce_data_wuliangye data' do
  #   tp @datayes.ecommerce_data_wuliangye(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_gree data' do
  #   tp @datayes.ecommerce_data_gree(indic_id: '', indic_name: '',
  #                                   begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_hisense_electric data' do
  #   tp @datayes.ecommerce_data_hisense_electric(indic_id: '', indic_name: '',
  #                                               begin_date: '', end_date: '',
  #                                               field: '')
  # end

  # it 'can get ecommerce_data_hisense data' do
  #   tp @datayes.ecommerce_data_hisense(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_jiajia_food data' do
  #   tp @datayes.ecommerce_data_jiajia_food(indic_id: '', indic_name: '',
  #                                          begin_date: '', end_date: '',
  #                                          field: '')
  # end

  # it 'can get ecommerce_data_robam data' do
  #   tp @datayes.ecommerce_data_robam(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_asd data' do
  #   tp @datayes.ecommerce_data_asd(indic_id: '', indic_name: '', begin_date: '',
  #                                  end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_macro data' do
  #   tp @datayes.ecommerce_data_macro(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_elecpro data' do
  #   tp @datayes.ecommerce_data_elecpro(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_sanglejin data' do
  #   tp @datayes.ecommerce_data_sanglejin(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_homa data' do
  #   tp @datayes.ecommerce_data_homa(indic_id: '', indic_name: '',
  #                                   begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_longda_meat data' do
  #   tp @datayes.ecommerce_data_longda_meat(indic_id: '', indic_name: '',
  #                                          begin_date: '', end_date: '',
  #                                          field: '')
  # end

  # it 'can get ecommerce_data_by_health data' do
  #   tp @datayes.ecommerce_data_by_health(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_haixin data' do
  #   tp @datayes.ecommerce_data_haixin(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_vanward data' do
  #   tp @datayes.ecommerce_data_vanward(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_meida data' do
  #   tp @datayes.ecommerce_data_meida(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_hengshun_vinegarindustry data' do
  #   tp @datayes.ecommerce_data_hengshun_vinegarindustry(indic_id: '',
  #                                                       indic_name: '',
  #                                                       begin_date: '',
  #                                                       end_date: '',
  #                                                       field: '')
  # end

  # it 'can get ecommerce_data_shuijingfang data' do
  #   tp @datayes.ecommerce_data_shuijingfang(indic_id: '', indic_name: '',
  #                                           begin_date: '', end_date: '',
  #                                           field: '')
  # end

  # it 'can get ecommerce_data_chunlan data' do
  #   tp @datayes.ecommerce_data_chunlan(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_yilite data' do
  #   tp @datayes.ecommerce_data_yilite(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_huangshi data' do
  #   tp @datayes.ecommerce_data_huangshi(indic_id: '', indic_name: '',
  #                                       begin_date: '', end_date: '',
  #                                       field: '')
  # end

  # it 'can get ecommerce_data_yanghe data' do
  #   tp @datayes.ecommerce_data_yanghe(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_sanyuan data' do
  #   tp @datayes.ecommerce_data_sanyuan(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_tuopai_shede data' do
  #   tp @datayes.ecommerce_data_tuopai_shede(indic_id: '', indic_name: '',
  #                                           begin_date: '', end_date: '',
  #                                           field: '')
  # end

  # it 'can get ecommerce_data_kuaijishan data' do
  #   tp @datayes.ecommerce_data_kuaijishan(indic_id: '', indic_name: '',
  #                                         begin_date: '', end_date: '',
  #                                         field: '')
  # end

  # it 'can get ecommerce_data_tonghua data' do
  #   tp @datayes.ecommerce_data_tonghua(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_kweichow_moutai_group data' do
  #   tp @datayes.ecommerce_data_kweichow_moutai_group(indic_id: '',
  #                                                    indic_name: '',
  #                                                    begin_date: '',
  #                                                    end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_tsing_tao data' do
  #   tp @datayes.ecommerce_data_tsing_tao(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_gujing data' do
  #   tp @datayes.ecommerce_data_gujing(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_luzhou_laojiao data' do
  #   tp @datayes.ecommerce_data_luzhou_laojiao(indic_id: '', indic_name: '',
  #                                             begin_date: '', end_date: '',
  #                                             field: '')
  # end

  # it 'can get ecommerce_data_shanghai_maling data' do
  #   tp @datayes.ecommerce_data_shanghai_maling(indic_id: '', indic_name: '',
  #                                              begin_date: '', end_date: '',
  #                                              field: '')
  # end

  # it 'can get ecommerce_data_black_cattle_food data' do
  #   tp @datayes.ecommerce_data_black_cattle_food(indic_id: '', indic_name: '',
  #                                                begin_date: '', end_date: '',
  #                                                field: '')
  # end

  # it 'can get ecommerce_data_delisi data' do
  #   tp @datayes.ecommerce_data_delisi(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_star_lake_bioscience data' do
  #   tp @datayes.ecommerce_data_star_lake_bioscience(indic_id: '',
  #                                                   indic_name: '',
  #                                                   begin_date: '',
  #                                                   end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_jonjee_hi_tech data' do
  #   tp @datayes.ecommerce_data_jonjee_hi_tech(indic_id: '', indic_name: '',
  #                                             begin_date: '', end_date: '',
  #                                             field: '')
  # end

  # it 'can get ecommerce_data_cr_sanjiu data' do
  #   tp @datayes.ecommerce_data_cr_sanjiu(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_jiuzhitang data' do
  #   tp @datayes.ecommerce_data_jiuzhitang(indic_id: '', indic_name: '',
  #                                         begin_date: '', end_date: '',
  #                                         field: '')
  # end

  # it 'can get ecommerce_data_fuanna data' do
  #   tp @datayes.ecommerce_data_fuanna(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_luolai data' do
  #   tp @datayes.ecommerce_data_luolai(indic_id: '', indic_name: '',
  #                                     begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_guirenniao data' do
  #   tp @datayes.ecommerce_data_guirenniao(indic_id: '', indic_name: '',
  #                                         begin_date: '', end_date: '',
  #                                         field: '')
  # end

  # it 'can get ecommerce_data_baoxiniao data' do
  #   tp @datayes.ecommerce_data_baoxiniao(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_laofengxiang data' do
  #   tp @datayes.ecommerce_data_laofengxiang(indic_id: '', indic_name: '',
  #                                           begin_date: '', end_date: '',
  #                                           field: '')
  # end

  # it 'can get ecommerce_data_fiyta_a data' do
  #   tp @datayes.ecommerce_data_fiyta_a(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_goldleaf_jewelry data' do
  #   tp @datayes.ecommerce_data_goldleaf_jewelry(indic_id: '', indic_name: '',
  #                                               begin_date: '', end_date: '',
  #                                               field: '')
  # end

  # it 'can get ecommerce_data_comix_group data' do
  #   tp @datayes.ecommerce_data_comix_group(indic_id: '', indic_name: '',
  #                                          begin_date: '', end_date: '',
  #                                          field: '')
  # end

  # it 'can get ecommerce_data_yaoji_playing_card data' do
  #   tp @datayes.ecommerce_data_yaoji_playing_card(indic_id: '', indic_name: '',
  #                                                 begin_date: '', end_date: '',
  #                                                 field: '')
  # end

  # it 'can get ecommerce_data_mg_stationery data' do
  #   tp @datayes.ecommerce_data_mg_stationery(indic_id: '', indic_name: '',
  #                                            begin_date: '', end_date: '',
  #                                            field: '')
  # end

  # it 'can get ecommerce_data_cs data' do
  #   tp @datayes.ecommerce_data_cs(indic_id: '', indic_name: '', begin_date: '',
  #                                 end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_edifier data' do
  #   tp @datayes.ecommerce_data_edifier(indic_id: '', indic_name: '',
  #                                      begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_hik_vision data' do
  #   tp @datayes.ecommerce_data_hik_vision(indic_id: '', indic_name: '',
  #                                         begin_date: '', end_date: '',
  #                                         field: '')
  # end

  # it 'can get ecommerce_data_solareast data' do
  #   tp @datayes.ecommerce_data_solareast(indic_id: '', indic_name: '',
  #                                        begin_date: '', end_date: '',
  #                                        field: '')
  # end

  # it 'can get ecommerce_data_chigo data' do
  #   tp @datayes.ecommerce_data_chigo(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end

  # it 'can get ecommerce_data_aucma data' do
  #   tp @datayes.ecommerce_data_aucma(indic_id: '', indic_name: '',
  #                                    begin_date: '', end_date: '', field: '')
  # end
end
