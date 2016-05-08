module Tushare
  module Datayes
    # 通联数据-宏观行业
    module Macro
      # 包含中国宏观主要指标数据，历史数据从1928年开始。具体指标请查询“中国宏观指标”API。
      def china_macro_data(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(CHINAMACRODATA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国宏观指标信息。输入中国宏观指标代码或名称，查询具体指标信息，如：指标频度、单位、来源等。
      def china_macro_info(indic_id: '', indic_name_abbr: '', parent_id: '',
                           field: '')
        api_path = format(CHINAMACROINFO, indic_id, indic_name_abbr, parent_id,
                          field)
        fetch_data api_path
      end

      # 包含全球宏观20多个主要国家地区重要宏观指标数据，历史数据从1900年开始。具体指标请查询“全球宏观指标”API。
      def global_macro_data(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(GLOBALMACRODATA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含全球宏观指标信息。输入全球宏观指标代码或名称，查询具体指标信息，如，指标频度、单位、来源等。
      def global_macro_info(indic_id: '', indic_name_abbr: '', parent_id: '',
                            field: '')
        api_path = format(GLOBALMACROINFO, indic_id, indic_name_abbr, parent_id,
                          field)
        fetch_data api_path
      end

      # 包含行业主要指标数据，历史数据从1947年开始。具体指标请查询“行业经济指标”API。
      def industrial_data(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(INDUSTRIALDATA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含行业指标信息。输入行业经济指标代码或名称，查询具体指标信息，如，指标频度、单位、来源等。
      def industrial_info(indic_id: '', indic_name_abbr: '', parent_id: '',
                          field: '')
        api_path = format(INDUSTRIALINFO, indic_id, indic_name_abbr, parent_id,
                          field)
        fetch_data api_path
      end

      # 包含电商指标数据，历史数据从2014年8月开始。具体指标请查询“电商指标”API。
      def ecommerce_data(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(ECOMMERCEDATA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含电商指标信息。输入电商指标代码或名称，查询具体指标信息，如，指标频度、单位、来源等。
      def ecommerce_info(indic_id: '', indic_name_abbr: '', parent_id: '',
                         field: '')
        api_path = format(ECOMMERCEINFO, indic_id, indic_name_abbr, parent_id,
                          field)
        fetch_data api_path
      end

      # 包含中国GDP数据，具体指标可参见API文档；历史数据从1984年开始，按季更新。
      def china_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国宏观经济景气指数数据，具体指标可参见API文档；历史数据从1993年开始，按月更新。
      def china_data_eci(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATAECI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国PMI、汇丰中国PMI数据，具体指标可参见API文档；历史数据从2005年开始，按月更新。
      def china_data_pmi(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATAPMI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国消费者景气指数数据，具体指标可参见API文档；历史数据从1993年开始，按月更新。
      def china_data_cci(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATACCI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国经济学家景气指数数据，具体指标可参见API文档；历史数据从2006年开始，按季更新。
      def china_data_economists_boom_index(indic_id: '', indic_name: '',
                                           begin_date: '', end_date: '',
                                           field: '')
        api_path = format(CHINADATAECONOMISTSBOOMINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国工业景气指数数据，具体指标可参见API文档；历史数据从1999年开始，按季更新。
      def china_data_industrial_business_climate_index(indic_id: '',
                                                       indic_name: '',
                                                       begin_date: '',
                                                       end_date: '', field: '')
        api_path = format(CHINADATAINDUSTRIALBUSINESSCLIMATEINDEX, indic_id,
                          indic_name, begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国居民消费价格指数(CPI)数据,，含36大中城市CPI数据，具体指标可参见API文档；历史数据从1993年开始，按月更新。
      def china_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATACPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国工业价格指数数据，如PPI、分行业PPI、PPIRM，具体指标可参见API文档；历史数据从1993年开始，按月更新。
      def china_data_ppi(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATAPPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国工业数据，如工业生产运行、工业企业主要经济指标，具体指标可参见API文档；历史数据从1993年开始，按月更新。
      def china_data_industry(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(CHINADATAINDUSTRY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国社会消费品零售数据，具体指标可参见API文档；历史数据从1984年开始，按月更新。
      def china_data_retail_sales(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(CHINADATARETAILSALES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国城镇、农村居民家庭收支数据，具体指标可参见API文档；历史数据从1984年开始，按季更新。
      def china_data_resident_income_exp(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(CHINADATARESIDENTINCOMEEXP, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国固定资产投资数据，如投资额、资金来源、分行业投资，具体指标可参见API文档；历史数据从1990年开始，按月更新。
      def china_data_fai(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATAFAI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国房地产开发数据，如房地产景气指数、投资额、来源、商品房销售、土地开发购置，具体指标可参见API文档；历史数据从1991年开始，按月更新。
      def china_data_real_estate(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(CHINADATAREALESTATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国进出口数据，具体指标可参见API文档；历史数据从1990年开始，按月更新。
      def china_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(CHINADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国外商直接投资数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def china_data_fdi(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(CHINADATAFDI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国货币统计数据，如货币供应、黄金外汇储备，具体指标可参见API文档；历史数据从1951年开始，按月更新。
      def china_data_money_statistics(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(CHINADATAMONEYSTATISTICS, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国社会融资规模数据，具体指标可参见API文档；历史数据从2002年开始，按月更新。
      def china_data_all_system_financing(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(CHINADATAALLSYSTEMFINANCING, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国金融机构存贷款数据，具体指标可参见API文档；历史数据从1978年开始，按月更新。
      def china_data_lending_deposit(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(CHINADATALENDINGDEPOSIT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国金融机构信贷收支表数据，具体指标可参见API文档；历史数据从1952年开始，按月更新。
      def china_data_credit_funds_table(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(CHINADATACREDITFUNDSTABLE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国人民银行公开市场回购数据，如正回购、逆回购，具体指标可参见API文档；历史数据从1952年开始，按月更新。
      def china_data_open_market_operation(indic_id: '', indic_name: '',
                                           begin_date: '', end_date: '',
                                           field: '')
        api_path = format(CHINADATAOPENMARKETOPERATION, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国人民币汇率数据，如人民币汇率中间价、人民币汇率指数，具体指标可参见API文档；历史数据从1994年1月开始，按日更新。
      def china_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(CHINADATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国官方发布的存贷款利率数据，具体指标可参见API文档；历史数据从1949年8月开始，按日更新。
      def china_data_interest_rate_lending_deposit(indic_id: '', indic_name: '',
                                                   begin_date: '', end_date: '',
                                                   field: '')
        api_path = format(CHINADATAINTERESTRATELENDINGDEPOSIT, indic_id,
                          indic_name, begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国银行间同业拆借(Shibor)数据，具体指标可参见API文档；历史数据从2006年10月开始，按日更新。
      def china_data_interest_rate_shibor(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(CHINADATAINTERESTRATESHIBOR, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国银行间同业拆借数据，如质押式回购、买断式回购，具体指标可参见API文档；历史数据从2005年1月开始，按日更新。
      def china_data_interest_rate_interbank_repo(indic_id: '', indic_name: '',
                                                  begin_date: '', end_date: '',
                                                  field: '')
        api_path = format(CHINADATAINTERESTRATEINTERBANKREPO, indic_id,
                          indic_name, begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含中国财政数据，如全国财政收支、各省及直辖市财政收入，具体指标可参见API文档；历史数据从1990年开始，按月更新。
      def china_data_finance(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(CHINADATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含中国上海黄金收盘价数据，具体指标可参见API文档；历史数据从2004年9月开始，按日更新。
      def china_data_gold_close_price(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(CHINADATAGOLDCLOSEPRICE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含美国GDP数据，具体指标可参见API文档；历史数据从1947年开始，按季更新。
      def us_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(USDATAGDP, indic_id, indic_name, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 包含美国对外贸易数据，具体指标可参见API文档；历史数据从1992年开始，按月更新。
      def us_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(USDATAFOREIGNTRADE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国价格指数数据，如CPI、PPI、进出口价格指数，具体指标可参见API文档；历史数据从1913年开始，按月更新。
      def us_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(USDATAPRICEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国就业与失业数据，如非农就业、ADP就业报告，具体指标可参见API文档；历史数据从1939年开始，按月更新。
      def us_data_employment_unemployment(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(USDATAEMPLOYMENTUNEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含美国利率数据，如联邦基金利率、国债收益率、Libor美元，具体指标可参见API文档；历史数据从1954年7月开始，按日更新。
      def us_data_interest_rate(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(USDATAINTERESTRATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国汇率数据，如美元对主要货币、美元指数，具体指标可参见API文档；历史数据从1973年1月开始，按日更新。
      def us_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(USDATAEXCHANGERATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国货币供应量数据，具体指标可参见API文档；历史数据从1959年开始，按月更新。
      def us_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(USDATAMONEYSUPPLY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国消费信贷数据，具体指标可参见API文档；历史数据从1943年开始，按月更新。
      def us_data_consumer_credit(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(USDATACONSUMERCREDIT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含美国景气指数数据，如PMI、消费者信息指数、ECRI领先指标，具体指标可参见API文档；历史数据从1948年开始，按月更新。
      def us_data_climate_index(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(USDATACLIMATEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国工业中耐用品数据，具体指标可参见API文档；历史数据从1992年开始，按月更新。
      def us_data_durable_goods(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(USDATADURABLEGOODS, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国房地产数据，具体指标可参见API文档；历史数据从1959年开始，按月更新。
      def us_data_real_estate(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(USDATAREALESTATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国国内贸易数据，具体指标可参见API文档；历史数据从1992年开始，按月更新。
      def us_data_domestic_trade(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(USDATADOMESTICTRADE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟GDP数据，具体指标可参见API文档；历史数据从1995年开始，按季更新。
      def eu_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(EUDATAGDP, indic_id, indic_name, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 包含欧盟对外贸易数据，具体指标可参见API文档；历史数据从2013年开始，按月更新。
      def eu_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(EUDATAFOREIGNTRADE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟价格指数数据，如CPI、PPI、单位进出口价格指数，具体指标可参见API文档；历史数据从1996年开始，按月更新。
      def eu_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(EUDATAPRICEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟就业与失业数据，如就业失业率、劳动力成本指数，具体指标可参见API文档；历史数据从1993年开始，按月更新。
      def eu_data_employment_unemployment(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(EUDATAEMPLOYMENTUNEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含欧盟利率数据，如Libor、政府债券收益率、欧元区公债收益率，具体指标可参见API文档；历史数据从1980年1月开始，按日更新。
      def eu_data_interest_rate(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(EUDATAINTERESTRATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟汇率数据，具体指标可参见API文档；历史数据从1999年1月开始，按日更新。
      def eu_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(EUDATAEXCHANGERATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟金融数据，如货币供应、官方储备资产，具体指标可参见API文档；历史数据从1980年开始，按月更新。
      def eu_data_banking(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(EUDATABANKING, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟景气指数数据，如PMI、经济景气指数、消费者信息指数，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def eu_data_climate_index(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(EUDATACLIMATEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟工业数据，如营建产出、供应生产指数，具体指标可参见API文档；历史数据从2013年开始，按月更新。
      def eu_data_industry(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(EUDATAINDUSTRY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含欧盟零售销售数据，具体指标可参见API文档；历史数据从2013年开始，按月更新。
      def eu_data_retail(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(EUDATARETAIL, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含瑞士GDP数据，具体指标可参见API文档；历史数据从1980年开始，按季更新。
      def switzerland_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(SWITZERLANDDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含瑞士价格指数数据，如CPI、PPI，具体指标可参见API文档；历史数据从1922年开始，按月更新。
      def switzerland_data_price_index(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(SWITZERLANDDATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含瑞士SVME采购经理人指数数据，具体指标可参见API文档；历史数据从2007年开始，按月更新。
      def switzerland_data_climate_index(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(SWITZERLANDDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含瑞士货币供应量数据，具体指标可参见API文档；历史数据从1975年开始，按月更新。
      def switzerland_data_money_supply(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(SWITZERLANDDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含瑞典GDP数据，具体指标可参见API文档；历史数据从1993年开始，按季更新。
      def sweden_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(SWEDENDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含瑞典价格指数数据，如CPI、PPI、进出口价格指数，具体指标可参见API文档；历史数据从1980年开始，按月更新。
      def sweden_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(SWEDENDATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含瑞典对外贸易数据，具体指标可参见API文档；历史数据从1975年开始，按月更新。
      def sweden_data_foreign_trade(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(SWEDENDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国GDP数据，具体指标可参见API文档；历史数据从1970年开始，按季更新。
      def korea_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(KOREADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含韩国价格指数数据，具体指标可参见API文档；历史数据从1965年开始，按月更新。
      def korea_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(KOREADATAPRICEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含韩国就业与失业数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def korea_data_employment_unemployment(indic_id: '', indic_name: '',
                                             begin_date: '', end_date: '',
                                             field: '')
        api_path = format(KOREADATAEMPLOYMENTUNEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国利率数据，具体指标可参见API文档；历史数据从1995年1月开始，按日更新。
      def korea_data_interest_rates(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(KOREADATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国汇率数据，具体指标可参见API文档；历史数据从1964年5月开始，按日更新。
      def korea_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(KOREADATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国货币供应量数据，具体指标可参见API文档；历史数据从1970年开始，按月更新。
      def korea_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(KOREADATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国景气指数数据，如企业景气调查指数、消费者调查指数、PMI、消费者信心指数，具体指标可参见API文档；历史数据从2008年开始，按月更新。
      def korea_data_climate_index(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(KOREADATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国外债数据，具体指标可参见API文档；历史数据从1994年开始，按季更新。
      def korea_data_external_debt(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(KOREADATA_EXTERNALDEBT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国工业与服务业数据，如工业指数、制造业指数、服务业活动指数，具体指标可参见API文档；历史数据从1970年开始，按月更新。
      def korea_data_industryand_service(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(KOREADATAINDUSTRYANDSERVICE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含韩国房地产数据，具体指标可参见API文档；历史数据从1987年开始，按月更新。
      def korea_data_real_estate(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(KOREADATAREALESTATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含澳大利亚GDP数据，具体指标可参见API文档；历史数据从1959年开始，按季更新。
      def australia_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(AUSTRALIADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含澳大利亚贸易数据，如对外贸易、零售销售，具体指标可参见API文档；历史数据从1971年开始，按月更新。
      def australia_data_foreign_trade(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(AUSTRALIADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳大利亚价格指数数据，如消费者物价指数数据(CPI)、生产价格指数数据(PPI)，具体指标可参见API文档；历史数据从1948年开始，按季更新。
      def australia_data_price_index(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(AUSTRALIADATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳大利亚就业和工资数据，如就业、ANZ总招聘广告，具体指标可参见API文档；历史数据从1978年开始，按月更新。
      def australia_data_employment(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(AUSTRALIADATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳大利亚景气调查数据，如消费者信心指数、PMI、PSC、PCI，具体指标可参见API文档；历史数据从2002年开始，按月更新。
      def australia_data_climate_index(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(AUSTRALIADATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含意大利国内生产总值(GDP)数据，具体指标可参见API文档；历史数据从1992年开始，按季更新。
      def italy_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(ITALYDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含意大利国际收支数据，具体指标可参见API文档；历史数据从1970年开始，按季更新。
      def italy_data_payments_balance(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ITALYDATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含意大利价格指数数据，具体指标可参见API文档；历史数据从1996年开始，按月更新。
      def italy_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ITALYDATAPRICEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含意大利就业和工资数据，如就业、工资，具体指标可参见API文档；历史数据从1983年开始，按月更新。
      def italy_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ITALYDATAEMPLOYMENT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含意大利财政数据，具体指标可参见API文档；历史数据从1995年开始，按年更新。
      def italy_data_finance(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(ITALYDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含意大利景气调查数据，具体指标可参见API文档；历史数据从1985年开始，按月更新。
      def italy_data_climate_index(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ITALYDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含意大利利率数据，具体指标可参见API文档；历史数据从1980年开始，按月更新。
      def italy_data_interest_rate(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ITALYDATAINTERESTRATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含西班牙GDP数据，具体指标可参见API文档；历史数据从1960年开始，按季更新。
      def spain_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(SPAINDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含西班牙对外贸易数据，具体指标可参见API文档；历史数据从1960年开始，按年更新。
      def spain_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(SPAINDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含西班牙国际收支数据，具体指标可参见API文档；历史数据从1980年开始，按年更新。
      def spain_data_payments_balance(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(SPAINDATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含西班牙金融数据，如货币供应、银行业，具体指标可参见API文档；历史数据从1960年开始，按年更新。
      def spain_data_banking(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(SPAINDATABANKING, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含西班牙交通运输和电信数据，具体指标可参见API文档；历史数据从1960年开始，按年更新。
      def spain_data_transportation(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(SPAINDATATRANSPORTATION, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含西班牙能源数据，具体指标可参见API文档；历史数据从1960年开始，按年更新。
      def spain_data_energy(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(SPAINDATAENERGY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含西班牙财政数据，具体指标可参见API文档；历史数据从1995年开始，按年更新。
      def spain_data_finance(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(SPAINDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含加拿大GDP数据，具体指标可参见API文档；历史数据从1962年开始，按季更新。
      def canada_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(CANADADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含加拿大国际收支数据，具体指标可参见API文档；历史数据从2012年开始，按月更新。
      def canada_data_payments_balance(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(CANADADATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含加拿大对外贸易数据，具体指标可参见API文档；历史数据从2008年开始，按月更新。
      def canada_data_foreign_trade(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(CANADADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含加拿大价格指数数据，如CPI、生产价格指数，具体指标可参见API文档；历史数据从1981年开始，按月更新。
      def canada_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(CANADADATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含加拿大金融数据，如货币供应量、国际储备，具体指标可参见API文档；历史数据从2002年开始，按月更新。
      def canada_data_banking(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(CANADADATABANKING, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含加拿大就业和工资数据，如就业、平均周薪，具体指标可参见API文档；历史数据从1991年开始，按月更新。
      def canada_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(CANADADATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含加拿大工业和制造业数据，具体指标可参见API文档；历史数据从2008年开始，按月更新。
      def canada_data_manufacturing(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(CANADADATAMANUFACTURING, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含加拿大房地产数据，如新房屋价格指数、建设许可，具体指标可参见API文档；历史数据从2003年开始，按月更新。
      def canada_data_real_estate(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(CANADADATAREALESTATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含加拿大景气调查数据，如Markit采购经理人指数、IVEY采购经理人指数，具体指标可参见API文档；历史数据从2011年开始，按月更新。
      def canada_data_climate_index(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(CANADADATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含香港GDP数据，具体指标可参见API文档；历史数据从1973年开始，按季更新。
      def hk_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(HKDATAGDP, indic_id, indic_name, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 包含香港对外贸易及投资数据，具体指标可参见API文档；历史数据从1952年开始，按月更新。
      def hk_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(HKDATAFOREIGNTRADE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港价格指数数据，如CPI、PPI，具体指标可参见API文档；历史数据从1974年开始，按月更新。
      def hk_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(HKDATAPRICEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港财政数据，具体指标可参见API文档；历史数据从2007年开始，按月更新。
      def hk_data_finance(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(HKDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港金融数据，如货币金融概况、流通货币，具体指标可参见API文档；历史数据从1968年开始，按月更新。
      def hk_data_banking(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(HKDATABANKING, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港工业数据，具体指标可参见API文档；历史数据从2009年开始，按季更新。
      def hk_data_industry(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(HKDATAINDUSTRY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港零售业总销货数据，具体指标可参见API文档；历史数据从2001年开始，按月更新。
      def hk_data_consumption(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(HKDATACONSUMPTION, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港货物吞吐量数据，具体指标可参见API文档；历史数据从2010年开始，按季更新。
      def hk_data_throughput(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(HKDATATHROUGHPUT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港人口与就业数据，具体指标可参见API文档；历史数据从1981年开始，按月更新。
      def hk_data_employment(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(HKDATAEMPLOYMENT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港利率数据，如利率、银行同业拆息，具体指标可参见API文档；历史数据从1980年1月开始，按日更新。
      def hk_data_interest_rate(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(HKDATAINTERESTRATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港汇率数据，具体指标可参见API文档；历史数据从2007年7月开始，按日更新。
      def hk_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(HKDATAEXCHANGERATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港房地产数据，具体指标可参见API文档；历史数据从2000年开始，按月更新。
      def hk_data_real_estate(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(HKDATAREALESTATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含香港旅游业数据，如访港旅客、酒店住宿，具体指标可参见API文档；历史数据从2010年开始，按月更新。
      def hk_data_tourism(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(HKDATATOURISM, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度GDP数据，具体指标可参见API文档；历史数据从2009年开始，按季更新。
      def india_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(INDIADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度国际收支数据，如外债、国际投资寸头，具体指标可参见API文档；历史数据从2006年开始，按季更新。
      def india_data_payments_balance(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(INDIADATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度价格指数数据，如CPI、批发价格指数、房屋价格指数，具体指标可参见API文档；历史数据从1995年开始，按月更新。
      def india_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(INDIADATAPRICEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度旅游业数据，具体指标可参见API文档；历史数据从2005年开始，按月更新。
      def india_data_tourism(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(INDIADATATOURISM, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度能源数据，具体指标可参见API文档；历史数据从2007年开始，按月更新。
      def india_data_energy(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(INDIADATAENERGY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度景气调查数据，具体指标可参见API文档；历史数据从2012年开始，按月更新。
      def india_data_climate_index(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(INDIADATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度金融数据，如货币供应量、对外贸易，具体指标可参见API文档；历史数据从2011年开始，按周更新。
      def india_data_banking(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(INDIADATABANKING, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度工业数据，具体指标可参见API文档；历史数据从1981年开始，按月更新。
      def india_data_industry(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(INDIADATAINDUSTRY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度对外贸易数据，具体指标可参见API文档；历史数据从1994年开始，按月更新。
      def india_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(INDIADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚GDP数据，具体指标可参见API文档；历史数据从2007年开始，按季更新。
      def malaysia_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(MALAYSIADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚国际收支数据，如国际收支、外汇准备金，具体指标可参见API文档；历史数据从1998年开始，按季更新。
      def malaysia_data_payments_balance(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(MALAYSIADATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚对外贸易数据，具体指标可参见API文档；历史数据从1996年开始，按月更新。
      def malaysia_data_foreign_trade(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(MALAYSIADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚价格指数据，如PPI、消费者价格指数，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def malaysia_data_price_index(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(MALAYSIADATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚就业数据，具体指标可参见API文档；历史数据从2010年开始，按月更新。
      def malaysia_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(MALAYSIADATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚工业数据，具体指标可参见API文档；历史数据从2007年开始，按月更新。
      def malaysia_data_industry(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(MALAYSIADATAINDUSTRY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚财政数据，具体指标可参见API文档；历史数据从1996年开始，按季更新。
      def malaysia_data_finance(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(MALAYSIADATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚货币供应量数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def malaysia_data_money_supply(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(MALAYSIADATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含马来西亚房地产数据，具体指标可参见API文档；历史数据从2004年开始，按季更新。
      def malaysia_data_real_estate(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(MALAYSIADATAREALESTATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚GDP数据，具体指标可参见API文档；历史数据从2001年开始，按季更新。
      def indonesia_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(INDONESIADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚国际收支国际收支、外债数据，具体指标可参见API文档；历史数据从1996年开始，按季更新。
      def indonesia_data_payments_balance(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(INDONESIADATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚对外贸易数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def indonesia_data_foreign_trade(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(INDONESIADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚消费者价格指数(CPI)(CPI)数据，具体指标可参见API文档；历史数据从2000年开始，按月更新。
      def indonesia_data_price_index(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(INDONESIADATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚工业数据，具体指标可参见API文档；历史数据从2003年开始，按年更新。
      def indonesia_data_industry(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(INDONESIADATAINDUSTRY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚财政数据，具体指标可参见API文档；历史数据从2003年开始，按季更新。
      def indonesia_data_finance(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(INDONESIADATAFINANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚货币供应量数据，具体指标可参见API文档；历史数据从1989年开始，按月更新。
      def indonesia_data_banking(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(INDONESIADATABANKING, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚证券市场数据，如资本市场发行的股票和债券、政府未尝还投资组合，具体指标可参见API文档；历史数据从2002年开始，按月更新。
      def indonesia_data_security(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(INDONESIADATASECURITY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含印度尼西亚旅游业数据，具体指标可参见API文档；历史数据从2008年开始，按月更新。
      def indonesia_data_tourism(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(INDONESIADATATOURISM, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含土耳其GDP数据，具体指标可参见API文档；历史数据从1998年开始，按季更新。
      def turkey_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(TURKEYDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含土耳其国际收支数据，如国际收支、外汇储备、外债，具体指标可参见API文档；历史数据从1981年开始，按月更新。
      def turkey_data_payments_balance(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(TURKEYDATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含土耳其对外贸易数据，具体指标可参见API文档；历史数据从2005年开始，按月更新。
      def turkey_data_foreign_trade(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(TURKEYDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含土耳其价格指数数据，如CPI、PPI，具体指标可参见API文档；历史数据从2004年开始，按月更新。
      def turkey_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(TURKEYDATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含土耳其就业数据，具体指标可参见API文档；历史数据从2012年开始，按月更新。
      def turkey_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(TURKEYDATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含土耳其工业数据，具体指标可参见API文档；历史数据从2012年开始，按月更新。
      def turkey_data_industry(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(TURKEYDATAINDUSTRY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含土耳其财政数据，具体指标可参见API文档；历史数据从2006年开始，按月更新。
      def turkey_data_finance(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(TURKEYDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含土耳其货币供应量数据，具体指标可参见API文档；历史数据从2005年开始，按周更新。
      def turkey_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(TURKEYDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含泰国GDP数据，具体指标可参见API文档；历史数据从1993年开始，按季更新。
      def thailand_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(THAILANDDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含泰国国际收支数据，如国际收支、外汇储备、外债，具体指标可参见API文档；历史数据从1987年开始，按月更新。
      def thailand_data_payments_balance(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(THAILANDDATAPAYMENTSBALANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含泰国对外贸易数据，具体指标可参见API文档；历史数据从2010年开始，按月更新。
      def thailand_data_foreign_trade(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(THAILANDDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含泰国价格指数数据，如CPI、PPI，具体指标可参见API文档；历史数据从1976年开始，按月更新。
      def thailand_data_price_index(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(THAILANDDATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含泰国就业数据，如就业、劳动指数、劳动生产率指数，具体指标可参见API文档；历史数据从2000年开始，按月更新。
      def thailand_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(THAILANDDATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含泰国工业数据，如工业生产指数、产能利用率、出货量指数、产成品存货指数，具体指标可参见API文档；历史数据从2000年开始，按月更新。
      def thailand_data_industry(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(THAILANDDATAINDUSTRY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含泰国财政数据，具体指标可参见API文档；历史数据从2002年开始，按月更新。
      def thailand_data_finance(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(THAILANDDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含泰国商业景气指数数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def thailand_data_climate_index(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(THAILANDDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含泰国货币供应量数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def thailand_data_money_supply(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(THAILANDDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含英国GDP数据，具体指标可参见API文档；历史数据从1955年开始，按季更新。
      def uk_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(UKDATAGDP, indic_id, indic_name, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 包含英国对外贸易数据，具体指标可参见API文档；历史数据从1971年开始，按月更新。
      def uk_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(UKDATAFOREIGNTRADE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国消费者价格指数(CPI)数据，具体指标可参见API文档；历史数据从1988年开始，按月更新。
      def uk_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(UKDATACPI, indic_id, indic_name, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 包含英国零售价格指数(RPI)数据，具体指标可参见API文档；历史数据从1948年开始，按月更新。
      def uk_data_rpi(indic_id: '', indic_name: '', begin_date: '',
                      end_date: '', field: '')
        api_path = format(UKDATARPI, indic_id, indic_name, begin_date, end_date,
                          field)
        fetch_data api_path
      end

      # 包含英国就业数据，具体指标可参见API文档；历史数据从1971年开始，按月更新。
      def uk_data_employment(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(UKDATAEMPLOYMENT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国货币供应量数据，具体指标可参见API文档；历史数据从1998年开始，按月更新。
      def uk_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(UKDATAMONEYSUPPLY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国消费信贷数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def uk_data_consumer_credit(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(UKDATACONSUMERCREDIT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含英国景气指数数据，具体指标可参见API文档；历史数据从1981年开始，按月更新。
      def uk_data_climate_index(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(UKDATACLIMATEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国财政收支数据，具体指标可参见API文档；历史数据从1991年开始，按月更新。
      def uk_data_finance(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(UKDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国工业生产指数数据，具体指标可参见API文档；历史数据从1968年开始，按月更新。
      def uk_data_industrial_pi(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(UKDATAINDUSTRIALPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国房价指数数据，具体指标可参见API文档；历史数据从1983年开始，按月更新。
      def uk_data_house_pi(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(UKDATAHOUSEPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国利率数据，具体指标可参见API文档；历史数据从1975年1月开始，按日更新。
      def uk_data_interest_rates(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(UKDATAINTERESTRATES, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含英国汇率数据，具体指标可参见API文档；历史数据从1975年1月开始，按日更新。
      def uk_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(UKDATAEXCHANGERATE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含日本GDP数据，具体指标可参见API文档；历史数据从1980年开始，按季更新。
      def japan_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(JAPANDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含日本对外贸易数据，具体指标可参见API文档；历史数据从1979年开始，按月更新。
      def japan_data_foreign_trade(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(JAPANDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含日本消费者价格指数(CPI)数据，具体指标可参见API文档；历史数据从1970年开始，按月更新。
      def japan_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(JAPANDATACPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含日本就业与失业数据，具体指标可参见API文档；历史数据从1953年开始，按月更新。
      def japan_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(JAPANDATAEMPLOYMENT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含日本货币供应量数据，具体指标可参见API文档；历史数据从2007年开始，按月更新。
      def japan_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(JAPANDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含日本景气指数数据，如景气动向指数、消费者信心指数、PMI，具体指标可参见API文档；历史数据从1980年开始，按月更新。
      def japan_data_climate_index(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(JAPANDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含日本工业生产指数数据，具体指标可参见API文档；历史数据从2004年开始，按月更新。
      def japan_data_industrial_pi(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(JAPANDATAINDUSTRIALPI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含日本房价指数数据，具体指标可参见API文档；历史数据从2004年开始，按月更新。
      def japan_data_house_pi(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(JAPANDATAHOUSEPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含日本利率数据，具体指标可参见API文档；历史数据从1998年1月开始，按日更新。
      def japan_data_interest_rates(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(JAPANDATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含日本汇率数据，具体指标可参见API文档；历史数据从1998年1月开始，按日更新。
      def japan_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(JAPANDATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国GDP数据，具体指标可参见API文档；历史数据从1991年开始，按季更新。
      def germany_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(GERMANYDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含德国对外贸易数据，具体指标可参见API文档；历史数据从2002年开始，按月更新。
      def germany_data_foreign_trade(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(GERMANYDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国消费者价格指数(CPI)数据，具体指标可参见API文档；历史数据从1994年开始，按月更新。
      def germany_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(GERMANYDATACPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含德国生产者价格指数(PPI)数据，具体指标可参见API文档；历史数据从2005年开始，按月更新。
      def germany_data_ppi(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(GERMANYDATAPPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含德国进出口价格指数数据，具体指标可参见API文档；历史数据从2000年开始，按月更新。
      def germany_data_import_export_pi(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(GERMANYDATAIMPORTEXPORTPI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国就业与失业数据，具体指标可参见API文档；历史数据从2000年开始，按月更新。
      def germany_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(GERMANYDATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国货币供应量数据，具体指标可参见API文档；历史数据从1995年开始，按月更新。
      def germany_data_money_supply(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(GERMANYDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国景气指数数据，如商业景气指数、ZEW景气指数、PMI、消费者信息指数，具体指标可参见API文档；历史数据从1985年开始，按月更新。
      def germany_data_climate_index(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(GERMANYDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国财政收支数据，具体指标可参见API文档；历史数据从2004年开始，按月更新。
      def germany_data_finance(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(GERMANYDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含德国工业生产指数数据，具体指标可参见API文档；历史数据从1991年开始，按月更新。
      def germany_data_industrial_pi(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(GERMANYDATAINDUSTRIALPI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国房地产数据，具体指标可参见API文档；历史数据从2003年开始，按月更新。
      def germany_data_real_estate(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(GERMANYDATAREALESTATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国国内贸易数据，具体指标可参见API文档；历史数据从1994年开始，按月更新。
      def germany_data_domestic_trade(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(GERMANYDATADOMESTICTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含德国利率数据，具体指标可参见API文档；历史数据从1997年8月开始，按日更新。
      def germany_data_interest_rates(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(GERMANYDATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含法国财政收支数据，具体指标可参见API文档；历史数据从1995年开始，按年更新。
      def france_data_finance(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(FRANCEDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含法国GDP数据，具体指标可参见API文档；历史数据从1978年开始，按季更新。
      def france_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(FRANCEDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含法国对外贸易数据，具体指标可参见API文档；历史数据从1990年开始，按月更新。
      def france_data_foreign_trade(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(FRANCEDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含法国消费者价格指数(CPI)数据，具体指标可参见API文档；历史数据从1996年开始，按月更新。
      def france_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(FRANCEDATACPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含法国生产者价格指数(PPI)数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def france_data_ppi(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(FRANCEDATAPPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含法国进口价格指数数据，具体指标可参见API文档；历史数据从2005年开始，按月更新。
      def france_data_import_pi(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(FRANCEDATAIMPORTPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含法国就业数据，具体指标可参见API文档；历史数据从1983年开始，按月更新。
      def france_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(FRANCEDATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含法国货币供应量数据，具体指标可参见API文档；历史数据从2007年开始，按月更新。
      def france_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(FRANCEDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含法国景气指数数据，具体指标可参见API文档；历史数据从1985年开始，按月更新。
      def france_data_climate_index(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(FRANCEDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含法国工业生产指数数据，具体指标可参见API文档；历史数据从1990年开始，按月更新。
      def france_data_industrial_pi(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(FRANCEDATAINDUSTRIALPI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含法国国内贸易数据，具体指标可参见API文档；历史数据从1995年开始，按月更新。
      def france_data_domestic_trade(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(FRANCEDATADOMESTICTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含法国利率数据，具体指标可参见API文档；历史数据从1980年1月开始，按日更新。
      def france_data_interest_rates(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(FRANCEDATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾GDP数据，具体指标可参见API文档；历史数据从1961年开始，按季更新。
      def taiwan_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(TAIWANDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含台湾外债数据，具体指标可参见API文档；历史数据从1999年开始，按季更新。
      def taiwan_data_external_debt(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATAEXTERNALDEBT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾对外贸易数据，具体指标可参见API文档；历史数据从1980年开始，按月更新。
      def taiwan_data_foreign_trade(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾消费者价格指数(CPI)数据，具体指标可参见API文档；历史数据从1981年开始，按月更新。
      def taiwan_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(TAIWANDATACPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含台湾进出口价格指数数据，具体指标可参见API文档；历史数据从1981年开始，按月更新。
      def taiwan_data_import_export_pi(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATAIMPORTEXPORTPI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾就业数据，具体指标可参见API文档；历史数据从1978年开始，按月更新。
      def taiwan_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(TAIWANDATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾货币供应量数据，具体指标可参见API文档；历史数据从1961年开始，按月更新。
      def taiwan_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(TAIWANDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾存贷款数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def taiwan_data_lending_deposit(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATALENDINGDEPOSIT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾准备金数据，具体指标可参见API文档；历史数据从1998年开始，按月更新。
      def taiwan_data_reserve_fund(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(TAIWANDATARESERVEFUND, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾景气指数数据，具体指标可参见API文档；历史数据从1982年开始，按月更新。
      def taiwan_data_climate_index(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾财政收支数据，具体指标可参见API文档；历史数据从1961年开始，按月更新。
      def taiwan_data_finance(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(TAIWANDATAFINANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含台湾工业生产指数数据，具体指标可参见API文档；历史数据从1971年开始，按月更新。
      def taiwan_data_industrial_pi(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATAINDUSTRIALPI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾房地产数据，具体指标可参见API文档；历史数据从1991年开始，按月更新。
      def taiwan_data_real_estate(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(TAIWANDATAREALESTATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾旅游业数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def taiwan_data_tourism(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(TAIWANDATATOURISM, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含台湾两岸贸易数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def taiwan_data_cross_strait_trade(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(TAIWANDATACROSSSTRAITTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾商业与经济数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def taiwan_data_businessand_economy(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(TAIWANDATABUSINESSANDECONOMY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾利率数据，具体指标可参见API文档；历史数据从2002年5月开始，按日更新。
      def taiwan_data_interest_rates(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含台湾汇率数据，具体指标可参见API文档；历史数据从1993年1月开始，按日更新。
      def taiwan_data_exchange_rate(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(TAIWANDATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳门GDP数据，具体指标可参见API文档；历史数据从2000年开始，按季更新。
      def macao_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                         end_date: '', field: '')
        api_path = format(MACAODATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含澳门价格指数数据，具体指标可参见API文档；历史数据从1998年开始，按月更新。
      def macao_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(MACAODATAPRICEINDEX, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含澳门就业数据，具体指标可参见API文档；历史数据从1996年开始，按月更新。
      def macao_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(MACAODATAEMPLOYMENT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含澳门货币供应量数据，具体指标可参见API文档；历史数据从1984年开始，按月更新。
      def macao_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(MACAODATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳门外汇储备数据，具体指标可参见API文档；历史数据从1984年开始，按月更新。
      def macao_data_foreign_exchange_reserves(indic_id: '', indic_name: '',
                                               begin_date: '', end_date: '',
                                               field: '')
        api_path = format(MACAODATAFOREIGNEXCHANGERESERVES, indic_id,
                          indic_name, begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳门旅游业数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def macao_data_tourism(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(MACAODATATOURISM, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含澳门博彩业数据，具体指标可参见API文档；历史数据从2005年开始，按月更新。
      def macao_data_gaming_industry(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(MACAODATAGAMINGINDUSTRY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳门利率数据，具体指标可参见API文档；历史数据从1988年开始，按月更新。
      def macao_data_interest_rates(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(MACAODATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含澳门汇率数据，具体指标可参见API文档；历史数据从1984年开始，按月更新。
      def macao_data_exchange_rate(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(MACAODATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含俄罗斯GDP数据，具体指标可参见API文档；历史数据从1995年开始，按季更新。
      def russia_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(RUSSIADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含俄罗斯对外贸易数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def russia_data_foreign_trade(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(RUSSIADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含俄罗斯消费者价格指数(CPI)数据，具体指标可参见API文档；历史数据从2002年开始，按月更新。
      def russia_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(RUSSIADATACPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含俄罗斯货币供应量数据，具体指标可参见API文档；历史数据从1996年开始，按月更新。
      def russia_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(RUSSIADATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含俄罗斯景气指数数据，具体指标可参见API文档；历史数据从2009年开始，按月更新。
      def russia_data_climate_index(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(RUSSIADATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含俄罗斯利率数据，具体指标可参见API文档；历史数据从2000年8月开始，按日更新。
      def russia_data_interest_rates(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(RUSSIADATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含俄罗斯汇率数据，具体指标可参见API文档；历史数据从1992年7月开始，按日更新。
      def russia_data_exchange_rate(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(RUSSIADATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西GDP数据，具体指标可参见API文档；历史数据从2000年开始，按季更新。
      def brazil_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(BRAZILDATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含巴西对外贸易数据，具体指标可参见API文档；历史数据从1996年开始，按月更新。
      def brazil_data_foreign_trade(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(BRAZILDATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西价格指数数据，具体指标可参见API文档；历史数据从1970年开始，按月更新。
      def brazil_data_price_index(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(BRAZILDATAPRICEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西就业数据，具体指标可参见API文档；历史数据从1997年开始，按月更新。
      def brazil_data_employment(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(BRAZILDATAEMPLOYMENT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西货币供应量数据，具体指标可参见API文档；历史数据从1988年开始，按月更新。
      def brazil_data_money_supply(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(BRAZILDATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西景气指数数据，具体指标可参见API文档；历史数据从2007年开始，按月更新。
      def brazil_data_climate_index(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(BRAZILDATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西零售销售数据，具体指标可参见API文档；历史数据从2004年开始，按月更新。
      def brazil_data_retail_sale(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(BRAZILDATARETAILSALE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西利率数据，具体指标可参见API文档；历史数据从2011年9月开始，按日更新。
      def brazil_data_interest_rates(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(BRAZILDATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含巴西汇率数据，具体指标可参见API文档；历史数据从1999年4月开始，按日更新。
      def brazil_data_exchange_rate(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(BRAZILDATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非GDP数据，具体指标可参见API文档；历史数据从1993年开始，按季更新。
      def south_africa_data_gdp(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(SOUTHAFRICADATAGDP, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含南非就业与失业数据，具体指标可参见API文档；历史数据从2006年开始，按季更新。
      def south_africa_data_employment_unemployment(indic_id: '',
                                                    indic_name: '',
                                                    begin_date: '',
                                                    end_date: '', field: '')
        api_path = format(SOUTHAFRICADATAEMPLOYMENTUNEMPLOYMENT, indic_id,
                          indic_name, begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非对外贸易数据，具体指标可参见API文档；历史数据从2004年开始，按月更新。
      def south_africa_data_foreign_trade(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(SOUTHAFRICADATAFOREIGNTRADE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非消费者价格指数(CPI)数据，具体指标可参见API文档；历史数据从2008年开始，按月更新。
      def south_africa_data_cpi(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(SOUTHAFRICADATACPI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含南非货币供应量数据，具体指标可参见API文档；历史数据从1965年开始，按月更新。
      def south_africa_data_money_supply(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(SOUTHAFRICADATAMONEYSUPPLY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非景气指数数据，具体指标可参见API文档；历史数据从1970年开始，按月更新。
      def south_africa_data_climate_index(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(SOUTHAFRICADATACLIMATEINDEX, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非工业数据，具体指标可参见API文档；历史数据从1993年开始，按月更新。
      def south_africa_data_industry(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(SOUTHAFRICADATAINDUSTRY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非房地产数据，具体指标可参见API文档；历史数据从1999年开始，按月更新。
      def south_africa_data_real_estate(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(SOUTHAFRICADATAREALESTATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非零售销售数据，具体指标可参见API文档；历史数据从2000年开始，按月更新。
      def south_africa_data_retail_sales(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(SOUTHAFRICADATARETAILSALES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非利率数据，具体指标可参见API文档；历史数据从1980年12月开始，按日更新。
      def south_africa_data_interest_rates(indic_id: '', indic_name: '',
                                           begin_date: '', end_date: '',
                                           field: '')
        api_path = format(SOUTHAFRICADATAINTERESTRATES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含南非汇率数据，具体指标可参见API文档；历史数据从1970年1月开始，按日更新。
      def south_africa_data_exchange_rate(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(SOUTHAFRICADATAEXCHANGERATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含农林牧渔行业价格类数据，即主要农产品价格，主要畜禽产品价格，猪存栏及猪粮比，主要水产品批发价格(威海市)，农产品及农副期货收盘价，消费生产指数，具体指标可参见API文档；历史数据从1947年1月开始，数据按日更新。
      def agric_data_price(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(AGRICDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含农林牧渔行业产值数据，具体指标可参见API文档；历史数据从2000年3月开始，数据按季更新。
      def agric_data_outp_v(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(AGRICDATAOUTPV, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含美国农业部对全球主要农产品供需预测数据，具体指标可参见API文档；历史数据从1984年6月开始，数据按月更新。
      def agric_data_wasde(indic_id: '', indic_name: '', begin_date: '',
                           end_date: '', field: '')
        api_path = format(AGRICDATAWASDE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含农林牧渔进出口数据，具体指标可参见API文档；历史数据从1997年1月开始，数据按月更新。
      def agric_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(AGRICDATAIMPTEXPT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含食品饮料价格类数据，即酒类零售价，乳制品价格，桶装食用油零售价，肉类批发价，调味品零售价，具体指标可参见API文档；历史数据从2004年1月开始，数据按日更新。
      def food_bvg_data_price(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(FOODBVGDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含食品饮料产销及库存数据，具体指标可参见API文档；历史数据从1998年3月开始，数据按季更新。
      def food_bvg_data_sales_output(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(FOODBVGDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含食品饮料进出口数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def food_bvg_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(FOODBVGDATAIMPTEXPT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含商品零售及限上收入商品零售社会消费品零售总额数据，具体指标可参见API文档；历史数据从1984年1月开始，数据按月更新。
      def comm_trade_data_trscg(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(COMMTRADEDATATRSCG, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含50家重点大型零售企业销售数据，具体指标可参见API文档；历史数据从2011年7月开始，数据按月更新。
      def comm_trade_data_sales50_large_en(indic_id: '', indic_name: '',
                                           begin_date: '', end_date: '',
                                           field: '')
        api_path = format(COMMTRADEDATASALES50LARGEEN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含商业贸易指数及重点流通企业销售数据，如义乌小商品指数、消费者信心指数、RPI，百货店、超市、专业店销售额等，具体指标可参见API文档；历史数据从1993年12月开始，数据按周更新。
      def comm_trade_data_index_key_circ_en(indic_id: '', indic_name: '',
                                            begin_date: '', end_date: '',
                                            field: '')
        api_path = format(COMMTRADEDATAINDEXKEYCIRCEN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含餐饮收入及限上单位餐饮收入社会消费品零售总额数据，具体指标可参见API文档；历史数据从2010年1月开始，数据按月更新。
      def cater_tour_data_trscg(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(CATERTOURDATATRSCG, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含全国饭店经营性数据，具体指标可参见API文档；历史数据从2011年1月开始，数据按月更新。
      def cater_tour_data_hotels_oper(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(CATERTOURDATAHOTELSOPER, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含全国酒店开业统计数据，具体指标可参见API文档；历史数据从2009年9月开始，数据按月更新。
      def cater_tour_data_new_hotel(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(CATERTOURDATANEWHOTEL, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含入境旅游接待收汇数据，具体指标可参见API文档；历史数据从2001年1月开始，数据按月更新。
      def cater_tour_data_inbound_tour(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(CATERTOURDATAINBOUNDTOUR, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含医药生物行业产销数据,如中成药、化学原料药的产量等，具体指标可参见API文档；历史数据从2001年1月开始，数据按月更新。
      def bio_medicine_data_sales_output(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(BIOMEDICINEDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含医药生物行业进出口数据，如药品、中药材及医疗器械的进出口等，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def bio_medicine_data_impt_expt(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(BIOMEDICINEDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含石油化工行业价格类数据，如石油价格、主要化工产品价格、中纤价格指数等，具体指标可参见API文档；历史数据从1994年1月开始，数据按日更新。
      def petrochem_data_price(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(PETROCHEMDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含石油化工行业产销及库存数据，具体指标可参见API文档；历史数据从1982年8月开始，数据按周更新。
      def petrochem_data_sales_output(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(PETROCHEMDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含石油化工行业进出口数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def petrochem_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(PETROCHEMDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含服装纺织行业价格类数据，如棉花到厂价、中国棉花价格指数、中国纱线价格指数等，具体指标可参见API文档；历史数据从2006年1月开始，数据按日更新。
      def cloth_tex_data_price(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(CLOTHTEXDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含服装纺织行业产销及库存数据，具体指标可参见API文档；历史数据从1990年1月开始，数据按月更新。
      def cloth_tex_data_sales_output(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(CLOTHTEXDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含美国农业部对全球棉花供需预测数据，具体指标可参见API文档；历史数据从1984年6月开始，数据按月更新。
      def cloth_tex_data_cotton_wasde(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(CLOTHTEXDATACOTTONWASDE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含服装纺织行业进出口数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def cloth_tex_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(CLOTHTEXDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含轻工制造行业价格类数据，如FOEX价格指数，具体指标可参见API文档；历史数据从2012年7月开始，数据按周更新。
      def light_manuf_data_price(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(LIGHTMANUFDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含轻工制造行业产销及库存数据，具体指标可参见API文档；历史数据从2001年1月开始，数据按月更新。
      def light_manuf_data_sales_output(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(LIGHTMANUFDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含轻工制造行业进出口数据，具体指标可参见API文档；历史数据从2000年1月开始，数据按月更新。
      def light_manuf_data_impt_expt(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(LIGHTMANUFDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含采掘行业价格类数据，即动力煤、焦煤、焦炭、兰炭价格及煤炭海运运价，具体指标可参见API文档；历史数据从1998年12月开始，数据按日更新。
      def mining_data_price(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(MININGDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含采掘行业产销运数据，具体指标可参见API文档；历史数据从2008年4月开始，数据按日更新。
      def mining_data_outp_sales_transp(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(MININGDATAOUTPSALESTRANSP, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含采掘行业进出口数据，具体指标可参见API文档；历史数据从2000年1月开始，数据按月更新。
      def mining_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(MININGDATAIMPTEXPT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含黑色金属行业价格类数据，如铁矿石价格、螺纹钢价格、线材价格，具体指标可参见API文档；历史数据从2008年12月开始，数据按日更新。
      def fer_metal_data_price(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(FERMETALDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含黑色金属行业产销及库存数据，具体指标可参见API文档；历史数据从1998年2月开始，数据按周更新。
      def fer_metal_data_sales_output(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(FERMETALDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含黑色金属行业进出口数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def fer_metal_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(FERMETALDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含有色金属行业价格类数据，如铝、铜、铅、锌、锡、镍、金、银等价格类数据，具体指标可参见API文档；历史数据从1968年1月开始，数据按日更新。
      def nonfer_metal_data_price(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(NONFERMETALDATAPRICE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含有色金属行业产销及库存数据，具体指标可参见API文档；历史数据从1973年3月开始，数据按周更新。
      def nonfer_metal_data_sales_output(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(NONFERMETALDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含有色金属行业进出口数据，具体指标可参见API文档；历史数据从1995年1月开始，数据按月更新。
      def nonfer_metal_data_impt_expt(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(NONFERMETALDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含交运设备行业价格类数据，如GAIN市场指数及二手车交易价格等，具体指标可参见API文档；历史数据从2011年2月开始，数据按月更新。
      def delivery_eq_data_price(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(DELIVERYEQDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含交运设备行业产销数据，如汽车、船舶、飞机等产量，具体指标可参见API文档；历史数据从1958年3月开始，数据按月更新。
      def delivery_eq_data_sales_output(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(DELIVERYEQDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含交运设备行业进出口数据，如汽车、船舶、飞机等进出口，具体指标可参见API文档；历史数据从1998年2月开始，数据按月更新。
      def delivery_eq_data_impt_expt(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(DELIVERYEQDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含交通运输行业中铁路运输数据，如铁路旅客、货物周转量等，具体指标可参见API文档；历史数据从1983年12月开始，数据按月更新。
      def traffic_trans_data_railway(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(TRAFFICTRANSDATARAILWAY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含交通运输行业中公路运输数据，如公路旅客、货物周转量等，具体指标可参见API文档；历史数据从1989年2月开始，数据按月更新。
      def traffic_trans_data_road(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(TRAFFICTRANSDATAROAD, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含交通运输行业中水路运输数据，如波罗的海航运指数，具体指标可参见API文档；历史数据从2007年6月开始，数据按日更新。
      def traffic_trans_data_waterway(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(TRAFFICTRANSDATAWATERWAY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含交通运输行业中航空运输数据，如航空运输周转量、航班效率等，具体指标可参见API文档；历史数据从1983年8月开始，数据按月更新。
      def traffic_trans_data_air(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(TRAFFICTRANSDATAAIR, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含公用事业行业中电力行业数据，如全国发电量、工业用电量等，具体指标可参见API文档；历史数据从1989年3月开始，数据按月更新。
      def util_industry_data_power(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(UTILINDUSTRYDATAPOWER, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含公用事业行业中供水行业数据，如行业营收、毛利率等，具体指标可参见API文档；历史数据从2003年2月开始，数据按月更新。
      def util_industry_data_water(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(UTILINDUSTRYDATAWATER, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含公用事业行业中燃气供应数据，如行业营收，毛利率等，具体指标可参见API文档；历史数据从2003年3月开始，数据按月更新。
      def util_industry_data_gas(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(UTILINDUSTRYDATAGAS, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含公用事业行业中环保行业数据，如行业固定资产投资及重点城市AQI指数，具体指标可参见API文档；历史数据从2003年3月开始，数据按日更新。
      def util_industry_data_envir_prot(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(UTILINDUSTRYDATAENVIRPROT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含电子元件行业价格类数据,如面板价格，电子器件价格指数等，具体指标可参见API文档；历史数据从2007年2月开始，数据按日更新。
      def elec_comp_data_price(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ELECCOMPDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含电子元件行业产销数据及半导体BB值，具体指标可参见API文档；历史数据从1998年2月开始，数据按月更新。
      def elec_comp_data_sales_output(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ELECCOMPDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含电子元件行业进出口数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def elec_comp_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ELECCOMPDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含信息设备行业价格类数据，即中国IT市场指数、笔记本市场主流品牌均价、平板电脑市场主流品牌均价，具体指标可参见API文档；历史数据从2007年6月开始，数据按周更新。
      def info_eqpt_data_price(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(INFOEQPTDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含信息设备行业产销、库存及出货量数据，具体指标可参见API文档；历史数据从1998年2月开始，数据按月更新。
      def info_eqpt_data_sales_output(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(INFOEQPTDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含信息设备行业进出口数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def info_eqpt_data_impt_expt(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(INFOEQPTDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含家用电器行业产销数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def household_apls_data_sales_output(indic_id: '', indic_name: '',
                                           begin_date: '', end_date: '',
                                           field: '')
        api_path = format(HOUSEHOLDAPLSDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含家用电器行业进出口数据，具体指标可参见API文档；历史数据从1998年1月开始，数据按月更新。
      def household_apls_data_impt_expt(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(HOUSEHOLDAPLSDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含信息服务软件产业数据，即行业收入、行业固定投资、软件覆盖人数、软件总启动次数、软件总使用时长，具体指标可参见API文档；历史数据从2008年8月开始，数据按周更新。
      def info_serv_data_software(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(INFOSERVDATASOFTWARE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含信息服务通信产业数据，即通信运营、邮政运营，具体指标可参见API文档；历史数据从1997年12月开始，数据按月更新。
      def info_serv_data_comm(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(INFOSERVDATACOMM, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含信息服务互联网产业数据，即市场规模、访问次数，具体指标可参见API文档；历史数据从2006年3月开始，数据按周更新。
      def info_serv_data_internet(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(INFOSERVDATAINTERNET, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含房地产行业价格类数据，如中国一手房价、中国二手房价、全球房价等，具体指标可参见API文档；历史数据从1994年11月开始，数据按月更新。
      def real_est_data_price(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(REALESTDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含房地产行业投资开发及投资资金来源数据，具体指标可参见API文档；历史数据从1994年2月开始，数据按月更新。
      def real_est_data_invest_dvpt(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(REALESTDATAINVESTDVPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含房地产行业土地市场数据，如土地成交数据和土地供应数据，具体指标可参见API文档；历史数据从2013年3月开始，数据按月更新。
      def real_est_data_land(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(REALESTDATALAND, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含房地产行业销售和库存数据，具体指标可参见API文档；历史数据从1991年2月开始，数据按周更新。
      def real_est_data_sales(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(REALESTDATASALES, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含建筑建材行业价格类数据，如水泥价格、玻璃价格等，具体指标可参见API文档；历史数据从2009年12月开始，数据按日更新。
      def bldg_mater_data_price(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(BLDGMATERDATAPRICE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含建筑建材行业产销及库存数据，具体指标可参见API文档；历史数据从1990年1月开始，数据按季更新。
      def bldg_mater_data_sales_output(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(BLDGMATERDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含机械设备行业产销数据，如仪器仪表产量、专用设备产量、通用设备产量、工程机械产销等，具体指标可参见API文档；历史数据从1990年1月开始，数据按月更新。
      def mchnr_eqpt_data_sales_output(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(MCHNREQPTDATASALESOUTPUT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含机械设备行业进出口数据，具体指标可参见API文档；历史数据从2010年1月开始，数据按月更新。
      def mchnr_eqpt_data_impt_expt(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(MCHNREQPTDATAIMPTEXPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含银行资产负债数据，如商业银行总资产、总负债等，具体指标可参见API文档；历史数据从2011年1月开始，数据按月更新。
      def bank_data_assets_liabilities(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(BANKDATAASSETSLIABILITIES, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含商业银行业不良贷款数据，如分级别的商业银行不良贷款余额及贷款率，具体指标可参见API文档；历史数据从2003年6月开始，数据按季更新。
      def bank_data_non_performing_loans(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(BANKDATANONPERFORMINGLOANS, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含证券业经营性指标，如证券业总资产、净资本及营收、利润等，具体指标可参见API文档；历史数据从2008年12月开始，数据按半年更新。
      def securities_data_oper_indic(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(SECURITIESDATAOPERINDIC, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含原保险保费收入数据，如分险种的保费收入，具体指标可参见API文档；历史数据从1999年1月开始，数据按月更新。
      def ins_data_prem_pry_insurance(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(INSDATAPREMPRYINSURANCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 包含保险业保险赔付数据，如分险种的保险业务赔款和给付金额，具体指标可参见API文档；历史数据从1999年1月开始，数据按月更新。
      def ins_data_claim_payment(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(INSDATACLAIMPAYMENT, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含保险资金运用余额数据，如银行存款、股票和债券投资基金等，具体指标可参见API文档；历史数据从1999年1月开始，数据按月更新。
      def ins_data_fund_balance(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(INSDATAFUNDBALANCE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 包含保险业总资产和净资产数据，如分险种的保险总资产和净资产，具体指标可参见API文档；历史数据从1999年3月开始，数据按月更新。
      def ins_data_assets(indic_id: '', indic_name: '', begin_date: '',
                          end_date: '', field: '')
        api_path = format(INSDATAASSETS, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含伊利股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_yili(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(ECOMMERCEDATAYILI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含光明乳业（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_guangming(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATAGUANGMING, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含承德露露（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_cheng_de_lolo(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATACHENGDELOLO, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含洽洽食品（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_qiaqia(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATAQIAQIA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含维维股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_vv_group(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(ECOMMERCEDATAVVGROUP, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含金枫酒业（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_jinfeng_wine(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAJINFENGWINE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含古越龙山（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_guyue_longshan(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(ECOMMERCEDATAGUYUELONGSHAN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含山西汾酒（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_shanxi_fenjiu(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATASHANXIFENJIU, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含张裕A（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_zhangyu_a(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATAZHANGYUA, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含莫高股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_mogao(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAMOGAO, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含克明面业（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_kemen_noodle_mfg(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(ECOMMERCEDATAKEMENNOODLEMFG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含金字火腿（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_jinzi_ham(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATAJINZIHAM, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含莲花味精（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_lotus(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATALOTUS, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含贝因美（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_beiyin_mate(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATABEIYINMATE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含青岛海尔（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_qingdao_haier(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAQINGDAOHAIER, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含TCL集团（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_tcl_group(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATATCLGROUP, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含美的集团（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_midea_group(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAMIDEAGROUP, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含惠而浦（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_whirlpool(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATAWHIRLPOOL, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含九阳股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_joyoung(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAJOYOUNG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含华帝股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_vatti(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAVATTI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含苏泊尔（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_supor(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATASUPOR, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含深康佳A（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_konka(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAKONKA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含四川长虹（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_changhong(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATACHANGHONG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含小天鹅A（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年10月开始，数据频度为日度，按月更新。
      def ecommerce_data_little_swan(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATALITTLESWAN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含美菱电器（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_meiling(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAMEILING, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含中兴通讯（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_zte(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(ECOMMERCEDATAZTE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含大唐电信（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_datang_telecom(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(ECOMMERCEDATADATANGTELECOM, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含波导股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_bird(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(ECOMMERCEDATABIRD, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含大华股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_dahua_technology(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(ECOMMERCEDATADAHUATECHNOLOGY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含同方股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_tsinghua_tongfang(indic_id: '', indic_name: '',
                                           begin_date: '', end_date: '',
                                           field: '')
        api_path = format(ECOMMERCEDATATSINGHUATONGFANG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含七喜控股（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年10月开始，数据频度为日度，按月更新。
      def ecommerce_data_hedy(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHEDY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含海天味业（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_haday(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHADAY, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含燕京啤酒（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_yanjing_beer(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAYANJINGBEER, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含麦趣尔（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年10月开始，数据频度为日度，按月更新。
      def ecommerce_data_maiquer(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAMAIQUER, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含中葡股份（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_citic_guoan_wine(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(ECOMMERCEDATACITICGUOANWINE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含青青稞酒（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年9月开始，数据频度为日度，按月更新。
      def ecommerce_data_qingqing_barley_wine(indic_id: '', indic_name: '',
                                              begin_date: '', end_date: '',
                                              field: '')
        api_path = format(ECOMMERCEDATAQINGQINGBARLEYWINE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含好想你（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_haoxiangni(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHAOXIANGNI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含涪陵榨菜（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_fuling_zhacai(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAFULINGZHACAI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含煌上煌（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_huangshanghuang(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(ECOMMERCEDATAHUANGSHANGHUANG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含海南椰岛（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_hainan_yedao(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHAINANYEDAO, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含双塔食品（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_shuangta_food(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATASHUANGTAFOOD, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含酒鬼酒（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_jiugui_liquor(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAJIUGUILIQUOR, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含黑芝麻（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_black_sesame(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATABLACKSESAME, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含今世缘（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_kings_luck(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAKINGSLUCK, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含老白干酒（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_laobaigan_liquor(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(ECOMMERCEDATALAOBAIGANLIQUOR, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含双汇发展（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档。历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_shuanghui_dvpt(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(ECOMMERCEDATASHUANGHUIDVPT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_wuliangye(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATAWULIANGYE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年11月开始，数据频度为日度，按月更新。
      def ecommerce_data_gree(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(ECOMMERCEDATAGREE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_hisense_electric(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(ECOMMERCEDATAHISENSEELECTRIC, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_hisense(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHISENSE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年9月开始，数据频度为日度，按月更新。
      def ecommerce_data_jiajia_food(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAJIAJIAFOOD, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_robam(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAROBAM, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_asd(indic_id: '', indic_name: '', begin_date: '',
                             end_date: '', field: '')
        api_path = format(ECOMMERCEDATAASD, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_macro(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAMACRO, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_elecpro(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAELECPRO, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年10月开始，数据频度为日度，按月更新。
      def ecommerce_data_sanglejin(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATASANGLEJIN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_homa(indic_id: '', indic_name: '', begin_date: '',
                              end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHOMA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_longda_meat(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATALONGDAMEAT, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_by_health(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATABYHEALTH, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_haixin(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHAIXIN, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_vanward(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAVANWARD, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_meida(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAMEIDA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年9月开始，数据频度为日度，按月更新。
      def ecommerce_data_hengshun_vinegarindustry(indic_id: '', indic_name: '',
                                                  begin_date: '', end_date: '',
                                                  field: '')
        api_path = format(ECOMMERCEDATAHENGSHUNVINEGARINDUSTRY, indic_id,
                          indic_name, begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年11月开始，数据频度为日度，按月更新。
      def ecommerce_data_shuijingfang(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATASHUIJINGFANG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年11月开始，数据频度为日度，按月更新。
      def ecommerce_data_chunlan(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATACHUNLAN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_yilite(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATAYILITE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_huangshi(indic_id: '', indic_name: '', begin_date: '',
                                  end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHUANGSHI, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_yanghe(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATAYANGHE, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_sanyuan(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATASANYUAN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_tuopai_shede(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATATUOPAISHEDE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_kuaijishan(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAKUAIJISHAN, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_tonghua(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATATONGHUA, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_kweichow_moutai_group(indic_id: '', indic_name: '',
                                               begin_date: '', end_date: '',
                                               field: '')
        api_path = format(ECOMMERCEDATAKWEICHOWMOUTAIGROUP, indic_id,
                          indic_name, begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_tsing_tao(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATATSINGTAO, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年11月开始，数据频度为日度，按月更新。
      def ecommerce_data_gujing(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATAGUJING, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_luzhou_laojiao(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(ECOMMERCEDATALUZHOULAOJIAO, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年8月开始，数据频度为日度，按月更新。
      def ecommerce_data_shanghai_maling(indic_id: '', indic_name: '',
                                         begin_date: '', end_date: '',
                                         field: '')
        api_path = format(ECOMMERCEDATASHANGHAIMALING, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_black_cattle_food(indic_id: '', indic_name: '',
                                           begin_date: '', end_date: '',
                                           field: '')
        api_path = format(ECOMMERCEDATABLACKCATTLEFOOD, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_delisi(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATADELISI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_star_lake_bioscience(indic_id: '', indic_name: '',
                                              begin_date: '', end_date: '',
                                              field: '')
        api_path = format(ECOMMERCEDATASTARLAKEBIOSCIENCE, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_jonjee_hi_tech(indic_id: '', indic_name: '',
                                        begin_date: '', end_date: '',
                                        field: '')
        api_path = format(ECOMMERCEDATAJONJEEHITECH, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年11月开始，数据频度为日度，按月更新。
      def ecommerce_data_cr_sanjiu(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATACRSANJIU, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年11月开始，数据频度为日度，按月更新。
      def ecommerce_data_jiuzhitang(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAJIUZHITANG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_fuanna(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATAFUANNA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_luolai(indic_id: '', indic_name: '', begin_date: '',
                                end_date: '', field: '')
        api_path = format(ECOMMERCEDATALUOLAI, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_guirenniao(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAGUIRENNIAO, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_baoxiniao(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATABAOXINIAO, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_laofengxiang(indic_id: '', indic_name: '',
                                      begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATALAOFENGXIANG, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_fiyta_a(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAFIYTAA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_goldleaf_jewelry(indic_id: '', indic_name: '',
                                          begin_date: '', end_date: '',
                                          field: '')
        api_path = format(ECOMMERCEDATAGOLDLEAFJEWELRY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_comix_group(indic_id: '', indic_name: '',
                                     begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATACOMIXGROUP, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_yaoji_playing_card(indic_id: '', indic_name: '',
                                            begin_date: '', end_date: '',
                                            field: '')
        api_path = format(ECOMMERCEDATAYAOJIPLAYINGCARD, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_mg_stationery(indic_id: '', indic_name: '',
                                       begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAMGSTATIONERY, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_cs(indic_id: '', indic_name: '', begin_date: '',
                            end_date: '', field: '')
        api_path = format(ECOMMERCEDATACS, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_edifier(indic_id: '', indic_name: '', begin_date: '',
                                 end_date: '', field: '')
        api_path = format(ECOMMERCEDATAEDIFIER, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_hik_vision(indic_id: '', indic_name: '',
                                    begin_date: '', end_date: '', field: '')
        api_path = format(ECOMMERCEDATAHIKVISION, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_solareast(indic_id: '', indic_name: '', begin_date: '',
                                   end_date: '', field: '')
        api_path = format(ECOMMERCEDATASOLAREAST, indic_id, indic_name,
                          begin_date, end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2014年12月开始，数据频度为日度，按月更新。
      def ecommerce_data_chigo(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATACHIGO, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end

      # 可包含（公司、业务、产品等维度）电商（淘宝及天猫）数据，具体指标可参见API文档；历史数据从2015年1月开始，数据频度为日度，按月更新。
      def ecommerce_data_aucma(indic_id: '', indic_name: '', begin_date: '',
                               end_date: '', field: '')
        api_path = format(ECOMMERCEDATAAUCMA, indic_id, indic_name, begin_date,
                          end_date, field)
        fetch_data api_path
      end
    end
  end
end
