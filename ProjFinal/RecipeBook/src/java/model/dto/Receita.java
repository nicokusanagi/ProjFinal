
package model.dto;


public class Receita {
 private int id;   
 private String nome;
 private String descricao;
 private double tempo_preparo;
 private double rendimento;
 private String ingredientes;
 private String modo_preparo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getTempo_preparo() {
        return tempo_preparo;
    }

    public void setTempo_preparo(int tempo_preparo) {
        this.tempo_preparo = tempo_preparo;
    }

    public double getRendimento() {
        return rendimento;
    }

    public void setRendimento(int rendimento) {
        this.rendimento = rendimento;
    }

    public String getIngredientes() {
        return ingredientes;
    }

    public void setIngredientes(String ingredientes) {
        this.ingredientes = ingredientes;
    }

    public String getModo_preparo() {
        return modo_preparo;
    }

    public void setModo_preparo(String modo_preparo) {
        this.modo_preparo = modo_preparo;
    }
 
 
 }
