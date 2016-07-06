package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Curso;
import modelo.Monitoria;
import modelo.PlanoDeEnsino;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-06T04:09:38")
@StaticMetamodel(Disciplina.class)
public class Disciplina_ { 

    public static volatile SingularAttribute<Disciplina, Curso> curso;
    public static volatile SingularAttribute<Disciplina, String> disciplina;
    public static volatile CollectionAttribute<Disciplina, Monitoria> monitoriaCollection;
    public static volatile SingularAttribute<Disciplina, String> nome;
    public static volatile CollectionAttribute<Disciplina, PlanoDeEnsino> planoDeEnsinoCollection;

}