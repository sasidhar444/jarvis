<!-- <div class="modal fade text-center" id="LAMPModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="LAMPModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-primary" id="LAMPModalLongTitle">LAMP
					- Stack Summery</h5>
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
					<b> LAMP Stack Details</b>
				</p>
				<table class="table table-bordered border-primary"
					style="margin-top: 2%; margin-bottom: 2%;">
					<thead>
						<tr class="thead-light">
							<th scope="col">Stack</th>
							<th scope="col">Description</th>
							<th scope="col">VMs</th>
							<th scope="col">Machine type</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">Linux</th>
							<td>Operating System</td>
							<td rowspan="4">1</td>
							<td rowspan="4">n1-standard-1</td>
						</tr>
						<tr>
							<th scope="row">Apache</th>
							<td>Web Server</td>
						</tr>
						<tr>
							<th scope="row">Perl, PHP or Python</th>
							<td>Scripting languages</td>
						</tr>
						<tr>
							<th scope="row">MySQL</th>
							<td>Database Server</td>
							
						</tr>
						<tr class="thead-light">
							<th scope="row" colspan="2">Total VMs</th>
							<th colspan="2">1</th>
						</tr>

					</tbody>
				</table>

				Estimated costs: <span class="text-danger"><b>
						$13.61/month</b></span>
			</div>
			<div class="modal-footer">
				<form id="myForm" action="trigger" method="post">
					<input type="hidden" name="stack" id="stack" value="LAMP" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>
				</form>
			</div>
		</div>
	</div>
</div>
 -->



<%-- LAMP Stack Modal --%>
<div class="modal fade text-center" id="LAMPModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="LAMPModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="LAMPModalLongTitle">LAMP
						- Stack Summary</h5>
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
								<td>us-east1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> LAMP Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>

					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">Linux</th>
								<td>Operating System</td>
								<td rowspan="4">1</td>

								<td rowspan="4"><select class="form-control"
									id="machine-type" name="machine_type" onchange="GetSelectedValue()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select></td>
							</tr>
							<tr>
								<th scope="row">Apache</th>
								<td>Web Server</td>
							</tr>
							<tr>
								<th scope="row">PHP</th>
								<td>Scripting language</td>
							</tr>
							<tr>
								<th scope="row">MySQL</th>
								<td>Database Server</td>

							</tr>
							<tr class="thead-light">
								<th scope="row" colspan="2">Total VMs</th>
								<th colspan="2">1</th>
							</tr>

						</tbody>
					</table>

				<span class="text-danger"><b>
							<p id="paraId"></p></b></span>
							
				
				<script>

			var result;

			function GetSelectedValue(){
				var e = document.getElementById("machine-type");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_east1);
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_east1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_east1);
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_east1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_east1);
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_east1);
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_east1);
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_east1);
        			document.getElementById('paraId').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_east1);
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_east1);
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId').innerHTML = "Estimated Cost is  0$";
                                
    				
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

					<input type="hidden" name="stack" id="stack" value="LAMP" /> <input
						type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>



<%-- DevOps Stack Modal --%>

