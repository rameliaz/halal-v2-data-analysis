
# Importing script (from Sosci Survey) ------------------------------------


# This script reads a CSV file in GNU R.
# While reading this file, comments will be created for all variables.
# The comments for values will be stored as attributes (attr) as well.

ds_file = file.choose()
# setwd("./")
# ds_file = "rdata_halalcoo_2019-03-04_12-37.csv"

ds = read.table(
  file=ds_file, encoding="UTF-8",
  header = FALSE, sep = "\t", quote = "\"",
  dec = ".", row.names = "CASE",
  col.names = c(
    "CASE","SERIAL","REF","QUESTNNR","MODE","STARTED","IL03","DM01","DM02_01",
    "DM03_01","DM04","DM05","DM07_01","DM08","DM09_01","PC01_01","PC02_01",
    "PC03_01","PC04_01","PC05_01","PC06_01","PC07_01","PC08_01","PC09_01","PC10_01",
    "PC11_01","PC12_01","PC13_01","PC14_01","PC15_01","PC16_01","PC17_01","PC18_01",
    "PC19_01","PC20_01","PC21_01","PC22_01","PC23_01","PC24_01","PC25_01","PC26_01",
    "PC27_01","PC28_01","PC29_01","PC30_01","PC31_01","PC32_01","PC33_01","PC34_01",
    "PC35_01","PC36_01","PC37_01","PC38_01","PC39_01","PC40_01","PC41_01","PC42_01",
    "PC43_01","PC44_01","PC45_01","PC46_01","PC47_01","PC48_01","RM01_01","SK07_01",
    "SK07_02","SK07_03","SK07_04","SK07_05","SK07_06","SK07_07","SK07_08","SK07_09",
    "SK07_10","SK07_11","SK07_12","SK07_13","SK07_14","SK07_15","SK08_01","SK08_02",
    "SK08_03","SK08_04","SK08_05","SK09_01","SK09_02","SK09_03","SK09_04","SK09_05",
    "SK09_06","SK09_07","SK09_08","SK09_09","SK09_10","SK09_11","SK09_12","SK09_13",
    "SK09_14","SK09_15","SK09_16","TIME001","TIME002","TIME003","TIME004","TIME006",
    "TIME007","TIME008","TIME009","TIME010","TIME011","TIME012","TIME013","TIME014",
    "TIME015","TIME016","TIME_SUM","MAILSENT","LASTDATA","FINISHED","Q_VIEWER",
    "LASTPAGE","MAXPAGE","MISSING","MISSREL","TIME_RSI","DEG_TIME"
  ),
  as.is = TRUE,
  colClasses = c(
    CASE="numeric", SERIAL="character", REF="character", QUESTNNR="character",
    MODE="character", STARTED="POSIXct", IL03="numeric", DM01="numeric",
    DM02_01="numeric", DM03_01="character", DM04="numeric", DM05="numeric",
    DM07_01="character", DM08="numeric", DM09_01="character", PC01_01="numeric",
    PC02_01="numeric", PC03_01="numeric", PC04_01="numeric", PC05_01="numeric",
    PC06_01="numeric", PC07_01="numeric", PC08_01="numeric", PC09_01="numeric",
    PC10_01="numeric", PC11_01="numeric", PC12_01="numeric", PC13_01="numeric",
    PC14_01="numeric", PC15_01="numeric", PC16_01="numeric", PC17_01="numeric",
    PC18_01="numeric", PC19_01="numeric", PC20_01="numeric", PC21_01="numeric",
    PC22_01="numeric", PC23_01="numeric", PC24_01="numeric", PC25_01="numeric",
    PC26_01="numeric", PC27_01="numeric", PC28_01="numeric", PC29_01="numeric",
    PC30_01="numeric", PC31_01="numeric", PC32_01="numeric", PC33_01="numeric",
    PC34_01="numeric", PC35_01="numeric", PC36_01="numeric", PC37_01="numeric",
    PC38_01="numeric", PC39_01="numeric", PC40_01="numeric", PC41_01="numeric",
    PC42_01="numeric", PC43_01="numeric", PC44_01="numeric", PC45_01="numeric",
    PC46_01="numeric", PC47_01="numeric", PC48_01="numeric",
    RM01_01="character", SK07_01="numeric", SK07_02="numeric",
    SK07_03="numeric", SK07_04="numeric", SK07_05="numeric", SK07_06="numeric",
    SK07_07="numeric", SK07_08="numeric", SK07_09="numeric", SK07_10="numeric",
    SK07_11="numeric", SK07_12="numeric", SK07_13="numeric", SK07_14="numeric",
    SK07_15="numeric", SK08_01="numeric", SK08_02="numeric", SK08_03="numeric",
    SK08_04="numeric", SK08_05="numeric", SK09_01="numeric", SK09_02="numeric",
    SK09_03="numeric", SK09_04="numeric", SK09_05="numeric", SK09_06="numeric",
    SK09_07="numeric", SK09_08="numeric", SK09_09="numeric", SK09_10="numeric",
    SK09_11="numeric", SK09_12="numeric", SK09_13="numeric", SK09_14="numeric",
    SK09_15="numeric", SK09_16="numeric", TIME001="integer", TIME002="integer",
    TIME003="integer", TIME004="integer", TIME006="integer", TIME007="integer",
    TIME008="integer", TIME009="integer", TIME010="integer", TIME011="integer",
    TIME012="integer", TIME013="integer", TIME014="integer", TIME015="integer",
    TIME016="integer", TIME_SUM="integer", MAILSENT="POSIXct",
    LASTDATA="POSIXct", FINISHED="logical", Q_VIEWER="logical",
    LASTPAGE="numeric", MAXPAGE="numeric", MISSING="numeric", MISSREL="numeric",
    TIME_RSI="numeric", DEG_TIME="numeric"
  ),
  skip = 1,
  check.names = TRUE, fill = TRUE,
  strip.white = FALSE, blank.lines.skip = TRUE,
  comment.char = "",
  na.strings = ""
)

rm(ds_file)

attr(ds, "project") = "halalcoo"
attr(ds, "description") = "Halal"
attr(ds, "date") = "2019-03-04 12:37:47"
attr(ds, "server") = "https://www.soscisurvey.de"

