package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Disciplina;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-06T04:09:39")
@StaticMetamodel(Curso.class)
public class Curso_ { 

    public static volatile CollectionAttribute<Curso, Disciplina> disciplinaCollection;
    public static volatile SingularAttribute<Curso, String> curso;
    public static volatile SingularAttribute<Curso, String> nome;

}