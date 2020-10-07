package biz.majorov.expenses

import io.quarkus.test.junit.QuarkusTest
import io.restassured.RestAssured
import io.restassured.RestAssured.given
import io.restassured.parsing.Parser
import org.junit.jupiter.api.Test

open
@QuarkusTest
class ReportApiTest : OAuthTest() {

    @Test
    fun `test get all report for user`() {
        println("${object {}.javaClass.enclosingMethod.name} ")
        println("reports should be get for  specific  user ")
        print("use token:" + OAuthTest.TOKEN)
        given().header("Authorization","Bearer " + OAuthTest.TOKEN)
                .`when`().get("/reports")
                .then()
                .statusCode(200)
    }
}

class SSOClient