# Variable und Value Labels
ds$IL03 = factor(ds$IL03, levels=c("1","2","-9"), labels=c("Ya, saya bersedia berpartisipasi","Tidak, saya tidak bersedia berpartisipasi","[NA] Not answered"), ordered=FALSE)
ds$DM01 = factor(ds$DM01, levels=c("1","2","-9"), labels=c("Male","Female","[NA] Not answered"), ordered=FALSE)
ds$DM04 = factor(ds$DM04, levels=c("1","2","-9"), labels=c("Kognisi Sosial","Bukan peserta MK Kognisi Sosial","[NA] Not answered"), ordered=FALSE)
ds$DM05 = factor(ds$DM05, levels=c("1","2","3","4","5","-9"), labels=c("A-1","B-1","C-1","D-1","DD","[NA] Not answered"), ordered=FALSE)
ds$DM08 = factor(ds$DM08, levels=c("1","2","-9"), labels=c("Muslim","Non-Muslim","[NA] Not answered"), ordered=FALSE)
attr(ds$PC01_01,"1") = "Does not look tasty at all"
attr(ds$PC01_01,"101") = "Looks very tasty"
attr(ds$PC02_01,"1") = "Does not look tasty at all"
attr(ds$PC02_01,"101") = "Looks very tasty"
attr(ds$PC03_01,"1") = "Does not look tasty at all"
attr(ds$PC03_01,"101") = "Looks very tasty"
attr(ds$PC04_01,"1") = "Does not look tasty at all"
attr(ds$PC04_01,"101") = "Looks very tasty"
attr(ds$PC05_01,"1") = "Does not look tasty at all"
attr(ds$PC05_01,"101") = "Looks very tasty"
attr(ds$PC06_01,"1") = "Does not look tasty at all"
attr(ds$PC06_01,"101") = "Looks very tasty"
attr(ds$PC07_01,"1") = "Does not look tasty at all"
attr(ds$PC07_01,"101") = "Looks very tasty"
attr(ds$PC08_01,"1") = "Does not look tasty at all"
attr(ds$PC08_01,"101") = "Looks very tasty"
attr(ds$PC09_01,"1") = "Does not look healthy at all"
attr(ds$PC09_01,"101") = "Looks very healthy"
attr(ds$PC10_01,"1") = "Does not look healthy at all"
attr(ds$PC10_01,"101") = "Looks very healthy"
attr(ds$PC11_01,"1") = "Does not look healthy at all"
attr(ds$PC11_01,"101") = "Looks very healthy"
attr(ds$PC12_01,"1") = "Does not look healthy at all"
attr(ds$PC12_01,"101") = "Looks very healthy"
attr(ds$PC13_01,"1") = "Does not look healthy at all"
attr(ds$PC13_01,"101") = "Looks very healthy"
attr(ds$PC14_01,"1") = "Does not look healthy at all"
attr(ds$PC14_01,"101") = "Looks very healthy"
attr(ds$PC15_01,"1") = "Does not look healthy at all"
attr(ds$PC15_01,"101") = "Looks very healthy"
attr(ds$PC16_01,"1") = "Does not look healthy at all"
attr(ds$PC16_01,"101") = "Looks very healthy"
attr(ds$PC17_01,"1") = "Does not look like a high-quality product"
attr(ds$PC17_01,"101") = "Looks like a high-quality product"
attr(ds$PC18_01,"1") = "Does not look like a high-quality product"
attr(ds$PC18_01,"101") = "Looks like a high-quality product"
attr(ds$PC19_01,"1") = "Does not look like a high-quality product"
attr(ds$PC19_01,"101") = "Looks like a high-quality product"
attr(ds$PC20_01,"1") = "Does not look like a high-quality product"
attr(ds$PC20_01,"101") = "Looks like a high-quality product"
attr(ds$PC21_01,"1") = "Does not look like a high-quality product"
attr(ds$PC21_01,"101") = "Looks like a high-quality product"
attr(ds$PC22_01,"1") = "Does not look like a high-quality product"
attr(ds$PC22_01,"101") = "Looks like a high-quality product"
attr(ds$PC23_01,"1") = "Does not look like a high-quality product"
attr(ds$PC23_01,"101") = "Looks like a high-quality product"
attr(ds$PC24_01,"1") = "Does not look like a high-quality product"
attr(ds$PC24_01,"101") = "Looks like a high-quality product"
attr(ds$PC25_01,"1") = "Don't want to try it at all"
attr(ds$PC25_01,"101") = "Really want to try"
attr(ds$PC26_01,"1") = "Don't want to try it at all"
attr(ds$PC26_01,"101") = "Really want to try"
attr(ds$PC27_01,"1") = "Don't want to try it at all"
attr(ds$PC27_01,"101") = "Really want to try"
attr(ds$PC28_01,"1") = "Don't want to try it at all"
attr(ds$PC28_01,"101") = "Really want to try"
attr(ds$PC29_01,"1") = "Don't want to try it at all"
attr(ds$PC29_01,"101") = "Really want to try"
attr(ds$PC30_01,"1") = "Don't want to try it at all"
attr(ds$PC30_01,"101") = "Really want to try"
attr(ds$PC31_01,"1") = "Don't want to try it at all"
attr(ds$PC31_01,"101") = "Really want to try"
attr(ds$PC32_01,"1") = "Don't want to try it at all"
attr(ds$PC32_01,"101") = "Really want to try"
attr(ds$PC33_01,"1") = "Don't want to buy the product at all"
attr(ds$PC33_01,"101") = "Really want to buy the product"
attr(ds$PC34_01,"1") = "Don't want to buy the product at all"
attr(ds$PC34_01,"101") = "Really want to buy the product"
attr(ds$PC35_01,"1") = "Don't want to buy the product at all"
attr(ds$PC35_01,"101") = "Really want to buy the product"
attr(ds$PC36_01,"1") = "Don't want to buy the product at all"
attr(ds$PC36_01,"101") = "Really want to buy the product"
attr(ds$PC37_01,"1") = "Don't want to buy the product at all"
attr(ds$PC37_01,"101") = "Really want to buy the product"
attr(ds$PC38_01,"1") = "Don't want to buy the product at all"
attr(ds$PC38_01,"101") = "Really want to buy the product"
attr(ds$PC39_01,"1") = "Don't want to buy the product at all"
attr(ds$PC39_01,"101") = "Really want to buy the product"
attr(ds$PC40_01,"1") = "Don't want to buy the product at all"
attr(ds$PC40_01,"101") = "Really want to buy the product"
attr(ds$PC41_01,"1") = "Absolutely not"
attr(ds$PC41_01,"101") = "Absolutely yes"
attr(ds$PC42_01,"1") = "Absolutely not"
attr(ds$PC42_01,"101") = "Absolutely yes"
attr(ds$PC43_01,"1") = "Absolutely not"
attr(ds$PC43_01,"101") = "Absolutely yes"
attr(ds$PC44_01,"1") = "Absolutely not"
attr(ds$PC44_01,"101") = "Absolutely yes"
attr(ds$PC45_01,"1") = "Absolutely not"
attr(ds$PC45_01,"101") = "Absolutely yes"
attr(ds$PC46_01,"1") = "Absolutely not"
attr(ds$PC46_01,"101") = "Absolutely yes"
attr(ds$PC47_01,"1") = "Absolutely not"
attr(ds$PC47_01,"101") = "Absolutely yes"
attr(ds$PC48_01,"1") = "Absolutely not"
attr(ds$PC48_01,"101") = "Absolutely yes"
attr(ds$SK07_01,"1") = "Strongly disagree"
attr(ds$SK07_01,"2") = "Disagree"
attr(ds$SK07_01,"3") = "Agree"
attr(ds$SK07_01,"4") = "Strongly agree"
attr(ds$SK07_02,"1") = "Strongly disagree"
attr(ds$SK07_02,"2") = "Disagree"
attr(ds$SK07_02,"3") = "Agree"
attr(ds$SK07_02,"4") = "Strongly agree"
attr(ds$SK07_03,"1") = "Strongly disagree"
attr(ds$SK07_03,"2") = "Disagree"
attr(ds$SK07_03,"3") = "Agree"
attr(ds$SK07_03,"4") = "Strongly agree"
attr(ds$SK07_04,"1") = "Strongly disagree"
attr(ds$SK07_04,"2") = "Disagree"
attr(ds$SK07_04,"3") = "Agree"
attr(ds$SK07_04,"4") = "Strongly agree"
attr(ds$SK07_05,"1") = "Strongly disagree"
attr(ds$SK07_05,"2") = "Disagree"
attr(ds$SK07_05,"3") = "Agree"
attr(ds$SK07_05,"4") = "Strongly agree"
attr(ds$SK07_06,"1") = "Strongly disagree"
attr(ds$SK07_06,"2") = "Disagree"
attr(ds$SK07_06,"3") = "Agree"
attr(ds$SK07_06,"4") = "Strongly agree"
attr(ds$SK07_07,"1") = "Strongly disagree"
attr(ds$SK07_07,"2") = "Disagree"
attr(ds$SK07_07,"3") = "Agree"
attr(ds$SK07_07,"4") = "Strongly agree"
attr(ds$SK07_08,"1") = "Strongly disagree"
attr(ds$SK07_08,"2") = "Disagree"
attr(ds$SK07_08,"3") = "Agree"
attr(ds$SK07_08,"4") = "Strongly agree"
attr(ds$SK07_09,"1") = "Strongly disagree"
attr(ds$SK07_09,"2") = "Disagree"
attr(ds$SK07_09,"3") = "Agree"
attr(ds$SK07_09,"4") = "Strongly agree"
attr(ds$SK07_10,"1") = "Strongly disagree"
attr(ds$SK07_10,"2") = "Disagree"
attr(ds$SK07_10,"3") = "Agree"
attr(ds$SK07_10,"4") = "Strongly agree"
attr(ds$SK07_11,"1") = "Strongly disagree"
attr(ds$SK07_11,"2") = "Disagree"
attr(ds$SK07_11,"3") = "Agree"
attr(ds$SK07_11,"4") = "Strongly agree"
attr(ds$SK07_12,"1") = "Strongly disagree"
attr(ds$SK07_12,"2") = "Disagree"
attr(ds$SK07_12,"3") = "Agree"
attr(ds$SK07_12,"4") = "Strongly agree"
attr(ds$SK07_13,"1") = "Strongly disagree"
attr(ds$SK07_13,"2") = "Disagree"
attr(ds$SK07_13,"3") = "Agree"
attr(ds$SK07_13,"4") = "Strongly agree"
attr(ds$SK07_14,"1") = "Strongly disagree"
attr(ds$SK07_14,"2") = "Disagree"
attr(ds$SK07_14,"3") = "Agree"
attr(ds$SK07_14,"4") = "Strongly agree"
attr(ds$SK07_15,"1") = "Strongly disagree"
attr(ds$SK07_15,"2") = "Disagree"
attr(ds$SK07_15,"3") = "Agree"
attr(ds$SK07_15,"4") = "Strongly agree"
attr(ds$SK08_01,"1") = "Strongly disagree"
attr(ds$SK08_01,"2") = "Disagree"
attr(ds$SK08_01,"3") = "Agree"
attr(ds$SK08_01,"4") = "Strongly agree"
attr(ds$SK08_02,"1") = "Strongly disagree"
attr(ds$SK08_02,"2") = "Disagree"
attr(ds$SK08_02,"3") = "Agree"
attr(ds$SK08_02,"4") = "Strongly agree"
attr(ds$SK08_03,"1") = "Strongly disagree"
attr(ds$SK08_03,"2") = "Disagree"
attr(ds$SK08_03,"3") = "Agree"
attr(ds$SK08_03,"4") = "Strongly agree"
attr(ds$SK08_04,"1") = "Strongly disagree"
attr(ds$SK08_04,"2") = "Disagree"
attr(ds$SK08_04,"3") = "Agree"
attr(ds$SK08_04,"4") = "Strongly agree"
attr(ds$SK08_05,"1") = "Strongly disagree"
attr(ds$SK08_05,"2") = "Disagree"
attr(ds$SK08_05,"3") = "Agree"
attr(ds$SK08_05,"4") = "Strongly agree"
attr(ds$SK09_01,"1") = "Strongly disagree"
attr(ds$SK09_01,"2") = "Disagree"
attr(ds$SK09_01,"3") = "Agree"
attr(ds$SK09_01,"4") = "Strongly agree"
attr(ds$SK09_02,"1") = "Strongly disagree"
attr(ds$SK09_02,"2") = "Disagree"
attr(ds$SK09_02,"3") = "Agree"
attr(ds$SK09_02,"4") = "Strongly agree"
attr(ds$SK09_03,"1") = "Strongly disagree"
attr(ds$SK09_03,"2") = "Disagree"
attr(ds$SK09_03,"3") = "Agree"
attr(ds$SK09_03,"4") = "Strongly agree"
attr(ds$SK09_04,"1") = "Strongly disagree"
attr(ds$SK09_04,"2") = "Disagree"
attr(ds$SK09_04,"3") = "Agree"
attr(ds$SK09_04,"4") = "Strongly agree"
attr(ds$SK09_05,"1") = "Strongly disagree"
attr(ds$SK09_05,"2") = "Disagree"
attr(ds$SK09_05,"3") = "Agree"
attr(ds$SK09_05,"4") = "Strongly agree"
attr(ds$SK09_06,"1") = "Strongly disagree"
attr(ds$SK09_06,"2") = "Disagree"
attr(ds$SK09_06,"3") = "Agree"
attr(ds$SK09_06,"4") = "Strongly agree"
attr(ds$SK09_07,"1") = "Strongly disagree"
attr(ds$SK09_07,"2") = "Disagree"
attr(ds$SK09_07,"3") = "Agree"
attr(ds$SK09_07,"4") = "Strongly agree"
attr(ds$SK09_08,"1") = "Strongly disagree"
attr(ds$SK09_08,"2") = "Disagree"
attr(ds$SK09_08,"3") = "Agree"
attr(ds$SK09_08,"4") = "Strongly agree"
attr(ds$SK09_09,"1") = "Strongly disagree"
attr(ds$SK09_09,"2") = "Disagree"
attr(ds$SK09_09,"3") = "Agree"
attr(ds$SK09_09,"4") = "Strongly agree"
attr(ds$SK09_10,"1") = "Strongly disagree"
attr(ds$SK09_10,"2") = "Disagree"
attr(ds$SK09_10,"3") = "Agree"
attr(ds$SK09_10,"4") = "Strongly agree"
attr(ds$SK09_11,"1") = "Strongly disagree"
attr(ds$SK09_11,"2") = "Disagree"
attr(ds$SK09_11,"3") = "Agree"
attr(ds$SK09_11,"4") = "Strongly agree"
attr(ds$SK09_12,"1") = "Strongly disagree"
attr(ds$SK09_12,"2") = "Disagree"
attr(ds$SK09_12,"3") = "Agree"
attr(ds$SK09_12,"4") = "Strongly agree"
attr(ds$SK09_13,"1") = "Strongly disagree"
attr(ds$SK09_13,"2") = "Disagree"
attr(ds$SK09_13,"3") = "Agree"
attr(ds$SK09_13,"4") = "Strongly agree"
attr(ds$SK09_14,"1") = "Strongly disagree"
attr(ds$SK09_14,"2") = "Disagree"
attr(ds$SK09_14,"3") = "Agree"
attr(ds$SK09_14,"4") = "Strongly agree"
attr(ds$SK09_15,"1") = "Strongly disagree"
attr(ds$SK09_15,"2") = "Disagree"
attr(ds$SK09_15,"3") = "Agree"
attr(ds$SK09_15,"4") = "Strongly agree"
attr(ds$SK09_16,"1") = "Strongly disagree"
attr(ds$SK09_16,"2") = "Disagree"
attr(ds$SK09_16,"3") = "Agree"
attr(ds$SK09_16,"4") = "Strongly agree"
attr(ds$FINISHED,"F") = "Canceled"
attr(ds$FINISHED,"T") = "Finished"
attr(ds$Q_VIEWER,"F") = "Respondent"
attr(ds$Q_VIEWER,"T") = "Spectator"
comment(ds$SERIAL) = "Serial number (if provided)"
comment(ds$REF) = "Reference (if provided in link)"
comment(ds$QUESTNNR) = "Questionnaire that has been used in the interview"
comment(ds$MODE) = "Interview mode"
comment(ds$STARTED) = "Time the interview has started"
comment(ds$IL03) = "Kesediaan Berpartisipasi"
comment(ds$DM01) = "Gender"
comment(ds$DM02_01) = "Age: I'm ... years old"
comment(ds$DM03_01) = "SES: My average household income is ... millions rupiah"
comment(ds$DM04) = "Mata Kuliah"
comment(ds$DM05) = "MK Kogsos"
comment(ds$DM07_01) = "NIM: [01]"
comment(ds$DM08) = "Religion"
comment(ds$DM09_01) = "Nomor Ponsel: [01]"
comment(ds$PC01_01) = "Taste Beverage Turkey Halal"
comment(ds$PC02_01) = "Taste Beverage Turkey non-Halal"
comment(ds$PC03_01) = "Taste Beverage English Halal"
comment(ds$PC04_01) = "Taste Beverage English Non-Halal"
comment(ds$PC05_01) = "Taste Cake Turkey Halal"
comment(ds$PC06_01) = "Taste Cake Turkey Non-Halal"
comment(ds$PC07_01) = "Taste Cake English Halal"
comment(ds$PC08_01) = "Taste Cake English Non-Halal"
comment(ds$PC09_01) = "Healthy Beverage Turkey Halal"
comment(ds$PC10_01) = "Healthy Beverage Turkey Non-Halal"
comment(ds$PC11_01) = "Healthy Beverage English Halal"
comment(ds$PC12_01) = "Healthy Beverage English Non-Halal"
comment(ds$PC13_01) = "Healthy Cake Turkey Halal"
comment(ds$PC14_01) = "Healthy Cake Turkey Non-Halal"
comment(ds$PC15_01) = "Healthy Cake English Halal"
comment(ds$PC16_01) = "Healthy Cake English Non-Halal"
comment(ds$PC17_01) = "Quality Beverage Turkey Halal"
comment(ds$PC18_01) = "Quality Beverage Turkey Non-Halal"
comment(ds$PC19_01) = "Quality Beverage English Halal"
comment(ds$PC20_01) = "Quality Beverage English Non-Halal"
comment(ds$PC21_01) = "Quality Cake Turkey Halal"
comment(ds$PC22_01) = "Quality Cake Turkey Non-Halal"
comment(ds$PC23_01) = "Quality Cake English Halal"
comment(ds$PC24_01) = "Quality Cake English Non-Halal"
comment(ds$PC25_01) = "Willingness to try Beverage Turkey Halal"
comment(ds$PC26_01) = "Willingness to try Beverage Turkey Non-Halal"
comment(ds$PC27_01) = "Willingness to try Beverage English Halal"
comment(ds$PC28_01) = "Willingness to try Beverage English Non-Halal"
comment(ds$PC29_01) = "Willingness to try Cake Turkey Halal"
comment(ds$PC30_01) = "Willingness to try Cake Turkey Non-Halal"
comment(ds$PC31_01) = "Willingness to try Cake English Halal"
comment(ds$PC32_01) = "Willingness to try Cake English Non-Halal"
comment(ds$PC33_01) = "Willingness to buy Beverage Turkey Halal"
comment(ds$PC34_01) = "Willingness to buy Beverage Turkey Non-Halal"
comment(ds$PC35_01) = "Willingness to buy Beverage English Halal"
comment(ds$PC36_01) = "Willingness to buy Beverage English Non-Halal"
comment(ds$PC37_01) = "Willingness to buy Cake Turkey Halal"
comment(ds$PC38_01) = "Willingness to buy Cake Turkey Non-Halal"
comment(ds$PC39_01) = "Willingness to buy Cake English Halal"
comment(ds$PC40_01) = "Willingness to buy Cake English Non-Halal"
comment(ds$PC41_01) = "Entering the market Beverage Turkey Halal"
comment(ds$PC42_01) = "Entering the market Beverage Turkey Non-Halal"
comment(ds$PC43_01) = "Entering the market Beverage English Halal"
comment(ds$PC44_01) = "Entering the market Beverage English Non-Halal"
comment(ds$PC45_01) = "Entering the market Cake Turkey Halal"
comment(ds$PC46_01) = "Entering the market Cake Turkey Non-Halal"
comment(ds$PC47_01) = "Entering the market Cake English Halal"
comment(ds$PC48_01) = "Entering the market Cake English Non-Halal"
comment(ds$RM01_01) = "IV: experimental group (1=English-Halal, 2=English Non-Halal, 3=Turkey-Halal, 4=Turkey Non-Halal)"
comment(ds$SK07_01) = "Need for Cognitive Closure: 1.	I don't like situations that are uncertain."
comment(ds$SK07_02) = "Need for Cognitive Closure: 2.	I dislike questions which could be answered in many different ways."
comment(ds$SK07_03) = "Need for Cognitive Closure: 3.	I find that a well-ordered life with regular hours suits my temperament."
comment(ds$SK07_04) = "Need for Cognitive Closure: 4.	I feel uncomfortable when I don't understand the reason why an event occurred in my life."
comment(ds$SK07_05) = "Need for Cognitive Closure: 5.	I feel irritated when one person disagrees with what everyone else in a group believes."
comment(ds$SK07_06) = "Need for Cognitive Closure: 6.	I don't like to go into a situation without knowing what I can expect from it."
comment(ds$SK07_07) = "Need for Cognitive Closure: 7.	When I have made a decision, I feel relieved."
comment(ds$SK07_08) = "Need for Cognitive Closure: 8.	When I am confronted with a problem, I’m dying to reach a solution very quickly."
comment(ds$SK07_09) = "Need for Cognitive Closure: 9.	I would quickly become impatient and irritated if I would not find a solution to a problem immediately."
comment(ds$SK07_10) = "Need for Cognitive Closure: 10.	I don't like to be with people who are capable of unexpected actions."
comment(ds$SK07_11) = "Need for Cognitive Closure: 11.	I dislike it when a person's statement could mean many different things."
comment(ds$SK07_12) = "Need for Cognitive Closure: 12.	I find that establishing a consistent routine enables me to enjoy life more."
comment(ds$SK07_13) = "Need for Cognitive Closure: 13.	I enjoy having a clear and structured mode of life."
comment(ds$SK07_14) = "Need for Cognitive Closure: 14.	I do not usually consult many different opinions before forming my own view."
comment(ds$SK07_15) = "Need for Cognitive Closure: 15.	I dislike unpredictable situations."
comment(ds$SK08_01) = "Collective Narcissism Scale: 1.	Muslims deserve special treatment."
comment(ds$SK08_02) = "Collective Narcissism Scale: 2.	It really makes me angry when others criticize Muslims."
comment(ds$SK08_03) = "Collective Narcissism Scale: 3.	If Muslims had a major say in the world, the world would be a much better place."
comment(ds$SK08_04) = "Collective Narcissism Scale: 4.	Not many people seem to fully understand the importance of Muslims."
comment(ds$SK08_05) = "Collective Narcissism Scale: 5.	I will never be satisfied until Muslims get the recognition they deserve."
comment(ds$SK09_01) = "Religious Zeal: I am confident in my religious beliefs."
comment(ds$SK09_02) = "Religious Zeal: I aspire to live and act according to my religious beliefs."
comment(ds$SK09_03) = "Religious Zeal: My religious beliefs are grounded in objective truth."
comment(ds$SK09_04) = "Religious Zeal: Most people would agree with my religious belief system if they took the time to understand it rather than just relying on stereotypes about it."
comment(ds$SK09_05) = "Religious Zeal: If my religious beliefs were being publicly criticized I would argue to defend them."
comment(ds$SK09_06) = "Religious Zeal: I would support a war that defended my religious beliefs."
comment(ds$SK09_07) = "Religious Zeal: If I really had to, I would give my life for my religious beliefs."
comment(ds$SK09_08) = "Religious Zeal: In my heart I believe that my religious beliefs are more correct than others’"
comment(ds$SK09_09) = "Religious Zeal: I will do whatever is necessary to help my religious beliefs prosper in society."
comment(ds$SK09_10) = "Religious Zeal: It is wise to keep a wary distance from people who distract me from living according to my religious beliefs."
comment(ds$SK09_11) = "Religious Zeal: In the end, those who oppress my religious beliefs will suffer for their ignorance."
comment(ds$SK09_12) = "Religious Zeal: If everyone followed my religious beliefs, the world would be a much better place."
comment(ds$SK09_13) = "Religious Zeal: Harmful misinformation is too often spread about my religious beliefs by ignorant people."
comment(ds$SK09_14) = "Religious Zeal: If I really had to, I would endure much pain and suffering to stay true to my religious beliefs."
comment(ds$SK09_15) = "Religious Zeal: Today’s society is in desperate need of the wisdom of my religious beliefs."
comment(ds$SK09_16) = "Religious Zeal: My strongest relationships are with those who have the same religious beliefs as I do."
comment(ds$TIME001) = "Time spent on page 1"
comment(ds$TIME002) = "Time spent on page 2"
comment(ds$TIME003) = "Time spent on page 3"
comment(ds$TIME004) = "Time spent on page 4"
comment(ds$TIME006) = "Time spent on page 6"
comment(ds$TIME007) = "Time spent on page 7"
comment(ds$TIME008) = "Time spent on page 8"
comment(ds$TIME009) = "Time spent on page 9"
comment(ds$TIME010) = "Time spent on page 10"
comment(ds$TIME011) = "Time spent on page 11"
comment(ds$TIME012) = "Time spent on page 12"
comment(ds$TIME013) = "Time spent on page 13"
comment(ds$TIME014) = "Time spent on page 14"
comment(ds$TIME015) = "Time spent on page 15"
comment(ds$TIME016) = "Time spent on page 16"
comment(ds$TIME_SUM) = "Time spent overall (except outliers)"
comment(ds$MAILSENT) = "Time when the invitation mailing was sent (personally identifiable recipients, only)"
comment(ds$LASTDATA) = "Time when the data was most recently updated"
comment(ds$FINISHED) = "Has the interview been finished (reached last page)?"
comment(ds$Q_VIEWER) = "Did the respondent only view the questionnaire, omitting mandatory questions?"
comment(ds$LASTPAGE) = "Last page that the participant has handled in the questionnaire"
comment(ds$MAXPAGE) = "Hindmost page handled by the participant"
comment(ds$MISSING) = "Missing answers in percent"
comment(ds$MISSREL) = "Missing answers (weighted by relevance)"
comment(ds$TIME_RSI) = "Degradation points for being very fast"
comment(ds$DEG_TIME) = "Degradation points for being very fast"



