package service;

import model.khachHang;

import java.util.List;

public interface KhachHangService {
    public List<khachHang> getKhachhangRepos();
    public void deleteKhachhang(int id);
    
    public void addKhachHang(khachHang kh);
    
}
