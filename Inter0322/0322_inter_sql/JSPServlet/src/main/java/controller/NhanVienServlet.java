package controller;

import model.NhanVien;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "NhanVienServlet" ,urlPatterns = "/nhanvien")
public class NhanVienServlet extends HttpServlet {
    private static List<NhanVien>nhanVienList= new ArrayList<>();
    static {
        nhanVienList.add(new NhanVien(1,"hieu","11/02/2000",1,120000000.0,13323232,
                "hieu@gmail.com","QuangNgai"));
       nhanVienList.add(new NhanVien(2,"hieu2","11/02/2000",2,120000000.0,13323232,
            "hieu@gmail.com","QuangNgai"));
       nhanVienList.add(new NhanVien(3,"hieu3","11/02/2000",3,120000000.0,13323232,
               "hieu@gmail.com","QuangNgai"));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action=request.getParameter("action");
        if(action==null){
            action="";

        }
        switch (action){
            case "create":
                createNhanVien(request,response);



                break;
            case "update":
                updateNhanVien(request,response);
                break;
            case "delete":
                deleteNhanVien(request,response);
                break;

        }




    }

    private void updateNhanVien(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String name =request.getParameter("name");
        String ngaySinh=request.getParameter("ngaySinh");
        int gender=Integer.parseInt(request.getParameter("gender"));
        Double luong=Double.parseDouble(request.getParameter("luong"));
        int soDT=Integer.parseInt(request.getParameter("soDT"));
        String email=request.getParameter("email");
        String diaChi=request.getParameter("diaChi");
        NhanVien nhanVien= new NhanVien(id,name,ngaySinh,gender,luong,soDT,email,diaChi);



        nhanVienList.add(nhanVien);
        response.sendRedirect("/nhanvien");


    }

    private void createNhanVien(HttpServletRequest request, HttpServletResponse response) throws IOException {
       int id= Integer.parseInt(request.getParameter("id"));
       String name =request.getParameter("name");
       String ngaySinh=request.getParameter("ngaySinh");
       int gender=Integer.parseInt(request.getParameter("gender"));
       Double luong=Double.parseDouble(request.getParameter("luong"));
       int soDT=Integer.parseInt(request.getParameter("soDT"));
       String email=request.getParameter("email");
       String diaChi=request.getParameter("diaChi");
       NhanVien nhanVien= new NhanVien(id,name,ngaySinh,gender,luong,soDT,email,diaChi);

       nhanVienList.add(nhanVien);
        response.sendRedirect("/nhanvien");



    }

    private void deleteNhanVien(HttpServletRequest request, HttpServletResponse response) {
        int id=Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        nhanVienList.remove(new NhanVien(id));
        try {
            response.sendRedirect("/nhanvien");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String action= request.getParameter("action");
        if(action==null){
            action="";

        }
        switch (action){
            case "create":
                response.sendRedirect("../giaodien/employee.jsp");
                break;
            case "update":
                goUpdate(request,response);
                break;




            default:
                request.setAttribute("nhanVienList",nhanVienList);
                request.getRequestDispatcher("giaodien/nhanvien.jsp").forward(request,response);
                break;
        }







    }

    private void goUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        NhanVien nhanVien= nhanVienList.get(id);


        request.setAttribute("nhanvien",nhanVien);
        request.getRequestDispatcher("giaodien/updateNhanVien.jsp").forward(request,response);

    }

}