# Assure that the comments are retained in subsets
as.data.frame.avector = as.data.frame.vector
`[.avector` <- function(x,i,...) {
  r <- NextMethod("[")
  mostattributes(r) <- attributes(x)
  r
}
ds_tmp = data.frame(
  lapply(ds, function(x) {
    structure( x, class = c("avector", class(x) ) )
  } )
)
mostattributes(ds_tmp) = attributes(ds)
ds = ds_tmp
rm(ds_tmp)



# Tidy --------------------------------------------------------------------

library(tidyverse)

ds$RM01_01 <- as.factor(ds$RM01_01) # changing experimental group variable from character to factor

# Merging columns (product perceptions items) to make it less confusing and filtering so that only Muslim participants are selected. I also applied an exclusion criteria, which is "time degradation of being fast" (TIME_RSI). Participants with who score > 2 in TIME_RSI, did not complete the questionnaire in a meaningful way. (see: https://www.soscisurvey.de/help/doku.php/en:results:variables)

ds %<>% filter(DM08 == "Muslim", TIME_RSI < 2) %>%
  mutate_at(vars(15:62), funs(replace(., is.na(.), 0))) %>%
  mutate(tastebeverage=PC01_01+PC02_01+PC03_01+PC04_01,
         tastecake=PC05_01+PC06_01+PC07_01+PC08_01,
         healthybeverage=PC09_01+PC10_01+PC11_01+PC12_01,
         healthycake=PC13_01+PC14_01+PC15_01+PC16_01,
         qualitybeverage=PC17_01+PC18_01+PC19_01+PC20_01,
         qualitycake=PC21_01+PC22_01+PC23_01+PC24_01,
         willtry_beverage=PC25_01+PC26_01+PC27_01+PC28_01,
         willtry_cake=PC29_01+PC30_01+PC31_01+PC32_01,
         willbuy_beverage=PC33_01+PC34_01+PC35_01+PC36_01,
         willbuy_cake=PC37_01+PC38_01+PC39_01+PC40_01,
         entermarket_beverage=PC41_01+PC42_01+PC43_01+PC44_01,
         entermarket_cake=PC45_01+PC46_01+PC47_01+PC48_01
         )

