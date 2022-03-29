package models;

public class Contract {
    private String id;
    private Booking booking;
    private String pre;
    private String pay;
    private Customer customer;

    public Contract() {
    }

    public Contract(String id, Booking booking, String pre, String pay, Customer customer) {
        this.id = id;
        this.booking = booking;
        this.pre = pre;
        this.pay = pay;
        this.customer = customer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }

    public String getPre() {
        return pre;
    }

    public void setPre(String pre) {
        this.pre = pre;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    //    public Contract(String id, Booking booking, String pre, String pay, Customer customer) {
//    }
//
//    public Contract(String bookingCode, int deposit, int totalBookingValue, String customerId) {
//        this.bookingCode = bookingCode;
//        this.deposit = deposit;
//        this.totalBookingValue = totalBookingValue;
//        this.customerId = customerId;
//    }
//
//    public String getBookingCode() {
//        return bookingCode;
//    }
//
//    public void setBookingCode(String bookingCode) {
//        this.bookingCode = bookingCode;
//    }
//
//    public int getDeposit() {
//        return deposit;
//    }
//
//    public void setDeposit(int deposit) {
//        this.deposit = deposit;
//    }
//
//    public int getTotalBookingValue() {
//        return totalBookingValue;
//    }
//
//    public void setTotalBookingValue(int totalBookingValue) {
//        this.totalBookingValue = totalBookingValue;
//    }
//
//    public String getCustomerId() {
//        return customerId;
//    }
//
//    public void setCustomerId(String customerId) {
//        this.customerId = customerId;
//    }
//
//    @Override
//    public String toString() {
//        return "Contract{" +
//                "bookingCode='" + bookingCode + '\'' +
//                ", deposit=" + deposit +
//                ", totalBookingValue=" + totalBookingValue +
//                ", customerId='" + customerId + '\'' +
//                '}';
//    }

    @Override
    public String toString() {
        return "Contract{" +
                "id='" + id + '\'' +
                ", booking=" + booking +
                ", pre='" + pre + '\'' +
                ", pay='" + pay + '\'' +
                ", customer=" + customer +
                '}';
    }
}
