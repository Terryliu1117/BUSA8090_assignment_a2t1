library(ggplot2)

data <- data.frame(country <- c("Belgium", "Spain", "Italy", "France", "Sweden", "Germany", "Australia"), number <- c(59,48,43,35,21,7,0.33))

data_plot <- ggplot(data, aes(x=reorder(country, +number), y=number))+
              geom_bar(stat="identity", fill="steelblue4", width=0.7)+
              coord_flip()

print(data_plot + labs(title= "Covid-19 deaths per 100,000 population", y="numbers", x="country"))