# Deleting original columns

ds <- ds[, -c(15:62)]

# give comments to the new variables
comment(ds$tastebeverage) <- "What do you think about the taste of this beverage product?"
comment(ds$tastecake) <- "What do you think about the taste of this bakery product?"
comment(ds$healthybeverage) <- "What do you think about the health aspect of this beverage product?"
comment(ds$healthycake) <- "What do you think about the health aspect of this bakery product?"
comment(ds$qualitybeverage) <- "What do you think about the quality of this beverage product?"
comment(ds$qualitycake) <- "What do you think about the quality of this cake product?"
comment(ds$willtry_beverage) <- "How much likely will you try this beverage product"
comment(ds$willtry_cake) <- "How much likely will you try this bakery product"
comment(ds$willbuy_beverage) <- "How much likely will you buy this beverage product"
comment(ds$willbuy_cake) <- "How much likely will you buy this bakery product"
comment(ds$entermarket_beverage) <- "Do you think this beverage product should enter Indonesian market?"
comment(ds$entermarket_cake) <- "Do you think this bakery product should enter Indonesian market?"

# Exported dataset to .sav
library(haven)
write_sav(ds, "rdata_halalcoo_2019-03-04_12-37.sav")

# Replacing -9 to NA
library(naniar)
ds <- replace_with_na_all(ds, condition = ~.x %in% common_na_numbers)


