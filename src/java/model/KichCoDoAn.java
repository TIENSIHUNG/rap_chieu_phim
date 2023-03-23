package model;
// Generated Nov 7, 2018 7:54:44 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;

/**
 * KichCoDoAn generated by hbm2java
 */
public class KichCoDoAn implements java.io.Serializable {

    private String id;
    private String ten;
    private Set<DoAnChiTiet> doAnChiTiets = new HashSet<DoAnChiTiet>(0);

    public KichCoDoAn() {
    }

    public KichCoDoAn(String id, String ten) {
        this.id = id;
        this.ten = ten;
    }

    public KichCoDoAn(String id, String ten, Set<DoAnChiTiet> doAnChiTiets) {
        this.id = id;
        this.ten = ten;
        this.doAnChiTiets = doAnChiTiets;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTen() {
        return this.ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Set<DoAnChiTiet> getDoAnChiTiets() {
        return this.doAnChiTiets;
    }

    public void setDoAnChiTiets(Set<DoAnChiTiet> doAnChiTiets) {
        this.doAnChiTiets = doAnChiTiets;
    }

    @Override
    public String toString() {
        return ten;
    }

}
