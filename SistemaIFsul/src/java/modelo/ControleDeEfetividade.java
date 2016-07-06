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
@Table(name = "controle_de_efetividade")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ControleDeEfetividade.findAll", query = "SELECT c FROM ControleDeEfetividade c"),
    @NamedQuery(name = "ControleDeEfetividade.findByControleDeEfetividade", query = "SELECT c FROM ControleDeEfetividade c WHERE c.controleDeEfetividade = :controleDeEfetividade"),
    @NamedQuery(name = "ControleDeEfetividade.findByRelatorio", query = "SELECT c FROM ControleDeEfetividade c WHERE c.relatorio = :relatorio")})
public class ControleDeEfetividade implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "controle_de_efetividade")
    private Integer controleDeEfetividade;
    @Basic(optional = false)
    @Column(name = "relatorio")
    private String relatorio;
    @JoinColumn(name = "monitoria", referencedColumnName = "monitoria")
    @ManyToOne(optional = false)
    private Monitoria monitoria;

    public ControleDeEfetividade() {
    }

    public ControleDeEfetividade(Integer controleDeEfetividade) {
        this.controleDeEfetividade = controleDeEfetividade;
    }

    public ControleDeEfetividade(Integer controleDeEfetividade, String relatorio) {
        this.controleDeEfetividade = controleDeEfetividade;
        this.relatorio = relatorio;
    }

    public Integer getControleDeEfetividade() {
        return controleDeEfetividade;
    }

    public void setControleDeEfetividade(Integer controleDeEfetividade) {
        this.controleDeEfetividade = controleDeEfetividade;
    }

    public String getRelatorio() {
        return relatorio;
    }

    public void setRelatorio(String relatorio) {
        this.relatorio = relatorio;
    }

    public Monitoria getMonitoria() {
        return monitoria;
    }

    public void setMonitoria(Monitoria monitoria) {
        this.monitoria = monitoria;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (controleDeEfetividade != null ? controleDeEfetividade.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ControleDeEfetividade)) {
            return false;
        }
        ControleDeEfetividade other = (ControleDeEfetividade) object;
        if ((this.controleDeEfetividade == null && other.controleDeEfetividade != null) || (this.controleDeEfetividade != null && !this.controleDeEfetividade.equals(other.controleDeEfetividade))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return relatorio;
    }
    
}