# Creating separate halal and coo variable
ds$halal <- ifelse(ds$RM01_01 == 1, 1, ifelse(ds$RM01_01 == 3, 1, 0))
ds$coo <- ifelse(ds$RM01_01 == 3, 1, ifelse(ds$RM01_01 == 4, 1, 0))


# Confirmatory Factor Analysis and Factor Scores Extraction ---------------

library(lavaan)

# Product Perception (cake)

pp_cake <- '

pp_cake =~ tastecake + healthycake + qualitycake + willtry_cake + willbuy_cake + entermarket_cake

# residuals

qualitycake ~~ healthycake
willtry_cake ~~ willbuy_cake
willtry_cake ~~ healthycake
willtry_cake ~~ tastecake

'

fitpp_cake <- cfa(pp_cake, data=ds, missing="ML")
summary(fitpp_cake, fit.measures=T, modindices=T)
ds$pp_cake <- lavPredict(fitpp_cake)

# Product Perception (bev)

pp_bev <- '

pp_bev =~ tastebeverage + healthybeverage + qualitybeverage + willtry_beverage + willbuy_beverage + entermarket_beverage

# Residuals

qualitybeverage ~~ healthybeverage
willtry_beverage ~~ willbuy_beverage
qualitybeverage ~~ entermarket_beverage
qualitybeverage ~~ willbuy_beverage
qualitybeverage ~~ willtry_beverage
healthybeverage ~~ entermarket_beverage

