package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Monitoria;

public class MonitoriaDAO {
    EntityManager em;
    
    public MonitoriaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    public Monitoria buscarPorChavePrimaria(Integer chave)
    {
        return em.find(Monitoria.class, chave);
    }
    
    public void incluir(Monitoria obj) throws Exception {
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

    public List<Monitoria> listar() throws Exception {
        return em.createNamedQuery("Monitoria.findAll").getResultList();
    }
    
    public void alterar(Monitoria obj) throws Exception {
        
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
    
    public Boolean excluir(Monitoria obj) throws Exception {
        
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
