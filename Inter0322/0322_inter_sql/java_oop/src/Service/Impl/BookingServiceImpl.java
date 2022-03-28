package Service.Impl;

import Service.BookingService;
import models.Booking;
import models.Customer;
import models.Facility;
import models.Villa;
import utils.BookingComparator;

import java.util.*;

public class BookingServiceImpl implements BookingService {
    static Set<Booking> bookingSet= new TreeSet<>(new BookingComparator());
     static  List<Customer>customerList= new ArrayList<>();
    static Map<Facility,Integer>facilityIntegerMap= new LinkedHashMap<>();
    static Scanner scanner= new Scanner(System.in);

    static {
        // tạo cứng
        customerList.add(new Customer(1,"Hieu",22,"Quảng Ngãi",
                123123123,"hieu@gmail","Diamond") );
        customerList.add(new Customer(2,"Duy",22,"Quảng Ngãi",
                123123123,"hieu@gmail","Diamond") );
        customerList.add(new Customer(3,"Hiền",22,"Quảng Ngãi",
                123123123,"hieu@gmail","Diamond") );


        facilityIntegerMap.put(new Villa( 1,"Villa 1",250.0,"date","140",
                22,3,150),0);// để ý key

        facilityIntegerMap.put(new Villa( 2,"Villa 2",330.0,"week","160",
                12,3,150),0);
    }

    @Override
    public void display() {
        for(Booking o:bookingSet){
            System.out.println(o.toString());
        }


    }

    //Phương thức hiển thị để chọn các customer hiện có
    public static Customer chooseCustomer(){
        System.out.println("Danh sách khách hàng");
        for (Customer o:customerList){
            System.out.println(o.toString());
        }
        System.out.println("Nhap id khach hang");
        boolean check=true;
        int id=Integer.parseInt(scanner.nextLine());
        // dùng while để lặp
        while (check){
            for(Customer o:customerList){
                if(id==o.getId()){
                    check =false;
                    return  o;
                }

            }
            if(check){
                System.out.println("Nhap lai id");
                 id=Integer.parseInt(scanner.nextLine());
            }

        }
        return null;
    }


    //tương tự

    public static Facility chooseFacility(){
        System.out.println("Danh sách dịch vụ");
        //Duyệt Map dùng map.entry
        for(Map.Entry<Facility,Integer> entry:facilityIntegerMap.entrySet()){
            System.out.println(entry.getKey().toString());
        }

        System.out.println("Nhap id dịch vụ");
        boolean check=true;
        int id=Integer.parseInt(scanner.nextLine());
        // dùng while để lặp
        while (check){
            for(Map.Entry<Facility,Integer> entry:facilityIntegerMap.entrySet()){
                if(id==entry.getKey().getIdFacility()){

                    check =false;
                    return  entry.getKey();
                }

            }
            if(check){
                System.out.println("Nhap lai id");
                id=Integer.parseInt(scanner.nextLine());
            }

        }
        return null;
    }

    @Override
    public void addNew() {
        int id=1;
        if(!bookingSet.isEmpty()){
            id=bookingSet.size();
        }

        //tạo đối tượng của 2 phương thức trên
        Customer customer= chooseCustomer();
        Facility facility= chooseFacility();

        System.out.println("Nhập ngày bắt đầu thuê:");
        String checkIn= scanner.nextLine();

        System.out.println("Ngày trả phòng");
        String checkOut=scanner.nextLine();

        //rạo đối tượng new Booking

        Booking booking= new Booking(id,checkIn,checkOut,customer,facility);

        // đưa bào bookingSet
        bookingSet.add(booking);

        System.out.println("Thêm mới thành công !");


    }

    @Override
    public void edit() {

    }

    @Override
    public void delete() {

    }
}
