package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.PlanoDeEnsino;

public class PlanoDeEnsinoDAO {
    EntityManager em;
    
    public PlanoDeEnsinoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    public PlanoDeEnsino buscarPorChavePrimaria(Integer chave)
    {
        return em.find(PlanoDeEnsino.class, chave);
    }
    
    public void incluir(PlanoDeEnsino obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
            
        }
        
    }

    public List<PlanoDeEnsino> listar() throws Exception {
        return em.createNamedQuery("PlanoDeEnsino.findAll").getResultList();
    }
    
    public void alterar(PlanoDeEnsino obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public Boolean excluir(PlanoDeEnsino obj) throws Exception {
        
        Boolean retorno;
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
            retorno = true;
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            retorno = false;
        } finally {
            em.close();
        }
        
        return retorno;
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}