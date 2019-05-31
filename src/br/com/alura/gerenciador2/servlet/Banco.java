package br.com.alura.gerenciador2.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

    private static List<Empresa> lista = new ArrayList<Empresa>();
    private static Integer chaveSequencial = 1;

    public void adiciona(Empresa empresa){
        empresa.setId(Banco.chaveSequencial++);
        Banco.lista.add(empresa);
    }
    public static List<Empresa> getEmpresas(){
        return Banco.lista;
    }
    public void removeEmpresa(Integer id){
        Iterator<Empresa> it = lista.iterator();

        while (it.hasNext()){
            Empresa emp = it.next();

            if (emp.getId() == id){
                it.remove();
            }
        }
    }
    public Empresa buscaEmpresaPelaId(Integer id){
        for (Empresa empresa : lista){
            if (empresa.getId() == id){
                return empresa;
            }
        }
        return null;
    }
}
