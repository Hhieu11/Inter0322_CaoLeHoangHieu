package controller;

import model.NhanVien;
import model.khachHang;
import service.KhachHangService;
import service.KhachHangServiceIMPL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "KhachHangServlet" ,urlPatterns = "/khachhang")
public class KhachHangServlet extends HttpServlet {
    private KhachHangService khachHangService= new KhachHangServiceIMPL();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
//            case"delete":
//                deleteKhachHang(request,response);
//                break;
            case "create":
                addKhachHang(request,response);
                break;




            default:
                getAll(request,response);

                break;

        }
    }

    private void addKhachHang(HttpServletRequest request, HttpServletResponse response) {
        int id= Integer.parseInt(request.getParameter("id"));
        int type= Integer.parseInt(request.getParameter("type"));

        String name =request.getParameter("name");
        String ngaySinh=request.getParameter("ngaySinh");
        int gender=Integer.parseInt(request.getParameter("gender"));
        int cmnd=Integer.parseInt(request.getParameter("cmnd"));


        int soDT=Integer.parseInt(request.getParameter("soDT"));
        String email=request.getParameter("email");
        String diaChi=request.getParameter("diaChi");


        khachHang kh = new khachHang(id, type, name, ngaySinh, gender, cmnd, soDT, email, diaChi);

        khachHangService.addKhachHang(kh);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if(action==null){
            action="";
        }
        switch (action){
//            case"delete":
//                deleteKhachHang(request,response);
//                break;
            case"create":
                request.getRequestDispatcher("/giaodien/customer.jsp").forward(request,response);


            default:
                getAll(request,response);


                break;

        }

    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("khachHang", khachHangService.getKhachhangRepos());
        request.getRequestDispatcher("giaodien/khachhang.jsp").forward(request,response);
    }

    private void deleteKhachHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id=Integer.parseInt(request.getParameter("id"));
        khachHangService.deleteKhachhang(id);
        getAll(request,response);



    }
}
