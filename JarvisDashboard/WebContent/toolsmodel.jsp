<%-- DevOps Tools Modal --%>

<div class="modal fade text-center" id="DevOpsModalToolsCenter"
	tabindex="1" role="dialog"
	aria-labelledby="DevOpsModalToolsCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="DevOpsModalToolsLongTitle">DevOps
						Tools - Summary</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<br>

					<p class="text-primary">
						<b> Target Environment Details</b>
					</p>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Organization</th>
								<th scope="col">Project</th>
								<th scope="col">Region</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">No Organisation</th>
								<td>cloudglobaldelivery-1000135575</td>
								<td>us-central1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> DevOps Tools Details</b>
					</p>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Tools
								Name</span>
						</div>
						<input type="text" class="form-control" name="tool_name"
							placeholder="Tool Name" required="required"
							aria-label="Tool Name" aria-describedby="basic-addon1">
					</div>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Required</th>
								<th scope="col">Tools</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine Type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="tools" value="SonarQube" />&nbsp;</td>
								<th scope="row">SonarQube</th>
								<td>Catch bugs and vulnerabilities</td>
								<td rowspan="1">1</td>
								<!-- <td rowspan="5">n1-standard-1</td> -->
								<td rowspan="5"><select class="form-control"
									id="machine-type7" name="machine_type" onchange="GetSelectedValue7()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select>This will be the machine type for any / all the DevOps Tools</td>


							</tr>


							<tr>
								<td><input type="checkbox" name="tools" value="Maven" />&nbsp;</td>
								<th scope="row">Maven</th>
								<td>Build automation tool</td>
								<td rowspan="1">1</td>


							</tr>
							<tr>
								<td><input type="checkbox" name="tools" value="Harbor" />&nbsp;</td>
								<th scope="row">Harbor</th>
								<td>Cloud native registry</td>

								<td rowspan="1">1</td>

							</tr>
							<tr>
								<td><input type="checkbox" name="tools" value="Jenkins" />&nbsp;</td>
								<th scope="row">Jenkins</th>
								<td>CI / CD Automation Server</td>
								<td rowspan="1">1</td>

							</tr>

							<tr>
								<td><input type="checkbox" name="tools" value="BitBucket" />&nbsp;</td>
								<th scope="row">BitBucket</th>
								<td>Version Control System</td>
								<td rowspan="1">1</td>

							</tr>
							<tr class="thead-light">
								<th scope="row" colspan="3"></th>
								<th colspan="3"></th>
							</tr>

						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId7"></p></b></span>
							
							<script>

			var result;

			function GetSelectedValue7(){
				var e = document.getElementById("machine-type7");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_central1);
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_central1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_central1);
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_central1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_central1);
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_central1);
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_central1);
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_central1);
        			document.getElementById('paraId7').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_central1);
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_central1);
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId7').innerHTML = "Estimated Cost is  0$";
                                
    				
				}

				
				document.getElementById("result").innerHTML = result;
			}

			function GetSelectedText(){
				var e = document.getElementById("machine-type");
				var result = e.options[e.selectedIndex].text;
				
				document.getElementById("result").innerHTML = result;
			}
			
		</script>
							
							
				</div>
				<div class="modal-footer">

					<input type="hidden" name="builttype" id="builttype" value="tools" />
					<input type="hidden" name="tool" id="tool" value="DevOps" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
						
						
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>


<%-- Credentials Management Tools Modal --%>

