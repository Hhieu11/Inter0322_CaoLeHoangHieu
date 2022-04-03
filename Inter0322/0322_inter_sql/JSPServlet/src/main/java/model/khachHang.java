package model;

public class khachHang {
    private int id;
    private int type;
    private String name;
    private String ngaySinh;
    private int gender;
    private int cmnd;
    private int soDT;
    private String email;
    private String diaChi;

    public khachHang(int id) {
        this.id = id;
    }

    public khachHang(int id, int type, String name, String ngaySinh, int gender, int cmnd, int soDT, String email, String diaChi) {
        this.id = id;
        this.type = type;
        this.name = name;
        this.ngaySinh = ngaySinh;
        this.gender = gender;
        this.cmnd = cmnd;
        this.soDT = soDT;
        this.email = email;
        this.diaChi = diaChi;
    }

    public khachHang() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
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

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getCmnd() {
        return cmnd;
    }

    public void setCmnd(int cmnd) {
        this.cmnd = cmnd;
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
        khachHang khachHang = (khachHang) o;
        return id == khachHang.id;
    }

    @Override
    public int hashCode() {
        return 0;
    }

}
