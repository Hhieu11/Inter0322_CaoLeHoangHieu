package model;

import java.util.Objects;

public class NhanVien {
    private int id;
    private String name;
    private String ngaySinh;
    private int gender;
    private Double luong;
    private int soDT;
    private String email;




    private String diaChi;

    public NhanVien() {
    }

    public NhanVien(int id, String name, String ngaySinh,int gender, Double luong, int soDT, String email, String diaChi) {
        this.id = id;
        this.name = name;
        this.ngaySinh = ngaySinh;
        this.gender=gender;
        this.luong = luong;
        this.soDT = soDT;
        this.email = email;
        this.diaChi = diaChi;
    }

    public NhanVien(int id) {
        this.id = id;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public Double getLuong() {
        return luong;
    }

    public void setLuong(Double luong) {
        this.luong = luong;
    }

    public int getSoDT() {
        return soDT;
    }

    public void setSoDT(int soDT) {
        this.soDT = soDT;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        NhanVien nhanVien = (NhanVien) o;
        return id == nhanVien.id;
    }


}



