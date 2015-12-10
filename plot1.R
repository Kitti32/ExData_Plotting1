## Coursera 1 project


read.table('household_power_consumption.txt', sep = ';', nrows = 100)  ## 1-100. sor beolvasása a fájlból

file_header = read.table('household_power_consumption.txt', sep = ';', nrows = 1) ## címsorának kivétele

file_data = read.table('household_power_consumption.txt', sep = ';', skip = 66637, nrows = 2880) ## szükséges adatok kivétele

hist(file_data[,3], col = 'red', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', main = "Global Active Power")

png(file = 'plot1.png')   ##♦képkészítő, de kell utána egy dev.off parancs, hogy ki is írja a fájlt




