import io.cucumber.java.PendingException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Conta {

    // Define uma etapa de pré-condição onde um cliente especial tem um saldo negativo
    @Given("^um cliente especial com saldo atual de -(\\d+) reais$")
    public void um_cliente_especial_com_saldo_atual_de_reais(int arg1) throws Throwable {
        // Código para implementar a pré-condição aqui
        throw new PendingException(); // Exceção lançada para indicar que a implementação está pendente
    }

    // Define uma etapa onde é solicitado um saque de determinado valor
    @When("^for solicitado um saque no valor de (\\d+) reais$")
    public void for_solicitado_um_saque_no_valor_de_reais(int arg1) throws Throwable {
        // Código para implementar a ação de solicitar o saque aqui
        throw new PendingException(); // Exceção lançada para indicar que a implementação está pendente
    }

    // Define uma etapa onde o saque deve ser efetuado e o saldo atualizado
    @Then("^deve efetuar o saque e atualizar o saldo da conta para -(\\d+) reais$")
    public void deve_efetuar_o_saque_e_atualizar_o_saldo_da_conta_para_reais(int arg1) throws Throwable {
        // Código para implementar a validação de efetuar o saque e atualizar o saldo aqui
        throw new PendingException(); // Exceção lançada para indicar que a implementação está pendente
    }

    // Define uma etapa opcional para verificar mais resultados
    @Then("^check more outcomes$")
    public void check_more_outcomes() throws Throwable {
        // Código para verificar mais resultados aqui
        throw new PendingException(); // Exceção lançada para indicar que a implementação está pendente
    }
}