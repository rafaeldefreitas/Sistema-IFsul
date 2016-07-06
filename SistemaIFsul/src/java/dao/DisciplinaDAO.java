package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Disciplina;


public class DisciplinaDAO {
    EntityManager em;
    
    public DisciplinaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    public Disciplina buscarPorChavePrimaria(String chave)
    {
        return em.find(Disciplina.class, chave);
    }
    
    public void incluir(Disciplina obj) throws Exception {
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

    public List<Disciplina> listar() throws Exception {
        return em.createNamedQuery("Disciplina.findAll").getResultList();
    }
    
    public void alterar(Disciplina obj) throws Exception {
        
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
    
    public Boolean excluir(Disciplina obj) throws Exception {
        
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
