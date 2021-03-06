package com.cantilever.routes;

import com.cantilever.Config;
import com.sun.net.httpserver.Headers;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;

import static com.cantilever.models.Users.signIn;
import static com.cantilever.routes.Helpers.renderHTMLPage;


public class LoginHandler  implements HttpHandler {

    LogManager logManager = LogManager.getLogManager();
    Logger logger = logManager.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    public void handle(HttpExchange exchange) throws IOException {

        String userData = new String(exchange.getRequestBody().readAllBytes());
        JSONParser parser = new JSONParser();
        try {
            JSONObject user = (JSONObject) parser.parse(userData);
            if(signIn(user.get("name").toString(), user.get("password").toString())){
                System.out.println("YES");
                Headers headers = exchange.getResponseHeaders();
                headers.add("Content-Type", "text/HTML");
                headers.add("Access-Control-Allow-Origin", "*");
                String response = Config.ROOT + "findBuses";
                exchange.sendResponseHeaders(200, response.length());
                OutputStream outputStream = exchange.getResponseBody();
                outputStream.write(response.getBytes());
                outputStream.close();
            }
            else {
                renderHTMLPage(exchange, "login.html");
            }
            String logMessage = exchange.getRequestMethod() +  exchange.getRequestURI().toString() + " " + exchange.getResponseCode();
            logger.log(Level.INFO, logMessage);
        } catch (ParseException | SQLException e) {
            e.printStackTrace();
        }

    }

}
