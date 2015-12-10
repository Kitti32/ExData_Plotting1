## Coursera plot2


read.table('household_power_consumption.txt', sep = ';', nrows = 100)  ## 1-100. sor beolvasása a fájlból

file_header = read.table('household_power_consumption.txt', sep = ';', nrows = 1) ## címsorának kivétele

file_data = read.table('household_power_consumption.txt', sep = ';', skip = 66637, nrows = 2880) ## szükséges adatok kivétele

file_data[,1] = as.Date(file_data[,1], format='%d/%m/%Y')  ##ezzel felülírja az 1. oszlopot ilyen dátum formátumra

 
## de nekünk az as.POSIXct fv kell, mert az órát is hozzá kell kapcsolni

time = as.POSIXct(paste(as.character(file_data[,1]),as.character(file_data[,2])))   ##karaktert kell készíteni a dátumból ehhez, és hozzákapcsolni az időhöz


png(file = 'plot2.png')   ##♦képkészítő, de kell utána egy dev.off parancs, hogy ki is írja a fájlt

plot(time,file_data[,3], type='l', ylab = 'Global Active Power (kilowatts)', xlab = '')

dev.off()