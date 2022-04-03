package service;

import model.khachHang;
import repository.KhachhangRepo;

import java.util.List;

public class KhachHangServiceIMPL implements KhachHangService {
    KhachhangRepo khachhangRepo= new KhachhangRepo();
    @Override
    public List<khachHang> getKhachhangRepos() {
        return khachhangRepo.getKhachhangRepos();
    }

    @Override
    public void deleteKhachhang(int id) {
        khachhangRepo.deleteKhachhang(id);

    }

    @Override
    public void addKhachHang(khachHang kh) {

        khachhangRepo.addKhachHang(kh);

    }


}
