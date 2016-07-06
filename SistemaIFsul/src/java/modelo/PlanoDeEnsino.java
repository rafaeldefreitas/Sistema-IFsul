/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rafaelfreitas
 */
@Entity
@Table(name = "plano_de_ensino")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PlanoDeEnsino.findAll", query = "SELECT p FROM PlanoDeEnsino p"),
    @NamedQuery(name = "PlanoDeEnsino.findByPlano", query = "SELECT p FROM PlanoDeEnsino p WHERE p.plano = :plano"),
    @NamedQuery(name = "PlanoDeEnsino.findByDataEnvio", query = "SELECT p FROM PlanoDeEnsino p WHERE p.dataEnvio = :dataEnvio"),
    @NamedQuery(name = "PlanoDeEnsino.findByStatus", query = "SELECT p FROM PlanoDeEnsino p WHERE p.status = :status"),
    @NamedQuery(name = "PlanoDeEnsino.findByArquivo", query = "SELECT p FROM PlanoDeEnsino p WHERE p.arquivo = :arquivo")})
public class PlanoDeEnsino implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "plano")
    private Integer plano;
    @Basic(optional = false)
    @Column(name = "data_envio")
    private String dataEnvio;
    @Basic(optional = false)
    @Column(name = "status")
    private boolean status;
    @Basic(optional = false)
    @Column(name = "arquivo")
    private String arquivo;
    @JoinColumn(name = "disciplina", referencedColumnName = "disciplina")
    @ManyToOne(optional = false)
    private Disciplina disciplina;
    @JoinColumn(name = "periodo", referencedColumnName = "periodo")
    @ManyToOne(optional = false)
    private Periodo periodo;
    @JoinColumn(name = "usuario", referencedColumnName = "usuario")
    @ManyToOne(optional = false)
    private Usuario usuario;

    public PlanoDeEnsino() {
    }

    public PlanoDeEnsino(Integer plano) {
        this.plano = plano;
    }

    public PlanoDeEnsino(Integer plano, String dataEnvio, boolean status, String arquivo) {
        this.plano = plano;
        this.dataEnvio = dataEnvio;
        this.status = status;
        this.arquivo = arquivo;
    }

    public Integer getPlano() {
        return plano;
    }

    public void setPlano(Integer plano) {
        this.plano = plano;
    }

    public String getDataEnvio() {
        return dataEnvio;
    }

    public void setDataEnvio(String dataEnvio) {
        this.dataEnvio = dataEnvio;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getArquivo() {
        return arquivo;
    }

    public void setArquivo(String arquivo) {
        this.arquivo = arquivo;
    }

    public Disciplina getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(Disciplina disciplina) {
        this.disciplina = disciplina;
    }

    public Periodo getPeriodo() {
        return periodo;
    }

    public void setPeriodo(Periodo periodo) {
        this.periodo = periodo;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (plano != null ? plano.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PlanoDeEnsino)) {
            return false;
        }
        PlanoDeEnsino other = (PlanoDeEnsino) object;
        if ((this.plano == null && other.plano != null) || (this.plano != null && !this.plano.equals(other.plano))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.PlanoDeEnsino[ plano=" + plano + " ]";
    }
    
}
