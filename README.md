# traffic-accidents

Road traffic accidents data from Estonia 2011-2019. 

## Data

File "Liiklusõnnetused 2011-2020.xlsx" was downloaded from <https://avaandmed.eesti.ee/datasets/inimkannatanutega-liiklusonnetuste-andmed> and 
preprocessed to data/liiklusonnetused.csv using scripts/import.R script.

```r
> library(readr); library(here)
> onnetused <- read_csv(here("data/liiklusonnetused.csv"))
> onnetused
# A tibble: 12,632 x 55
   juhtumi_nr  ühissõidukijuhi_os… valgustus_1 valgustus_2       veoautojuhi_osal… tüüpskeemi_nr
   <chr>                     <dbl> <chr>       <chr>                         <dbl>         <dbl>
 1 2000140000…                   1 Valge aeg   Valge aeg                         0           104
 2 2000140000…                   0 Valge aeg   Valge aeg                         0           401
 3 2000140000…                   1 Valge aeg   Valge aeg                         0           207
 4 2000140000…                   0 Pimeda aeg  Pimeda ajal valg…                 0           606
 5 2000150000…                   0 Valge aeg   Valge aeg                         0           505
 6 2210140000…                   0 Valge aeg   Valge aeg                         0           501
 7 2210140001…                   0 Valge aeg   Valge aeg                         0           601
 8 2210140002…                   1 Pimeda aeg  Pimeda ajal valg…                 0           998
 9 2230130056…                   0 Valge aeg   Valge aeg                         0           103
10 2230140009…                   1 Valge aeg   Valge aeg                         0           906
# … with 12,622 more rows, and 49 more variables: tüüpskeem_1 <chr>, tüüpskeem_2 <chr>,
#   tänav_(ppa) <chr>, turvavarustust_mitte_kasutanud_isiku_osalusel <dbl>,
#   teekatte_seisund_1 <chr>, teekatte_seisund_2 <chr>,
#   maastikusõiduki_juhi_osalusel...13 <dbl>, teekate <chr>, tee_tüüp_1 <chr>,
#   tee_tüüp_2 <chr>, tee_seisund <chr>, tee_tasasus <chr>, maja_nr_(ppa) <chr>,
#   tee_element_1 <chr>, tee_element_2...21 <chr>, mootorratturi_osalusel <dbl>,
#   mootorsõidukijuhi_osalusel <dbl>, mopeedijuhi_osalusel <dbl>, omavalitsus_(ppa) <chr>,
#   ristuv_tänav_(ppa) <chr>, sõiduautojuhi_osalusel <dbl>, asula <chr>,
#   maastikusõiduki_juhi_osalusel...29 <dbl>, alaealise_osalusel <dbl>, maakond_(ppa) <chr>,
#   bussijuhi_osalusel <dbl>, eaka_(65+)_mootorsõidukijuhi_osalusel <dbl>,
#   esmase_juhiloa_omaniku_osalusel <dbl>, asustus_(ppa) <chr>, aadress_(ppa) <chr>,
#   gps_x <dbl>, gps_y <dbl>, kurvilisus <chr>, ilmastik_1 <chr>, ilmastik_2 <chr>,
#   liiklusõnnetuse_liik_1 <chr>, liiklusõnnetuse_liik_2 <chr>, lat <dbl>,
#   jalakäija_osalusel <dbl>, kaasreisija_osalusel <dbl>, jalgratturi_osalusel <dbl>,
#   lon <dbl>, liiklusõnnetuse_liik_3 <chr>, tee_element_2...50 <chr>, toimumisaeg <chr>,
#   hukkunuid <dbl>, isikuid <dbl>, sõidukeid <dbl>, vigastatuid <dbl>

```

Variables

 [1] "juhtumi_nr" -- case number                                
 [2] "ühissõidukijuhi_osalusel" -- involving a public transport              
 [3] "valgustus_1" -- daylight and street light cond. 1                               
 [4] "valgustus_2" -- daylight and street light cond. 2                                
 [5] "veoautojuhi_osalusel" -- involving a lorry                        
 [6] "tüüpskeemi_nr"  -- schema nr                              
 [7] "tüüpskeem_1"  -- schema 1                                
 [8] "tüüpskeem_2"  -- schema 2                                  
 [9] "tänav_(ppa)" -- street                                 
[10] "turvavarustust_mitte_kasutanud_isiku_osalusel" -- safety belt was not used
[11] "teekatte_seisund_1" -- road surface cond. 1                          
[12] "teekatte_seisund_2" -- road surface cond. 2                          
[13] "maastikusõiduki_juhi_osalusel...13" -- involved a off-road vechicle           
[14] "teekate" -- surface                                     
[15] "tee_tüüp_1" -- road type 1                                   
[16] "tee_tüüp_2" -- road type 2                                  
[17] "tee_seisund" -- road condition                              
[18] "tee_tasasus" -- gradient                                
[19] "maja_nr_(ppa)" -- house nr                              
[20] "tee_element_1"  -- road element                              
[21] "tee_element_2...21"                           
[22] "mootorratturi_osalusel" -- involved a motorbiker                      
[23] "mootorsõidukijuhi_osalusel" -- involved a driver                  
[24] "mopeedijuhi_osalusel" -- invovlved a moped                        
[25] "omavalitsus_(ppa)"  -- municipality                          
[26] "ristuv_tänav_(ppa)" -- crossing street                          
[27] "sõiduautojuhi_osalusel" -- involved a passenger car                      
[28] "asula"  -- city                                      
[29] "maastikusõiduki_juhi_osalusel...29"  -- involved a off-road driver         
[30] "alaealise_osalusel" -- involved a minor                          
[31] "maakond_(ppa)"  -- county                              
[32] "bussijuhi_osalusel" -- involved a buss driver                          
[33] "eaka_(65+)_mootorsõidukijuhi_osalusel"  -- involved an old driver      
[34] "esmase_juhiloa_omaniku_osalusel"  -- involved inexperienced driver            
[35] "asustus_(ppa)" -- settelment                             
[36] "aadress_(ppa)"  -- address                              
[37] "gps_x"                                        
[38] "gps_y"                                        
[39] "kurvilisus" -- curved road                                  
[40] "ilmastik_1" -- weather 1                                  
[41] "ilmastik_2" -- weather 2                                  
[42] "liiklusõnnetuse_liik_1" -- accident type 1                      
[43] "liiklusõnnetuse_liik_2" -- accident type 2                      
[44] "lat"                                          
[45] "jalakäija_osalusel" -- involved a pedestrian                          
[46] "kaasreisija_osalusel" -- involved a passenger                        
[47] "jalgratturi_osalusel" -- involved a cyclist                        
[48] "lon"                                          
[49] "liiklusõnnetuse_liik_3"  -- accident type 3                      
[50] "tee_element_2...50"  -- road element                         
[51] "toimumisaeg"  -- accident time                                
[52] "hukkunuid"  -- casualites                                  
[53] "isikuid" -- persons involved                                      
[54] "sõidukeid" -- nr of vechicles involved                                    
[55] "vigastatuid" -- nr of injured
