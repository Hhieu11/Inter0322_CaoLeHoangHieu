package Service.Impl;

import Service.ContactService;
import models.Booking;
import models.Contract;
import models.Customer;

import java.util.*;

public class ContractServiceImpl implements ContactService {
    static List<Contract> contractList = new ArrayList<>();
    static Scanner scanner = new Scanner(System.in);

    @Override
    public void display() {
        for (Contract o : contractList) {
            System.out.println(o.toString());
        }

    }
    //tạo đối tượng từ booking set

    @Override
    public void addNew() {
        Queue<Booking> bookingQueue = new LinkedList<>();
        Set<Booking> bookingSet = new BookingServiceImpl().sendBooking();

        for (Booking o : bookingSet) {
            bookingQueue.add(o);

        // kiểm tra rỗng  , kh rỗng tiếp tục chạy
        while (!bookingQueue.isEmpty()) {

        }
        Booking booking = bookingQueue.poll();
        Customer customer = booking.getCustomer();


        System.out.println("Đang tạo hợp đồng cho booking có thông tin" + booking.toString());
        System.out.println("Đang tạo hợp đồng cho Khách Hàng có thông tin" + customer.toString());

        System.out.println("Nhập id hợp đồng");
        String id = scanner.nextLine();
        System.out.println("Nhập số tiền trả trước");
        String pre = scanner.nextLine();
        System.out.println("Nhập số chi phí");
        String pay = scanner.nextLine();

        Contract contract = new Contract(id, booking, pre, pay, customer);
        contractList.add(contract);


        System.out.println("Đã tạo hợp đồng thành công");


    }

}

    @Override
    public void edit() {

    }

    @Override
    public void delete() {

    }
}