'

fitpp_bev <- cfa(pp_bev, data=ds, missing="ML")
summary(fitpp_bev, fit.measures=T, modindices=T)
ds$pp_bev <- lavPredict(fitpp_bev)

# Collective Narcissism 

colnar <- '

colnar =~ SK08_01 + SK08_02 + SK08_03 + SK08_04 + SK08_05

# Residuals
SK08_01 ~~ SK08_04
SK08_03 ~~ SK08_04

'

fitcn <- cfa(colnar, data=ds, ordered=c("SK08_01", "SK08_02", "SK08_03",
                                        "SK08_04", "SK08_05"))
summary(fitcn, fit.measures=T, modindices=T)
ds$cn <- lavPredict(fitcn)

# Religious Zeal

rz <- '
rz =~ SK09_01 + SK09_02 + SK09_03 + SK09_04 + SK09_05 + SK09_06 + SK09_07 + SK09_08 + SK09_09 + SK09_10 + SK09_11 + SK09_12 + SK09_13 + SK09_14 + SK09_15 + SK09_16

# Residuals
SK09_01 ~~ SK09_02
SK09_06 ~~ SK09_13
SK09_10 ~~ SK09_11
SK09_12 ~~ SK09_16
SK09_03 ~~ SK09_04
SK09_08 ~~ SK09_12
SK09_06 ~~ SK09_12
'

