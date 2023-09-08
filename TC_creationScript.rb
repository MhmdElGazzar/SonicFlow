require 'json'
 
def createNeededTickets(dataInHashFormat)
    #initialize required Data
    ticketName=""
    counter=1
    data_hash = dataInHashFormat
    sampleTicket = ""
    #start creating required ticktes
    data_hash.each do |raw|
         #read template ticketName
         sampleTicket = File.read('./ticketSample.json')
         #create ticket number
          ticketName= "Request#{000+counter}"
          #set TicketID
          sampleTicket.gsub!('$RequestID$', ticketName)
          #setStatus
          sampleTicket.gsub!('$status$', raw["Status"])
           #write the ticket
           File.write("./tickets/"+ticketName, sampleTicket)
           #increase counter
           counter+=1
     end
end
