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
@Table(name = "disciplina")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Disciplina.findAll", query = "SELECT d FROM Disciplina d"),
    @NamedQuery(name = "Disciplina.findByDisciplina", query = "SELECT d FROM Disciplina d WHERE d.disciplina = :disciplina"),
    @NamedQuery(name = "Disciplina.findByNome", query = "SELECT d FROM Disciplina d WHERE d.nome = :nome")})
public class Disciplina implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "disciplina")
    private String disciplina;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "disciplina")
    private Collection<PlanoDeEnsino> planoDeEnsinoCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "disciplina")
    private Collection<Monitoria> monitoriaCollection;
    @JoinColumn(name = "curso", referencedColumnName = "curso")
    @ManyToOne(optional = false)
    private Curso curso;

    public Disciplina() {
    }

    public Disciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public Disciplina(String disciplina, String nome) {
        this.disciplina = disciplina;
        this.nome = nome;
    }

    public String getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @XmlTransient
    public Collection<PlanoDeEnsino> getPlanoDeEnsinoCollection() {
        return planoDeEnsinoCollection;
    }

    public void setPlanoDeEnsinoCollection(Collection<PlanoDeEnsino> planoDeEnsinoCollection) {
        this.planoDeEnsinoCollection = planoDeEnsinoCollection;
    }

    @XmlTransient
    public Collection<Monitoria> getMonitoriaCollection() {
        return monitoriaCollection;
    }

    public void setMonitoriaCollection(Collection<Monitoria> monitoriaCollection) {
        this.monitoriaCollection = monitoriaCollection;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (disciplina != null ? disciplina.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Disciplina)) {
            return false;
        }
        Disciplina other = (Disciplina) object;
        if ((this.disciplina == null && other.disciplina != null) || (this.disciplina != null && !this.disciplina.equals(other.disciplina))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return nome;
    }
    
}
