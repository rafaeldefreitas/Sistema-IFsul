package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Periodo;

public class PeriodoDAO {
    EntityManager em;
    
    public PeriodoDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    public Periodo buscarPorChavePrimaria(Integer chave)
    {
        return em.find(Periodo.class, chave);
    }
    
    public void incluir(Periodo obj) throws Exception {
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

    public List<Periodo> listar() throws Exception {
        return em.createNamedQuery("Periodo.findAll").getResultList();
    }
    
    public void alterar(Periodo obj) throws Exception {
        
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
    
    public Boolean excluir(Periodo obj) throws Exception {
        
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