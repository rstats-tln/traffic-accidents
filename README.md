# traffic-accidents

Road traffic accidents data from Estonia 2011-2019. 

## Data

File "Liiklusõnnetused 2011-2020.xlsx" was downloaded from <https://avaandmed.eesti.ee/datasets/inimkannatanutega-liiklusonnetuste-andmed> and 
preprocessed to data/liiklusonnetused.csv using scripts/import.R script.

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