<div class="modal fade text-center" id="CredMgModalToolsCenter"
	tabindex="1" role="dialog"
	aria-labelledby="CredMgModalToolsCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="CredMgModalToolsLongTitle">Credentials Management
						Tools - Summary</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<br>

					<p class="text-primary">
						<b> Target Environment Details</b>
					</p>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Organization</th>
								<th scope="col">Project</th>
								<th scope="col">Region</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">No Organisation</th>
								<td>cloudglobaldelivery-1000135575</td>
								<td>us-central1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> Credentials Management Tools Details</b>
					</p>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Tools
								Name</span>
						</div>
						<input type="text" class="form-control" name="tool_name"
							placeholder="Tool Name" required="required"
							aria-label="Tool Name" aria-describedby="basic-addon1">
					</div>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Required</th>
								<th scope="col">Tools</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine Type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="tools" value="Vault" />&nbsp;</td>
								<th scope="row">Vault</th>
								<td>Tool for securely accessing secrets</td>
								<td rowspan="1">1</td>
								<!-- <td rowspan="5">n1-standard-1</td> -->
								<td rowspan="5"><select class="form-control"
									id="machine-type8" name="machine_type" onchange="GetSelectedValue8()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select>This will be the machine type for any / all the Credentials Management Tools</td>


							</tr>


							<tr>
								<td><input type="checkbox" name="tools" value="CredHub" />&nbsp;</td>
								<th scope="row">CredHub</th>
								<td>Centralized credential management in CF</td>
								<td rowspan="1">1</td>


							</tr>
							
							<tr class="thead-light">
								<th scope="row" colspan="3"></th>
								<th colspan="3"></th>
							</tr>
						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId8"></p></b></span>
							
							<script>

			var result;

			function GetSelectedValue8(){
				var e = document.getElementById("machine-type8");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_central1);
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_central1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_central1);
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_central1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_central1);
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_central1);
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_central1);
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_central1);
        			document.getElementById('paraId8').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_central1);
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_central1);
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId8').innerHTML = "Estimated Cost is  0$";
                                
    				
				}

				
				document.getElementById("result").innerHTML = result;
			}

			function GetSelectedText(){
				var e = document.getElementById("machine-type");
				var result = e.options[e.selectedIndex].text;
				
				document.getElementById("result").innerHTML = result;
			}
			
		</script>
							
							
							
				</div>
				<div class="modal-footer">

					<input type="hidden" name="builttype" id="builttype" value="tools" />
					<input type="hidden" name="tool" id="tool" value="Credentials" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
						
						
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>


<%-- Logging and Monitoring Tools Modal --%>

<div class="modal fade text-center" id="LMModalToolsCenter"
	tabindex="1" role="dialog"
	aria-labelledby="LMModalToolsCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="LMModalToolsLongTitle">Logging and Monitoring
						Tools - Summary</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<br>

					<p class="text-primary">
						<b> Target Environment Details</b>
					</p>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Organization</th>
								<th scope="col">Project</th>
								<th scope="col">Region</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">No Organisation</th>
								<td>cloudglobaldelivery-1000135575</td>
								<td>us-central1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> Logging and Monitoring Tools Details</b>
					</p>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Tools
								Name</span>
						</div>
						<input type="text" class="form-control" name="tool_name"
							placeholder="Tool Name" required="required"
							aria-label="Tool Name" aria-describedby="basic-addon1">
					</div>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Required</th>
								<th scope="col">Tools</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine Type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="tools" value="Logstash" />&nbsp;</td>
								<th scope="row">Logstash</th>
								<td>Log Pipeline Tool</td>
								<td rowspan="1">1</td>
								<!-- <td rowspan="5">n1-standard-1</td> -->
								<td rowspan="5"><select class="form-control"
									id="machine-type9" name="machine_type" onchange="GetSelectedValue9()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select>This will be the machine type for any / all the Logging and Monitoring Tools</td>


							</tr>


							<tr>
								<td><input type="checkbox" name="tools" value="Kibana" />&nbsp;</td>
								<th scope="row">Kibana </th>
								<td>Visualization layer on top of Elasticsearch</td>
								<td rowspan="1">1</td>


							</tr>
							<tr>
								<td><input type="checkbox" name="tools" value="Splunk" />&nbsp;</td>
								<th scope="row">Splunk</th>
								<td>Searching, correlating, reporting and alerting tool</td>

								<td rowspan="1">1</td>

							</tr>
							
							<tr class="thead-light">
								<th scope="row" colspan="3"></th>
								<th colspan="3"></th>
							</tr>

						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId9"></p></b></span>
							
							<script>

			var result;

			function GetSelectedValue9(){
				var e = document.getElementById("machine-type9");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_central1);
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_central1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_central1);
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_central1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_central1);
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_central1);
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_central1);
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_central1);
        			document.getElementById('paraId9').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_central1);
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_central1);
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId9').innerHTML = "Estimated Cost is  0$";
                                
    				
				}

				
				document.getElementById("result").innerHTML = result;
			}

			function GetSelectedText(){
				var e = document.getElementById("machine-type");
				var result = e.options[e.selectedIndex].text;
				
				document.getElementById("result").innerHTML = result;
			}
			
		</script>
							
				</div>
				<div class="modal-footer">

					<input type="hidden" name="builttype" id="builttype" value="tools" />
					<input type="hidden" name="tool" id="tool" value="LM" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
						
						
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>




