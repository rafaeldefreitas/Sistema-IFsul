package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.PlanoDeEnsino;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-06T04:09:39")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, String> senha;
    public static volatile SingularAttribute<Usuario, String> nome;
    public static volatile SingularAttribute<Usuario, String> usuario;
    public static volatile CollectionAttribute<Usuario, PlanoDeEnsino> planoDeEnsinoCollection;
    public static volatile SingularAttribute<Usuario, String> eMail;
    public static volatile SingularAttribute<Usuario, Boolean> perfil;

}