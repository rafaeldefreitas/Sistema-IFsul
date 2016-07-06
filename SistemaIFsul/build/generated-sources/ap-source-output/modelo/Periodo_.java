package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Monitoria;
import modelo.PlanoDeEnsino;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-06T04:09:39")
@StaticMetamodel(Periodo.class)
public class Periodo_ { 

    public static volatile SingularAttribute<Periodo, String> anosemestre;
    public static volatile SingularAttribute<Periodo, Integer> periodo;
    public static volatile CollectionAttribute<Periodo, Monitoria> monitoriaCollection;
    public static volatile CollectionAttribute<Periodo, PlanoDeEnsino> planoDeEnsinoCollection;

}