fitrz <- cfa(rz, data=ds, ordered=c("SK09_01", "SK09_02", "SK09_03", "SK09_04", "SK09_05", "SK09_06", "SK09_07", "SK09_08",
                                    "SK09_09", "SK09_10", "SK09_11", "SK09_12", "SK09_13", "SK09_14", "SK09_15", "SK09_16"))
summary(fitrz, fit.measures=T, modindices=T)
ds$rz <- lavPredict(fitrz)

# NCC

ncc <- '

ncc =~ SK07_01 + SK07_02 + SK07_03 + SK07_04 + SK07_05 + SK07_06 + SK07_07 + SK07_08 + SK07_09 + SK07_10 + SK07_11 + SK07_12 + SK07_13 + SK07_14 + SK07_15

# Residuals
SK07_03 ~~ SK07_12
SK07_01 ~~ SK07_12
SK07_01 ~~ SK07_15
SK07_03 ~~ SK07_04
SK07_03 ~~ SK07_06
SK07_03 ~~ SK07_09
SK07_03 ~~ SK07_10
SK07_03 ~~ SK07_13
SK07_04 ~~ SK07_09
SK07_04 ~~ SK07_12
SK07_07 ~~ SK07_08
SK07_08 ~~ SK07_13
SK07_10 ~~ SK07_11
SK07_12 ~~ SK07_13
SK07_08 ~~ SK07_12
'

fitncc <- cfa(ncc, data=ds, ordered=c("SK07_01", "SK07_02", "SK07_03", "SK07_04", "SK07_05", "SK07_06", "SK07_07",
                                      "SK07_08", "SK07_09", "SK07_10", "SK07_11", "SK07_12", "SK07_13", "SK07_14",
                                      "SK07_15"))

summary(fitncc, fit.measures=T, modindices=T)
ds$ncc <- lavPredict(fitncc)


# Mean Centering RZ, NCC & ColNar

ds <- mutate(ds, rz_mc = rz - mean(rz),
               ncc_mc = ncc - mean(ncc),
               cn_mc = cn - mean(cn))

# Making interaction terms
ds <- mutate(ds, halalXcoo = halal*coo,
             halalXncc = halal*ncc_mc,
             halalXrz = halal*rz_mc,
             halalXcn = halal*cn_mc,
             cooXncc = coo*ncc_mc,
             cooXrz = coo*rz_mc,
             cooXcn = coo*cn_mc,
             halalXcooXncc = halal*coo*ncc_mc,
             halalXcooXrz = halal*coo*rz_mc,
             halalXcooXcn = halal*coo*cn_mc)


# Hypothesis Testing (iv: ncc) ------------------------------------------------------

# dv=prod perception **CAKE** iv=halal, coo, ncc

# Plot
library(processR)
labels=list(X="halal", W="coo", Z="ncc", Y="prod perception")
pmacroModel(3,labels=labels)
statisticalDiagram(3,labels=labels)

mod1ncc <- '
# Model
pp_cake ~ b1*halal + b2*coo + b3*ncc_mc + b4*halalXcoo + b5*halalXncc + b6*cooXncc + b7*halalXcooXncc + DM02_01 + DM01


# NCC Mean and Variances
ncc_mc ~ a*1
ncc_mc ~~ b*ncc_mc  

# Conditional effect
cond1 := b1 + b4 + b5*(a+sqrt(b))  # Turkey, high NCC
cond2:= b1 + b4 + b5*(a-sqrt(b)) # Turkey, low NCC
cond3:= b1 + b5*(a+sqrt(b))  # English, high NCC
cond4:= b1 + b5*(a-sqrt(b)) # English, low NCC

# Conditional effect (no-Halal)
cond5 := b4 + b5*(a+sqrt(b))  # Turkey, high NCC
cond6:= b4 + b5*(a-sqrt(b)) # Turkey, low NCC
cond7:= b5*(a+sqrt(b))  # England, high NCC
cond8 := b5*(a-sqrt(b)) # England, low NCC


'

fitmod1ncc <- sem(mod1ncc, data=ds, se="bootstrap", bootstrap=1000)
summary(fitmod1ncc, standardized=T)


# dv=prod perception **BEVERAGE** iv=halal, coo, ncc

model2ncc <- '
# Model
pp_bev ~ b1*halal + b2*coo + b3*ncc_mc + b4*halalXcoo + b5*halalXncc + b6*cooXncc + b7*halalXcooXncc + DM02_01 + DM01


# NCC Mean and Variances
ncc_mc ~ a*1
ncc_mc ~~ b*ncc_mc  

# Conditional effect (Halal)
cond1 := b1 + b4 + b5*(a+sqrt(b))  # Turkey, high NCC
cond2:= b1 + b4 + b5*(a-sqrt(b)) # Turley, low NCC
cond3:= b1 + b5*(a+sqrt(b))  # England, high NCC
cond4:= b1 + b5*(a-sqrt(b)) # England, low NCC

# Conditional effect (no-Halal)
cond5 := b4 + b5*(a+sqrt(b))  # Turkey, high NCC
cond6:= b4 + b5*(a-sqrt(b)) # Turkey, low NCC
cond7:= b5*(a+sqrt(b))  # England, high NCC
cond8 := b5*(a-sqrt(b)) # England, low NCC

# Residual

pp_bev ~~ pp_bev

'

fitmod2ncc <- sem(model2ncc, data=ds, se="bootstrap", bootstrap=1000)
summary(fitmod2ncc, standardized=T)


# Hypothesis Testing (iv: col narcissism) ----------------------------------------------------------------------

# Model 1: dv=prod perception **CAKE** iv=halal, coo, collective narcissism

### Plot
labels=list(X="halal", W="coo", Z="colnar", Y="prod perception")
pmacroModel(3,labels=labels)
statisticalDiagram(3,labels=labels)

model1cn <- '
# Model
pp_cake ~ b1*halal + b2*coo + b3*cn_mc + b4*halalXcoo + b5*halalXcn + b6*cooXcn + b7*halalXcooXcn + DM02_01 + DM01


# CN Mean and Variances
cn_mc ~ a*1
cn_mc ~~ b*cn_mc  

