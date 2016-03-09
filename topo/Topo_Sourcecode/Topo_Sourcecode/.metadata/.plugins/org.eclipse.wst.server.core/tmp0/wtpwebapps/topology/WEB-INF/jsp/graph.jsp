<html>
<head>
<%@ include file="template.jsp" %>
</head>
<body>

<h2>Dynamic Data - Neighbourhood Highlight</h2>
<div style="width:800px; font-size:14px;">
  This example shows the power of the DataSet. Once a node is clicked, all nodes are greyed out except for the first and second order connected nodes.
  In this example we show how you can determine the order of connection per node as well as applying individual styling to the nodes based on whether or not
  they are connected to the selected node. The code doing the highlighting only takes about 1ms, the rest of the time is the redrawing of the network (9200 edges..).
  <br /><br />

</div>

<div id="mynetwork" class="imgcontainer"></div>

<script type="text/javascript">
	var nodes = [];
	var edges = [];
	
	var network = null;
	
	var DIR = '${pageContext.servletContext.contextPath}/resources/images/';
	var EDGE_LENGTH_MAIN = 150;
	var EDGE_LENGTH_SUB = 50;
	
	var nodesDataset = new vis.DataSet();
	var edgesDataset = new vis.DataSet();
	var allNodes;
	var highlightActive = false;
	var graphData;

	function getGraphData(){
		$.ajax({
			type : "GET",
			url : "${pageContext.servletContext.contextPath}/getGraphData",
			success : function(data) {
				graphData = data;
				processGraphData();
			},
			error : function(e) {
				console.log("ERROR: ", e);
			},
			done : function(e) {
				console.log("DONE");
			}
		});
	}

	function processGraphData(){
		var nodesList = graphData.nodes;
		var edgesList = graphData.edges;
		
		console.log("Nodes\n");
		for (index in nodesList){
			dataObj = nodesList[index];
			nodes.push({id: dataObj.id, label: dataObj.label, title: dataObj.title, image: dataObj.image, shape: dataObj.shape, meta: dataObj.meta});
			//nodes.push({id: dataObj.id, label: dataObj.label, title: dataObj.title, shape: "dot", meta: dataObj.meta});
		}
		
		console.log("Edges \n");
		for (index in edgesList){
			dataObj = edgesList[index];
			edges.push({from: dataObj.from, to: dataObj.to, length: dataObj.length, dashes:dataObj.dashes});
		}
		draw();
	}

	function draw() {
	// create a network
	var container = document.getElementById('mynetwork');
	nodesDataset.add(nodes);
	edgesDataset.add(edges);
	
	var data = {nodes:nodesDataset, edges:edgesDataset};
	var options = {
			layout : {
				randomSeed : 1
			},
			physics : false,
			interaction : {
				tooltipDelay : 0,
				hideEdgesOnDrag : true
			}
		};
		network = new vis.Network(container, data, options);

		//get a JSON object
		//allNodes = nodes.get({returnType:"Object"});
		allNodes = nodesDataset.get({
			returnType : "Object"
		});
	}
	getGraphData();
	printList();
	//draw();
</script>

</body>
</html>