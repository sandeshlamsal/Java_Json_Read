package san.com;

import java.io.File;
import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

public class San {
	

	
	public static void main(String[] args) {
		
		//reading from string	
		ObjectMapper om = new ObjectMapper();
		String str = "{ \"brand\" : \"Mercedes\", \"doors\" : 5 }";
		
		try {

		    JsonNode node = om.readValue(str, JsonNode.class);
		    
		    JsonNode brandnode=node.get("brand");
		    String brand=brandnode.asText();
		    System.out.println("brand:"+brand);
		    
		    JsonNode branddoors=node.get("doors");
		    String doors=branddoors.asText();
		    System.out.println("doors :"+doors);
		    	    
		    
		} 	
		catch (IOException e) {
		    e.printStackTrace();
		}
		
		
		
		/*
		 {
	            "type": "Toyota",
	            "values": ["LE","AVALON","CAMERY"]
	      }    
        */
		//reading from json file.
		ObjectMapper objectMapper = new ObjectMapper();
		///System.out.println(System.getProperty("user.dir"));
		try{
		File file = new File("car.json");
		System.out.println(file.getName());
		JsonNode root = objectMapper.readValue(file, JsonNode.class);
		
		//System.out.println(node1.asText());
		JsonNode ntype=root.get("type");
		String strtype=ntype.asText();
		System.out.println(strtype);
		
		JsonNode contactNode = root.path("values");
		
		for (JsonNode node : contactNode) {
			String type = node.asText();
			
			System.out.println("ref : " + type);
		}
		
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}
		}
	
}
