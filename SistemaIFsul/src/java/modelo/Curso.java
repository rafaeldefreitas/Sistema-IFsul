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
@Table(name = "curso")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Curso.findAll", query = "SELECT c FROM Curso c"),
    @NamedQuery(name = "Curso.findByCurso", query = "SELECT c FROM Curso c WHERE c.curso = :curso"),
    @NamedQuery(name = "Curso.findByNome", query = "SELECT c FROM Curso c WHERE c.nome = :nome")})
public class Curso implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curso")
    private String curso;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "curso")
    private Collection<Disciplina> disciplinaCollection;

    public Curso() {
    }

    public Curso(String curso) {
        this.curso = curso;
    }

    public Curso(String curso, String nome) {
        this.curso = curso;
        this.nome = nome;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @XmlTransient
    public Collection<Disciplina> getDisciplinaCollection() {
        return disciplinaCollection;
    }

    public void setDisciplinaCollection(Collection<Disciplina> disciplinaCollection) {
        this.disciplinaCollection = disciplinaCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (curso != null ? curso.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Curso)) {
            return false;
        }
        Curso other = (Curso) object;
        if ((this.curso == null && other.curso != null) || (this.curso != null && !this.curso.equals(other.curso))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return nome;
    }
    
}
