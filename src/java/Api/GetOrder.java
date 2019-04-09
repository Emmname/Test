/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Api;

/**
 *
 * @author D00195567
 */
import java.io.IOException;

import org.json.JSONObject;

import com.braintreepayments.http.HttpResponse;
import com.braintreepayments.http.serializer.Json;
import com.paypal.orders.Order;
import com.paypal.orders.OrdersGetRequest;
import org.json.JSONException;

/*
*
*1. Import the PayPal SDK client that was created in `Set up the Server SDK`.
*This step extends the SDK client.  It's not mandatory to extend the client, you can also inject it.
*/
public class GetOrder extends PayPalClient {

  //2. Set up your server to receive a call from the client
  /**
   *Method to perform sample GET on an order
   *
   *@throws IOException Exceptions from the API, if any
   */
  public void getOrder(String orderId) throws IOException, JSONException {
    OrdersGetRequest request = new OrdersGetRequest(orderId);
    //3. Call PayPal to get the transaction
    HttpResponse<Order> response = client().execute(request);
    //4. Save the transaction in your database. Implement logic to save transaction to your database for future reference.
    System.out.println("Full response body:");
    System.out.println(new JSONObject(new Json().serialize(response.result())).toString(4));
  }

  /**
   *This is the driver method that invokes the getOrder function with
   *order ID to retrieve order details.
   *
   *To get the correct order ID, this sample uses createOrder to create
   *a new order and then uses the newly-created order ID as a
   *parameter to getOrder.
   *
   *@param args
   *@throws IOException
   */
  public static void main(String[] args) throws IOException {
    new GetOrder().getOrder("REPLACE-WITH-VALID-ORDER-ID");
  }
}
