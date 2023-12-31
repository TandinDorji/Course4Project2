# reading rds files
NEI <- readRDS("Data/summarySCC_PM25.rds")
SCC <- readRDS("Data/Source_Classification_Code.rds")

tot <- with(NEI, tapply(Emissions, factor(year), sum))

png(filename = "plot1.png", bg="white", width = 800, height = 500, pointsize = 20)
par(mar=c(5.1, 5.1, 4.1, 1))

barplot(tot, names.arg = unique(NEI$year), col = unique(NEI$year), main = "Total annual PM2.5 emission from all sources in the U.S.", xlab="Year", ylab="Amount of PM2.5 emitted, in tons")

dev.off()
