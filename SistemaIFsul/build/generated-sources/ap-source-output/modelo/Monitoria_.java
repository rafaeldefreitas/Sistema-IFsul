package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.ControleDeEfetividade;
import modelo.Disciplina;
import modelo.Periodo;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-06T04:09:39")
@StaticMetamodel(Monitoria.class)
public class Monitoria_ { 

    public static volatile CollectionAttribute<Monitoria, ControleDeEfetividade> controleDeEfetividadeCollection;
    public static volatile SingularAttribute<Monitoria, String> professor;
    public static volatile SingularAttribute<Monitoria, String> editalDeVinculacao;
    public static volatile SingularAttribute<Monitoria, Integer> monitoria;
    public static volatile SingularAttribute<Monitoria, Periodo> periodo;
    public static volatile SingularAttribute<Monitoria, Disciplina> disciplina;
    public static volatile SingularAttribute<Monitoria, String> monitor;
    public static volatile SingularAttribute<Monitoria, Boolean> status;

}