load  'util.rb'
load  'TCscript.rb'
load 'TestDataScript.rb'
#get Data in Json Foramt
dataInHashFormat= convertCsvToHash("requirements")
#puts dataInHashFormat
#createNeededTickets
createNeededTickets(dataInHashFormat)
#createTestData
testData=createRequiredTestData(dataInHashFormat)
#create scenarios
puts testData
createRequiredScenarios(testData)
