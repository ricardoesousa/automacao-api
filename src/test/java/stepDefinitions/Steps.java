package stepDefinitions;

import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Então;
import io.cucumber.java.pt.Quando;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import static org.junit.Assert.assertEquals;

public class Steps {
    private static final String BASE_URL = "https://petstore.swagger.io/";
    private static Response response;

    @Dado("eu acesse a api Petstore e aponte para o endpoint {}")
    public void metodo1(String endpoint) {
        RestAssured.baseURI = BASE_URL;
        RestAssured.basePath = endpoint;
    }

    @Quando("eu fizer uma requisição do tipo POST com os dados do pet: {}, {}, {}, {}, {}")
    public void metodo2(int id, String nome, int id_cat, String categoria, String status) {
        RequestSpecification request = RestAssured.given();
        request.header("Content-Type", "application/json");
        response = request.body("{\n" +
                "    \"id\":" + id + ",\n" +
                "  \"category\": {\n" +
                "    \"id\": " + id_cat + ",\n" +
                "    \"name\": \"" + categoria + "\"\n" +
                "  },\n" +
                "  \"name\": \"" + nome + "\",\n" +
                "  \"status\": \"" + status + "\"\n" +
                "}")
                .log().all().post();
    }

    @Então("eu devo receber uma resposta com o código HTTP {}")
    public void metodo3(int codigo) {
//        System.out.println("Status Code: " + response.getStatusCode() + "\n");
        System.out.println("Response Body: " + response.jsonPath().prettyPrint());
        assertEquals(codigo, response.getStatusCode());
    }

    @Quando("eu fizer uma requisição do tipo POST com os dados do usuário: {}, {}, {}, {}")
    public void metodo4(int id, String usuario, String senha, int status) {
        RequestSpecification request = RestAssured.given();
        request.header("Content-Type", "application/json");
        response = request.body("{\n" +
                "  \"id\": \"" + id + "\",\n" +
                "  \"username\": \"" + usuario + "\",\n" +
                "  \"password\": \"" + senha + "\",\n" +
                "  \"userStatus\": \"" + status + "\"\n" +
                "}")
                .log().all().post();
    }

    @Quando("eu fizer uma requisição do tipo POST com os dados da ordem: {}, {}, {}, {}, {}, {}")
    public void metodo5(int id, int id_pet, int id_usuario, int quantidade, String status, boolean completo) {
        RequestSpecification request = RestAssured.given();
        request.header("Content-Type", "application/json");
        response = request.body("{\n" +
                "  \"id\": " + id + ",\n" +
                "  \"petId\": " + id_pet + ",\n" +
                "  \"userId\": " + id_usuario + ",\n" +
                "  \"quantity\": " + quantidade + ",\n" +
                "  \"status\": \"" + status + "\",\n" +
                "  \"complete\": " + completo + "\n" +
                "}")
                .log().all().post();
    }
}