<%-- Other Developer Tools Modal --%>

<div class="modal fade text-center" id="OtherDeveloperModalToolsCenter"
	tabindex="1" role="dialog"
	aria-labelledby="OtherDeveloperModalToolsCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="OtherDeveloperModalToolsLongTitle">Other Developer
						Tools - Summary</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<br>

					<p class="text-primary">
						<b> Target Environment Details</b>
					</p>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Organization</th>
								<th scope="col">Project</th>
								<th scope="col">Region</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">No Organisation</th>
								<td>cloudglobaldelivery-1000135575</td>
								<td>us-central1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> Other Developer Tools Details</b>
					</p>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Tools
								Name</span>
						</div>
						<input type="text" class="form-control" name="tool_name"
							placeholder="Tool Name" required="required"
							aria-label="Tool Name" aria-describedby="basic-addon1">
					</div>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Required</th>
								<th scope="col">Tools</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine Type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="tools" value="Elasticsearch" />&nbsp;</td>
								<th scope="row">Elasticsearch</th>
								<td>NoSQL Database (Lucene Search Engine)</td>
								<td rowspan="1">1</td>
								<!-- <td rowspan="5">n1-standard-1</td> -->
								<td rowspan="6"><select class="form-control"
									id="machine-type10" name="machine_type" onchange="GetSelectedValue10()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select>This will be the machine type for any / all the Other Developer Tools</td>


							</tr>


							<tr>
								<td><input type="checkbox" name="tools" value="ApacheSolr" />&nbsp;</td>
								<th scope="row">Apache Solr</th>
								<td>Search platform built on Apache Lucene</td>
								<td rowspan="1">1</td>


							</tr>
							<tr>
								<td><input type="checkbox" name="tools" value="Consul" />&nbsp;</td>
								<th scope="row">Consul</th>
								<td>Service networking solution to connect and secure services across any runtime platform and public or private cloud</td>

								<td rowspan="1">1</td>

							</tr>
							<tr>
								<td><input type="checkbox" name="tools" value="RabbitMQ" />&nbsp;</td>
								<th scope="row">RabbitMQ</th>
								<td>Message-broker software</td>
								<td rowspan="1">1</td>

							</tr>

							<tr>
								<td><input type="checkbox" name="tools" value="ApacheZookeeper" />&nbsp;</td>
								<th scope="row">Apache Zookeeper</th>
								<td>Distributed configuration & synchronization service</td>
								<td rowspan="1">1</td>

							</tr>
							
							<tr>
								<td><input type="checkbox" name="tools" value="ApacheKafka" />&nbsp;</td>
								<th scope="row">Apache Kafka</th>
								<td>A distributed streaming platform</td>
								<td rowspan="1">1</td>

							</tr>
							
							<tr class="thead-light">
								<th scope="row" colspan="3"></th>
								<th colspan="3"></th>
							</tr>

						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId10"></p></b></span>
							
					 <script>

			var result;

			function GetSelectedValue10(){
				var e = document.getElementById("machine-type10");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_central1);
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_central1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_central1);
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_central1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_central1);
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_central1);
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_central1);
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_central1);
        			document.getElementById('paraId10').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_central1);
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_central1);
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_central1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId10').innerHTML = "Estimated Cost is  0$";
                                
    				
				}

				
				document.getElementById("result").innerHTML = result;
			}

			function GetSelectedText(){
				var e = document.getElementById("machine-type");
				var result = e.options[e.selectedIndex].text;
				
				document.getElementById("result").innerHTML = result;
			}
			
		</script>
							
				</div>
				<div class="modal-footer">

					<input type="hidden" name="builttype" id="builttype" value="tools" />
					<input type="hidden" name="tool" id="tool" value="OtherDeveloper" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
						
						
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>