<div class="modal fade text-center" id="DevOpsModalStackCenter"
	tabindex="-1" role="dialog"
	aria-labelledby="DevOpsModalStackCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="DevOpsModalStackLongTitle">DevOps
						- Stack Summary</h5>
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
								<td>us-east1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> DevOps Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">GitHub
								Url</span>
						</div>
						<input type="text" class="form-control" name="github_url"
							placeholder="GitHub Url" required="required"
							aria-label="GitHub Url" aria-describedby="basic-addon1">
					</div>

					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">VM's / Nodes</th>
								<th scope="col">Machine type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">Jenkins</th>
								<td>CI / CD Automation Server</td>
								<td>1</td>


								<td rowspan="4"><select class="form-control"
									id="machine-type2" name="machine_type" onchange="GetSelectedValue2()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select> This will be the machine type for all the 4 VM's, (i.e Jenkins,
									Harbor, SonarQube & ELK)</td>

							</tr>
							<tr>
								<th scope="row">Harbor</th>
								<td>Open source cloud native registry</td>
								<td>1</td>
							</tr>
							<tr>
								<th scope="row">Sonar Qube</th>
								<td>Continuous inspection of code quality tool</td>
								<td>1</td>

							</tr>
							<tr>
								<th scope="row">ELK</th>
								<td>Open source log analysis platform</td>
								<td>1</td>


							</tr>
							<tr>
								<th scope="row">Kubernetes Cluster</th>
								<td>Container Orchestration System</td>
								<td>1 Cluster (3 Nodes)</td>
								<td>Each node machine type n1-standard-1</td>

							</tr>
							<tr class="thead-light">
								<th scope="row" colspan="2">Total VMs</th>
								<th colspan="2">4 VM's + 1 Kubernetes Cluster (3 Nodes)</th>
							</tr>

						</tbody>
					</table>					

					 <span class="text-danger"><b>
							<p id="paraId2"></p> </b></span>
							
						
						<script>

			var result;

			function GetSelectedValue2(){
				var e = document.getElementById("machine-type2");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_east1);
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_east1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_east1);
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_east1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_east1);
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_east1);
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_east1);
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_east1);
        			document.getElementById('paraId2').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_east1);
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_east1);
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId2').innerHTML = "Estimated Cost is  0$";
                                
    				
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

					<input type="hidden" name="stack" id="stack" value="devopsstack" />
					<input type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>


<%-- MEAN Stack Modal --%>
<div class="modal fade text-center" id="MEANModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="MEANModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="MEANModalLongTitle">MEAN
						- Stack Summary</h5>
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
								<td>us-east1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b>  MEAN Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>

					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">MongoDB</th>
								<td>NoSQL Database</td>
								<td rowspan="4">1</td>

								<td rowspan="4"><select class="form-control"
									id="machine-type3" name="machine_type" onchange="GetSelectedValue3()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select></td>
							</tr>
							<tr>
								<th scope="row">Express.js</th>
								<td>Web Application Framework</td>
							</tr>
							<tr>
								<th scope="row">AngularJS</th>
								<td>JavaScript MVC Framework</td>
							</tr>
							<tr>
								<th scope="row">Node.js</th>
								<td>Execution Environment</td>

							</tr>
							<tr class="thead-light">
								<th scope="row" colspan="2">Total VMs</th>
								<th colspan="2">1</th>
							</tr>

						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId3"></p></b></span>
							
							
							
							<script>

			var result;

			function GetSelectedValue3(){
				var e = document.getElementById("machine-type3");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_east1);
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_east1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_east1);
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_east1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_east1);
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_east1);
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_east1);
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_east1);
        			document.getElementById('paraId3').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_east1);
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_east1);
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId3').innerHTML = "Estimated Cost is  0$";
                                
    				
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

					<input type="hidden" name="stack" id="stack" value="MEAN"/> <input
						type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>



<%-- MERN Stack Modal --%>
<div class="modal fade text-center" id="MERNModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="MERNModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="MERNModalLongTitle">MERN
						- Stack Summary</h5>
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
								<td>us-east1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b>  MERN Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>

					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">MongoDB</th>
								<td>NoSQL Database</td>
								<td rowspan="4">1</td>

								<td rowspan="4"><select class="form-control"
									id="machine-type4" name="machine_type" onchange="GetSelectedValue4()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select></td>
							</tr>
							<tr>
								<th scope="row">Express.js</th>
								<td>Web Application Framework</td>
							</tr>
							<tr>
								<th scope="row">React.js</th>
								<td>JavaScript MVC Framework</td>
							</tr>
							<tr>
								<th scope="row">Node.js</th>
								<td>Execution Environment</td>

							</tr>
							<tr class="thead-light">
								<th scope="row" colspan="2">Total VMs</th>
								<th colspan="2">1</th>
							</tr>

						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId4"></p></b></span>
							
							<script>

			var result;

			function GetSelectedValue4(){
				var e = document.getElementById("machine-type4");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_east1);
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_east1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_east1);
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_east1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_east1);
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_east1);
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_east1);
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_east1);
        			document.getElementById('paraId4').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_east1);
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_east1);
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId4').innerHTML = "Estimated Cost is  0$";
                                
    				
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

					<input type="hidden" name="stack" id="stack" value="MERN" /> <input
						type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>



<%--Analytics Stack Modal --%>

