package models;

public class Contract {
    private String bookingCode;
    private int deposit;
    private int totalBookingValue;
    private String customerId;

    public Contract() {
    }

    public Contract(String bookingCode, int deposit, int totalBookingValue, String customerId) {
        this.bookingCode = bookingCode;
        this.deposit = deposit;
        this.totalBookingValue = totalBookingValue;
        this.customerId = customerId;
    }

    public String getBookingCode() {
        return bookingCode;
    }

    public void setBookingCode(String bookingCode) {
        this.bookingCode = bookingCode;
    }

    public int getDeposit() {
        return deposit;
    }

    public void setDeposit(int deposit) {
        this.deposit = deposit;
    }

    public int getTotalBookingValue() {
        return totalBookingValue;
    }

    public void setTotalBookingValue(int totalBookingValue) {
        this.totalBookingValue = totalBookingValue;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    @Override
    public String toString() {
        return "Contract{" +
                "bookingCode='" + bookingCode + '\'' +
                ", deposit=" + deposit +
                ", totalBookingValue=" + totalBookingValue +
                ", customerId='" + customerId + '\'' +
                '}';
    }
}
