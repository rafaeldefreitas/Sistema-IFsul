/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author rafaelfreitas
 */
@Entity
@Table(name = "monitoria")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Monitoria.findAll", query = "SELECT m FROM Monitoria m"),
    @NamedQuery(name = "Monitoria.findByProfessor", query = "SELECT m FROM Monitoria m WHERE m.professor = :professor"),
    @NamedQuery(name = "Monitoria.findByEditalDeVinculacao", query = "SELECT m FROM Monitoria m WHERE m.editalDeVinculacao = :editalDeVinculacao"),
    @NamedQuery(name = "Monitoria.findByMonitor", query = "SELECT m FROM Monitoria m WHERE m.monitor = :monitor"),
    @NamedQuery(name = "Monitoria.findByMonitoria", query = "SELECT m FROM Monitoria m WHERE m.monitoria = :monitoria"),
    @NamedQuery(name = "Monitoria.findByStatus", query = "SELECT m FROM Monitoria m WHERE m.status = :status")})
public class Monitoria implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "professor")
    private String professor;
    @Basic(optional = false)
    @Column(name = "edital_de_vinculacao")
    private String editalDeVinculacao;
    @Basic(optional = false)
    @Column(name = "monitor")
    private String monitor;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "monitoria")
    private Integer monitoria;
    @Basic(optional = false)
    @Column(name = "status")
    private boolean status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "monitoria")
    private Collection<ControleDeEfetividade> controleDeEfetividadeCollection;
    @JoinColumn(name = "disciplina", referencedColumnName = "disciplina")
    @ManyToOne(optional = false)
    private Disciplina disciplina;
    @JoinColumn(name = "periodo", referencedColumnName = "periodo")
    @ManyToOne(optional = false)
    private Periodo periodo;

    public Monitoria() {
    }

    public Monitoria(Integer monitoria) {
        this.monitoria = monitoria;
    }

    public Monitoria(Integer monitoria, String professor, String editalDeVinculacao, String monitor, boolean status) {
        this.monitoria = monitoria;
        this.professor = professor;
        this.editalDeVinculacao = editalDeVinculacao;
        this.monitor = monitor;
        this.status = status;
    }

    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }

    public String getEditalDeVinculacao() {
        return editalDeVinculacao;
    }

    public void setEditalDeVinculacao(String editalDeVinculacao) {
        this.editalDeVinculacao = editalDeVinculacao;
    }

    public String getMonitor() {
        return monitor;
    }

    public void setMonitor(String monitor) {
        this.monitor = monitor;
    }

    public Integer getMonitoria() {
        return monitoria;
    }

    public void setMonitoria(Integer monitoria) {
        this.monitoria = monitoria;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @XmlTransient
    public Collection<ControleDeEfetividade> getControleDeEfetividadeCollection() {
        return controleDeEfetividadeCollection;
    }

    public void setControleDeEfetividadeCollection(Collection<ControleDeEfetividade> controleDeEfetividadeCollection) {
        this.controleDeEfetividadeCollection = controleDeEfetividadeCollection;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (monitoria != null ? monitoria.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Monitoria)) {
            return false;
        }
        Monitoria other = (Monitoria) object;
        if ((this.monitoria == null && other.monitoria != null) || (this.monitoria != null && !this.monitoria.equals(other.monitoria))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return this.monitor;
    }
    
}
