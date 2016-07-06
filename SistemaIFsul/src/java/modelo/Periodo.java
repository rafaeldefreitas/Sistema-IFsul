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
@Table(name = "periodo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Periodo.findAll", query = "SELECT p FROM Periodo p"),
    @NamedQuery(name = "Periodo.findByPeriodo", query = "SELECT p FROM Periodo p WHERE p.periodo = :periodo"),
    @NamedQuery(name = "Periodo.findByAnosemestre", query = "SELECT p FROM Periodo p WHERE p.anosemestre = :anosemestre")})
public class Periodo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "periodo")
    private Integer periodo;
    @Basic(optional = false)
    @Column(name = "anosemestre")
    private String anosemestre;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "periodo")
    private Collection<PlanoDeEnsino> planoDeEnsinoCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "periodo")
    private Collection<Monitoria> monitoriaCollection;

    public Periodo() {
    }

    public Periodo(Integer periodo) {
        this.periodo = periodo;
    }

    public Periodo(Integer periodo, String anosemestre) {
        this.periodo = periodo;
        this.anosemestre = anosemestre;
    }

    public Integer getPeriodo() {
        return periodo;
    }

    public void setPeriodo(Integer periodo) {
        this.periodo = periodo;
    }

    public String getAnosemestre() {
        return anosemestre;
    }

    public void setAnosemestre(String anosemestre) {
        this.anosemestre = anosemestre;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (periodo != null ? periodo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Periodo)) {
            return false;
        }
        Periodo other = (Periodo) object;
        if ((this.periodo == null && other.periodo != null) || (this.periodo != null && !this.periodo.equals(other.periodo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return this.anosemestre;
    }
    
}
