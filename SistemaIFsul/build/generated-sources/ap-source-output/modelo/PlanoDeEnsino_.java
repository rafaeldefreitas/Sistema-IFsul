package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Disciplina;
import modelo.Periodo;
import modelo.Usuario;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-06T04:09:39")
@StaticMetamodel(PlanoDeEnsino.class)
public class PlanoDeEnsino_ { 

    public static volatile SingularAttribute<PlanoDeEnsino, Periodo> periodo;
    public static volatile SingularAttribute<PlanoDeEnsino, Disciplina> disciplina;
    public static volatile SingularAttribute<PlanoDeEnsino, String> arquivo;
    public static volatile SingularAttribute<PlanoDeEnsino, Integer> plano;
    public static volatile SingularAttribute<PlanoDeEnsino, Usuario> usuario;
    public static volatile SingularAttribute<PlanoDeEnsino, String> dataEnvio;
    public static volatile SingularAttribute<PlanoDeEnsino, Boolean> status;

}