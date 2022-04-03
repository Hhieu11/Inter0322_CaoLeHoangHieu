package repository;

import model.NhanVien;
import model.khachHang;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class KhachhangRepo {
    private static List<khachHang> khachhangRepos= new ArrayList<>();
    private BaseRepository baseRepository = new BaseRepository();

//    static {
//        khachhangRepos.add(new khachHang(1,4,"hieu","11/02/2000",1,12000000,13323232,
//                "hieu@gmail.com","QuangNgai"));
//        khachhangRepos.add(new khachHang(2,2,"hieu","11/02/2000",1,12000000,13323232,
//                "hieu@gmail.com","QuangNgai"));
//        khachhangRepos.add(new khachHang(3,1,"hieu","11/02/2000",1,12000000,13323232,
//                "hieu@gmail.com","QuangNgai"));
//    }



   public List<khachHang> getKhachhangRepos(){
       List<khachHang>khachHangList  = new ArrayList<>();
       try {
           PreparedStatement preparedStatement = this.baseRepository
                   .getConnection().prepareStatement("select * from khach_hang");
           khachHang khachhang;
           ResultSet resultSet = preparedStatement.executeQuery();
           while (resultSet.next()) {
               int id = resultSet.getInt("ma_khach_hang");
               int type = resultSet.getInt("ma_loai_khach");
               String name=resultSet.getString("ho_ten");
               String ngaySinh=resultSet.getString("ngay_sinh");
               int gender=resultSet.getInt("gioi_tinh");
               int cmnd=resultSet.getInt("so_cmnd");
               int soDT=resultSet.getInt("so_dien_thoai");
               String email=resultSet.getString("email");
               String diaChi=resultSet.getString("dia_chi");


               khachhang = new khachHang(id,type,name,ngaySinh,gender,cmnd,soDT,email,diaChi);
               khachHangList.add(khachhang);
           }
       } catch (SQLException e) {
           e.printStackTrace();
       }

        return khachHangList;
   }


   public void deleteKhachhang(int id){
        khachhangRepos.remove(new khachHang(id));
   }




   public void addKhachHang (khachHang kh){
       try{
           PreparedStatement preparedStatement = this.baseRepository
                   .getConnection()
                   .prepareStatement("insert into khach_hang(ma_khach_hang,ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi)value(?,?,?,?,?,?,?,?,?)");
           preparedStatement.setInt(1,kh.getId());
           preparedStatement.setInt(2,kh.getType());
           preparedStatement.setString(3,kh.getName());
           preparedStatement.setDate(4, Date.valueOf(kh.getNgaySinh()));
           preparedStatement.setInt(5,kh.getGender());
           preparedStatement.setString(6,String.valueOf(kh.getCmnd()));
           preparedStatement.setString(7,String.valueOf(kh.getSoDT()));
           preparedStatement.setString(8,kh.getEmail());
           preparedStatement.setString(9,kh.getDiaChi());




       } catch (SQLException e) {
           e.printStackTrace();
       }

   }
}