## Three Way Interaction
# Conditional effect
cond1 := b1 + b4 + b5*(a+sqrt(b))  # Turkey, high CN
cond2:= b1 + b4 + b5*(a-sqrt(b)) # Turkey, low CN
cond3:= b1 + b5*(a+sqrt(b))  # English, high CN
cond4:= b1 + b5*(a-sqrt(b)) # English, low CN

# Conditional effect (no-Halal)
cond5 := b4 + b5*(a+sqrt(b))  # Turkey, high CN
cond6:= b4 + b5*(a-sqrt(b)) # Turkey, low CN
cond7:= b5*(a+sqrt(b))  # England, high CN
cond8 := b5*(a-sqrt(b)) # England, low CN

'

fitmod1cn <- sem(model1cn, data=ds, se="bootstrap", bootstrap=1000)
summary(fitmod1cn, standardized=T)


# dv=prod perception **BEVERAGE** iv=halal, coo, collective narcissism

model2cn <- '
# Model
pp_bev ~ b1*halal + b2*coo + b3*cn_mc + b4*halalXcoo + b5*halalXcn + b6*cooXcn + b7*halalXcooXcn + DM02_01 + DM01


# CN Mean and Variances
cn_mc ~ a*1
cn_mc ~~ b*cn_mc  

## Three Way Interaction
# Conditional effect
cond1 := b1 + b4 + b5*(a+sqrt(b))  # Turkey, high CN
cond2:= b1 + b4 + b5*(a-sqrt(b)) # Turkey, low CN
cond3:= b1 + b5*(a+sqrt(b))  # English, high CN
cond4:= b1 + b5*(a-sqrt(b)) # English, low CN

# Conditional effect (no-Halal)
cond5 := b4 + b5*(a+sqrt(b))  # Turkey, high CN
cond6:= b4 + b5*(a-sqrt(b)) # Turkey, low CN
cond7:= b5*(a+sqrt(b))  # England, high CN
cond8 := b5*(a-sqrt(b)) # England, low CN

'

fitmod2cn <- sem(model2cn, data=ds, se="bootstrap", bootstrap=1000)
summary(fitmod2cn, standardized=T)

# Hypothesis Testing (iv: religous zeal) ----------------------------------------------------------------------

# dv=prod perception **CAKE** iv=halal, coo, rel zeal

### Plot
labels=list(X="halal", W="coo", Z="relzeal", Y="prod perception")
pmacroModel(3,labels=labels)
statisticalDiagram(3,labels=labels)

model1rz <- '
# Model
pp_cake ~ b1*halal + b2*coo + b3*rz_mc + b4*halalXcoo + b5*halalXrz + b6*cooXrz + b7*halalXcooXrz + DM02_01 + DM01


# CN Mean and Variances
rz_mc ~ a*1
rz_mc ~~ b*rz_mc  

## Three Way Interaction
# Conditional effect
cond1 := b1 + b4 + b5*(a+sqrt(b))  # Turkey, high RZ
cond2:= b1 + b4 + b5*(a-sqrt(b)) # Turkey, low RZ
cond3:= b1 + b5*(a+sqrt(b))  # English, high RZ
cond4:= b1 + b5*(a-sqrt(b)) # English, low RZ

# Conditional effect (no-Halal)
cond5 := b4 + b5*(a+sqrt(b))  # Turkey, high RZ
cond6:= b4 + b5*(a-sqrt(b)) # Turkey, low RZ
cond7:= b5*(a+sqrt(b))  # England, high RZ
cond8 := b5*(a-sqrt(b)) # England, low RZ

'

fitmod1rz <- sem(model1rz, data=ds, se="bootstrap", bootstrap=1000)
summary(fitmod1rz, standardized=T)


# dv=prod perception **BEVERAGE** iv=halal, coo, religious zeal

model2rz <- '
# Model
pp_bev ~ b1*halal + b2*coo + b3*rz_mc + b4*halalXcoo + b5*halalXrz + b6*cooXrz + b7*halalXcooXrz + DM02_01 + DM01


# CN Mean and Variances
rz_mc ~ a*1
rz_mc ~~ b*rz_mc  

## Three Way Interaction
# Conditional effect
cond1 := b1 + b4 + b5*(a+sqrt(b))  # Turkey, high CN
cond2:= b1 + b4 + b5*(a-sqrt(b)) # Turkey, low CN
cond3:= b1 + b5*(a+sqrt(b))  # English, high CN
cond4:= b1 + b5*(a-sqrt(b)) # English, low CN

# Conditional effect (no-Halal)
cond5 := b4 + b5*(a+sqrt(b))  # Turkey, high CN
cond6:= b4 + b5*(a-sqrt(b)) # Turkey, low CN
cond7:= b5*(a+sqrt(b))  # England, high CN
cond8 := b5*(a-sqrt(b)) # England, low CN

'

fitmod2rz <- sem(model2rz, data=ds, se="bootstrap", bootstrap=1000)
summary(fitmod2rz, standardized=T)

?indProd

# Reliability Analysis of the Scales --------------------------------------

library(dplyr)
library(MBESS)
library(searcher)

which(colnames(ds)=="tastecake")

rz <- select(ds, 36:51)
ncc <- select(ds, 16:30)
cn <- select(ds, 31:35)
prodperc_bev <- select(ds, 78,80,82,84,86,88)
prodperc_cake <- select(ds, 79,81,83,85,87,89)

# reliability (omega)
ci.reliability(data=rz, type="omega", interval.type="bca", B=1000)
ci.reliability(data=ncc, type="omega", interval.type="bca", B=1000)
ci.reliability(data=cn, type="omega", interval.type="bca", B=1000)
ci.reliability(data=prodperc_bev, type="omega", interval.type="bca", B=1000)
ci.reliability(data=prodperc_cake, type="omega", interval.type="bca", B=1000)

search_google()

# Plot --------------------------------------------------------------------

prod_perception_bev <- c(8.032,4.996,2.916,-0.120,6.633,3.597,1.518,-1.519)
p_value_bev <- c(0.03,0.175,0.469,0.973,0.124,0.441,0.598,0.597)
halal_label <- c("Halal","Halal","Halal","Halal","No Halal","No Halal","No Halal","No Halal")
coo_ncc_label <- c("Turkey - High NCC","Turkey - Low NCC","England - High NCC","England - Low NCC","Turkey - High NCC","Turkey - Low NCC","England - High NCC","England - Low NCC")

plot_bev_ncc <- data.frame(prod_perception_bev,p_value_bev,halal_label,coo_ncc_label)

p <- ggplot(plot_bev_ncc, aes(x=halal_label,y=prod_perception_bev, color=coo_ncc_label)) +
  geom_line(aes(group=coo_ncc_label)) + geom_point()


install.packages("naniar", dependencies = T)