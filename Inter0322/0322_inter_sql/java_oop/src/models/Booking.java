package models;

import java.util.Date;

public class Booking {
    private String code;
    private String checkIn;
    private String checkOut;
    private Customer customerId;
    private Facility service;

    public Booking() {
    }

    public Booking(String code, String checkIn, String checkOut, Customer customerId, Facility service) {
        this.code = code;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.customerId = customerId;
        this.service = service;
    }

    public Booking(int id, String checkIn, String checkOut, Customer customer, Facility facility) {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public String getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(String checkOut) {
        this.checkOut = checkOut;
    }

    public Customer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Customer customerId) {
        this.customerId = customerId;
    }

    public Facility getService() {
        return service;
    }

    public void setService(Facility service) {
        this.service = service;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "code='" + code + '\'' +
                ", checkIn=" + checkIn +
                ", checkOut=" + checkOut +
                ", customerId='" + customerId + '\'' +
                ", service='" + service + '\'' +
                '}';
    }
}
