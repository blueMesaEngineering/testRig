	    	f = File.open(logPathName, 'w+')
	
	    	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        doc status: #{status_response.status}")


		      
		        File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        " + doc_response)
		      	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        Wrote PDF to " + pathName + fileNamePDF)
			  


			  #	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        FAILED")
			  #	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        " + status_response)
			  
		  	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        #{error.class}: #{error.message}")
		  	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        " + error.code)
		  	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        " + error.response_body)
		  	File.write(logPathName, Time.now.strftime("%m/%d/%Y %H:%M") + "        " + error.backtrace[0..3].join("\n"))

		  	f.close()
			


<!--
<table>
	<tbody>
		<% @models.each do |model| %>
			<tr>
				<td><%= model.id %></td>
				<td><%= model.url %></td>
				<td><%= model.pdf_version %></td>
				<td><%= model.producer %></td>
				<td><%= model.title %></td>
				<td><%= model.metadata %></td>
				<td><%= model.page_count %></td>
			</tr>
		<% end %>
	</tbody>
</table>
-->

<!-- <%= link_to("testPdf", "./storage/PDFs/" + Dir.entries("./storage/PDFs/")[2]) %> -->