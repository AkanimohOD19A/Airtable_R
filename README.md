### Dependencies
install.packages("shiny", type = "binary")
devtools::install_github("bergant/airtabler")

Create an .Renviron file and store your secrets like so:
AIRTABLE_API_KEY=XXXXX

Then follow the source scripts to retrieve the stored records, for ML concepts and executions I referred to Julia Silge's publications/blog.

Rpubs: https://rpubs.com/AfroLogicInsect
