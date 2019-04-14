///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package Api;
//import java.io.BufferedReader;
//import java.io.DataOutputStream;
//import java.io.InputStreamReader;
//import java.net.URL;
//import javax.net.ssl.HttpsURLConnection;
//import com.mashape.unirest.http.HttpResponse;
//import com.mashape.unirest.http.Unirest;
//import com.mashape.unirest.http.exceptions.UnirestException;
//
//
//public class PayPalApi {
//	public static void main(String[] args) {
//		try {
//			String url = "https://api.sandbox.paypal.com/v1/oauth2/token";
//			URL obj = new URL(url);
//			HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
//			con.setRequestMethod("POST");
//			con.setRequestProperty("accept", "application/json");
//			con.setRequestProperty("accept-language", "en_US");
//			con.setRequestProperty("content-type", "application/x-www-form-urlencoded");
//			con.setRequestProperty("authorization", "basic QWYtWlB1ZF84WE1jaF9jU0ZXSzJHaGJBMzE5SnA3eW1XR1BIOUtMckhpTi00cU9vOWEwOVBOdWF2d2VTR2ZuYWhTUUdnQ2REeGpwaUxYWGg6RU9EUm5QR2JOZXBYT1FnMUh5MEVRQWVrWHltMjdGVkJEdjdFcU1KNVBXYTFGWC1GU243S1dlTkxvYUw4dHN0Mmx5bE15bGxsdXF2VWhGMGc=");
//			String body = "grant_type=client_credentials";
//
//			// Send request
//			con.setDoOutput(true);
//			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
//			wr.writeBytes(body);
//			wr.flush();
//			wr.close();
//
//			BufferedReader in = new BufferedReader(
//				new InputStreamReader(con.getInputStream()));
//			String inputLine;
//			StringBuffer response = new StringBuffer();
//			while ((inputLine = in.readLine()) != null) {
//				response.append(inputLine);
//			}
//			in.close();
//
//			// Print the response
//			System.out.println(response.toString());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//                try {
//			// APEX examples for PATCH calls use Unirest library as HttpsURLConnection does not support PATCH method without a workaround
//			HttpResponse<String> response = Unirest.patch("https://api.sandbox.paypal.com/v2/checkout/orders/5O190127TN364715T")
//  			.header("accept", "application/json")
//  			.header("content-type", "application/json")
//  			.header("accept-language", "en_US")
//  			.header("authorization", "Bearer A21AAEcSK3KszdEhQsuX_nif8dun26xd4aT-RUPrnNvCNFNNg8o4SPnJMZOmxPMlMUFs545RAeA-ONjLilgL0Ndppvx7MJfhA")
//  			.body("[" +
//				"  {" +
//				"    \"op\": \"replace\"," +
//				"    \"path\": \"/purchase_units/@reference_id=='PUHF'/amount\"," +
//				"    \"value\": {" +
//				"      \"currency_code\": \"USD\"," +
//				"      \"value\": \"200.00\"," +
//				"      \"breakdown\": {" +
//				"        \"item_total\": {" +
//				"          \"currency_code\": \"USD\"," +
//				"          \"value\": \"180.00\"" +
//				"        }," +
//				"        \"shipping\": {" +
//				"          \"currency_code\": \"USD\"," +
//				"          \"value\": \"20.00\"" +
//				"        }" +
//				"      }" +
//				"    }" +
//				"  }" +
//				"]")
//  			.asString();
//  			System.out.println(response.getBody());
//  			System.out.println(response.getStatus());
//  		} catch (UnirestException e) {
//			throw new IllegalStateException(e);
//		}
//                try {
//			String url = "https://api.sandbox.paypal.com/v2/checkout/orders/5O190127TN364715T/capture";
//			URL obj = new URL(url);
//			HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
//			con.setRequestMethod("POST");
//			con.setRequestProperty("content-type", "application/json");
//			con.setRequestProperty("authorization", "Bearer A21AAEcSK3KszdEhQsuX_nif8dun26xd4aT-RUPrnNvCNFNNg8o4SPnJMZOmxPMlMUFs545RAeA-ONjLilgL0Ndppvx7MJfhA");
//			con.setRequestProperty("paypal-request-id", "7b92603e-77ed-4896-8e78-5dea2050476a");
//			BufferedReader in = new BufferedReader(
//				new InputStreamReader(con.getInputStream()));
//			String inputLine;
//			StringBuffer response = new StringBuffer();
//			while ((inputLine = in.readLine()) != null) {
//				response.append(inputLine);
//			}
//			in.close();
//
//			// Print the response
//			System.out.println(response.toString());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//}
//                
//}
//        
