package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.ControleDeEfetividade;

public class ControleDeEfetividadeDAO {
    EntityManager em;
    
    public ControleDeEfetividadeDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    public ControleDeEfetividade buscarPorChavePrimaria(Integer chave)
    {
        return em.find(ControleDeEfetividade.class, chave);
    }
    
    public void incluir(ControleDeEfetividade obj) throws Exception {
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

    public List<ControleDeEfetividade> listar() throws Exception {
        return em.createNamedQuery("ControleDeEfetividade.findAll").getResultList();
    }
    
    public void alterar(ControleDeEfetividade obj) throws Exception {
        
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
    
    public Boolean excluir(ControleDeEfetividade obj) throws Exception {
        
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
