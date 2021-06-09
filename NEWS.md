# RTL 0.1.7

## New

+ Added the following feeds to Morningstar API function `getPrice()`:
    + `AESO_ForecastAndActualPoolPrice`
    + Send email to pcote@ualberta.ca if you wish to add more feeds.
    
+ `expiry_table` updated for expiries + Yahoo Finance tickers to pull using `tidyquant::tq_get()` 

## Updates and Fixes

## Removed


# RTL 0.1.6

## New

+ Genscpae API interface added for `getGenscapeStorageOil()` and `getGenscapePipeOil()`.
+ Added the following feeds to Morningstar API function `getPrice()`:
    + `ERCOT_LmpsByResourceNodeAndElectricalBus`
    + `PJM_Rt_Hourly_Lmp`
    + Send email to pcote@ualberta.ca if you wish to add more feeds.

## Updates and Fixes

+ `chart_spreads` conversion armument now a vector allowing for different conversion e.g. crack spreads.
+ Updated `cancrudeassays` dataset. Removed AHS, WCB and SYN grades.
+ `chart_zscore()` amended. Output `stats` returns statistical tests and `res` fitted results.
+ `promptBeta()` removed output `stats`. 
+ Updated `usSwapIR`, `usSwapCurves` with rates as of `2020-12-31`.
+ `tradeCycle` table updated for Canadian crude oil 2021 calendar. Source: COLC.
+ `getPrice` fixed to return Settle instead of Open when `feed=CME_NymexOptions_EOD`.

## Removed

# RTL 0.1.5

## New

+ `chart_spreads()` to generate specific contract spreads across years e.g. ULSD March/April. Requires Morninstar credentials.

+ Morningstar feeds: 

    + CME_Comex_FuturesSettlement_EOD and CME_Comex_FuturesSettlement_EOD_continuous.
    + LME_AskBidPrices_Delayed.
    + SHFE_FuturesSettlement_RT.
    + EIA GIS data sets `ngpipelines`, `ngstorage`, `nghubs`, `lngterminals`.
    
## Updates and Fixes

+ `eia2tidy()` amended for quarterly and hourly data.
+ Morningstar tickers for `getPrice()` and `getPrices()` functions.
+ `promptBeta()` chart moved to `plotly`.

## Removed

# RTL 0.1.4

## New
+ `getCurve()` added to extract OHLC futures contract forward curves from `Morningstar`. 
+ `chart_eia_steo()` returns a Supply/Demand balance from the EIA STEO data set. Currently configured for Global Liquids and will be augmented for US Crude, Light and Middle Distillates.
+ `chart_eia_sd()` returns Supply/Demand balance from the EIA weekly data for mogas, distillates, jet and resids.
+ `tickers_eia` table updated to build Supply Demand Balances for US products.
+ Datasets `ref.opt.inputs` and `ref.opt.outputs` to support refinery LP optimization education using `lpSolve` package. 
+ `swapFutWeight()` returns the % applied to the first line contract in Calendar Month Average commodity swaps when two futures contracts are involved e.g. WTI. It uses the proper NYMEX or ICE holiday calendars and fit for purpose for building trading sheets.
+ `swapInfo()` returns all information required to price first line futures contract averaging swap or CMA physical trade, including a current month instrument with prior settlements.

## Updates and Fixes
+ `eia2tidy()` fix for key variable in function.
+ `crudes` dataset updated.

## Removed
 + `twtrump` and `twoott` tweets datasets for learning NLP.

# RTL 0.1.3

+ `eia2tidy()` removed dependency to `EIAdata` package.
+ `chart_pairs()` funtion added to render plotly pairs chart for time series.
+ Summarised statistics dataset `cancrudeassayssum ` for Canadian Crude assays.
+ Crude oil qualities dataset `crudes ` from crudemonitor.ca and BP Assays.
+ Sample GIS data sets for North American `refineries` and `crudepipelines`.
+ Added `eiaStocks` and `eiaStorageCap` data sets.
+ Upgrade for `dplyr 1.0.0`.
+ Sample data sets `dflong` and `dfwide` updated.
+ Added `crudeassaysXOM` as a list for complete public assays from ExxonMobil.
+ Added `planets` data for interest rate exercises.

# RTL 0.1.2

+ `expiry_table` fixed for 2021-2024 CME WTI Futures.
+ Added Morningstar `CME_NymexOptions_EOD` feed.

# RTL 0.1.1

+ RTL rebuilt to CRAN standards and published.