<div class="modal fade text-center" id="AnalyticsModalStackCenter"
	tabindex="-1" role="dialog"
	aria-labelledby="AnalyticsModalStackCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="AnalyticsModalStackLongTitle">Analytics
						- Stack Summary</h5>
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
								<td>us-east1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> Analytics Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>

					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">Analytics Stack Items/Services</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">BigQuery (Dataset & Table)</th>
								<td>RESTful web service that enables interactive analysis of massive datasets working in conjunction with Google Storage</td>
								<td>2 (1 Dataset + 1 Table)</td>


								

							</tr>
							<tr>
								<th scope="row">Cloud Pub/Sub</th>
								<td>Real-time messaging service for independent applications to publish & subscribe to asynchronous events</td>
								<td>1 Cloud Pub/Sub Topic</td>
							</tr>
							<tr>
								<th scope="row">Cloud Scheduler</th>
								<td>Fully managed enterprise-grade cron job scheduler</td>
								<td>1 Cloud Scheduler Job</td>

							</tr>
							<tr>
								<th scope="row">Cloud Storage Bucket</th>
								<td>Object Storage</td>
								<td>1 Storage Bucket</td>


							</tr>
							<tr>
								<th scope="row">Cloud Dataflow</th>
								<td>Stream and batch data processing service</td>
								<td>1 Cloud Dataflow Job</td>
								

							</tr>
							<tr class="thead-light">
								<th scope="row" colspan="2">Total Items/Services</th>
								<th colspan="2">6</th>
							</tr>

						</tbody>
					</table>

					Estimated costs: <span class="text-danger"><b>
							$13.61/month</b></span>
				</div>
				<div class="modal-footer">

					<input type="hidden" name="stack" id="stack" value="analytics" />
					<input type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>



<%-- WordPress Stack Modal --%>
<div class="modal fade text-center" id="WPModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="WPModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="WPModalCenterTitle">DevOps
						- Stack Summary</h5>
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
								<td>us-east1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b> WordPress Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>


					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">VM's / CloudSQL</th>
								<th scope="col">Machine type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">WordPress</th>
								<td>WordPress is a content management system based on PHP
									and MySQL</td>
								<td>1</td>


								<td rowspan="3"><select class="form-control"
									id="machine-type5" name="machine_type" onchange="GetSelectedValue5()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select> This will be the machine type for both the VM's, (i.e WordPress
									& ELK)</td>

							</tr>
							<tr>
								<th scope="row">ELK</th>
								<td>Open source log analysis platform</td>
								<td>1</td>

							</tr>
							<tr>
								<th scope="row">Cloud SQL</th>
								<td>Cloud SQL is a fully-managed database service that
									makes it easy to set up, maintain, manage, and administer your
									relational databases on Google Cloud Platform.</td>
								<td>1</td>

							</tr>

							<tr class="thead-light">
								<th scope="row" colspan="2">Total VMs</th>
								<th colspan="2">2
									VM's + &nbsp;&nbsp;&nbsp;&nbsp;1 CloudSQL(MySQL)</th>
							</tr>

						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId5"></p></b></span>
							
							<script>

			var result;

			function GetSelectedValue5(){
				var e = document.getElementById("machine-type5");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_east1);
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_east1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_east1);
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_east1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_east1);
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_east1);
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_east1);
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_east1);
        			document.getElementById('paraId5').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_east1);
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_east1);
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId5').innerHTML = "Estimated Cost is  0$";
                                
    				
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

					<input type="hidden" name="stack" id="stack" value="wordpress" />
					<input type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>



<%-- ELK Stack Modal --%>
<div class="modal fade text-center" id="ELKModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="ELKModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="ELKModalLongTitle">ELK
						- Stack Summary</h5>
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
								<td>us-east1</td>
							</tr>

						</tbody>
					</table>


					<p class="text-primary">
						<b>  ELK Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>

					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">Elasticsearch</th>
								<td>NoSQL Database (Lucene Search Engine)</td>
								<td rowspan="3">1</td>

								<td rowspan="4"><select class="form-control"
									id="machine-type6" name="machine_type" onchange="GetSelectedValue6()">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select></td>
							</tr>
							<tr>
								<th scope="row">Logstash</th>
								<td>Log Pipeline Tool</td>
							</tr>
							<tr>
								<th scope="row">Kibana</th>
								<td>Visualization layer on top of Elasticsearch</td>
							</tr>
							
							<tr class="thead-light">
								<th scope="row" colspan="2">Total VMs</th>
								<th colspan="2">1</th>
							</tr>

						</tbody>
					</table>

					 <span class="text-danger"><b>
							<p id="paraId6"></p></b></span>
							
							<script>

			var result;

			function GetSelectedValue6(){
				var e = document.getElementById("machine-type6");
				 result = e.options[e.selectedIndex].value;
                                 
                           
				if(result == "n1-standard-1"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD1.us_east1);
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD1.us_east1 + "$ per hour";
                                
    				})
				})
				}


				if(result == "n1-standard-2"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD2.us_east1);
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD2.us_east1 + "$ per hour";
                                
    				})
				})
				}
			
				if(result == "n1-standard-4"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD4.us_east1);
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD4.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-8"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD8.us_east1);
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD8.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-16"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD16.us_east1);
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD16.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-32"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD32.us_east1);
        			document.getElementById('paraId6').innerHTML ="Estimated Cost is  " +   data.gcp_price_list.STANDARD32.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-64"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD64.us_east1);
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD64.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "n1-standard-96"){
				fetch('https://storage.googleapis.com/hostapi/pricelist.json').then((res)=> {
    				res.json().then((data) => {                                
        			console.log(data.gcp_price_list.STANDARD96.us_east1);
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  " +  data.gcp_price_list.STANDARD96.us_east1 + "$ per hour";
                                
    				})
				})
				}

				if(result == "None"){
		
        			document.getElementById('paraId6').innerHTML = "Estimated Cost is  0$";
                                
    				
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

					<input type="hidden" name="stack" id="stack" value="ELK" /> <input
						type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
		</div>
	</div>
</div>




<!-- <div class="modal fade text-center" id="WPModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="WPModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<form id="myForm" action="trigger" method="post">
				<div class="modal-header">
					<h5 class="modal-title text-primary" id="WPModalCenterTitle">WordPress
						- Stack Summary</h5>
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
						<b> WordPress Stack Details</b>
					</p>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1">Stack
								Name</span>
						</div>
						<input type="text" class="form-control" name="stack_name"
							placeholder="Stack Name" required="required"
							aria-label="Stack Name" aria-describedby="basic-addon1">
					</div>
					<table class="table table-bordered border-primary"
						style="margin-top: 2%; margin-bottom: 2%;">
						<thead>
							<tr class="thead-light">
								<th scope="col">Stack</th>
								<th scope="col">Description</th>
								<th scope="col">VMs</th>
								<th scope="col">Machine type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">WordPress</th>
								<td>WordPress is a content management system based on PHP and MySQL</td>
								<td rowspan="5">1</td>


								<td rowspan="2"><select class="form-control"
									id="machine-type" name="machine_type">
										<option value="n1-standard-1">n1-standard-1</option>
										<option value="n1-standard-2">n1-standard-2</option>
										<option value="n1-standard-4">n1-standard-4</option>
										<option value="n1-standard-8">n1-standard-8</option>
										<option value="n1-standard-16">n1-standard-16</option>
										<option value="n1-standard-32">n1-standard-32</option>
										<option value="n1-standard-64">n1-standard-64</option>
										<option value="n1-standard-96">n1-standard-96</option>

								</select></td>
							</tr>
						
							<tr>
								<th scope="row">ELK</th>
								<td>Open source log analysis platform</td>

							</tr>
							
							<tr>
								<th scope="row">Cloud SQL</th>
								<td>Cloud SQL is a fully-managed database service that makes it easy to set up, maintain, manage, and administer your relational databases on Google Cloud Platform. </td>
							</tr>
						
						
							<tr class="thead-light">
								<th scope="row">Total VMs</th>
								<th>2 VM's + 1 Cloud SQL (MySQL)</th>
							</tr>

						</tbody>
					</table>

					Estimated costs: <span class="text-danger"><b>
							$13.61/month</b></span>
				</div>
				<div class="modal-footer">

					<input type="hidden" name="stack" id="stack" value="wordpress" /> <input
						type="hidden" name="builttype" id="builttype" value="stack" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>

				</div>
			</form>
			</div>
	</div>	
</div> -->






