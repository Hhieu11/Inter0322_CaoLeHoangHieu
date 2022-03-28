package utils;

import models.Booking;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Comparator;

public class BookingComparator implements Comparator<Booking> {


    @Override
    public int compare(Booking o1, Booking o2) {
        //ép kiểu vè datatime
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        //tạo đối tượng và ép kiểu
        LocalDate checkIn1 = LocalDate.parse(o1.getCheckIn(), dateTimeFormatter);
        LocalDate checkIn2 = LocalDate.parse(o1.getCheckIn(), dateTimeFormatter);
        LocalDate checkOut1 = LocalDate.parse(o2.getCheckOut(), dateTimeFormatter);
        LocalDate checkOut2 = LocalDate.parse(o2.getCheckOut(), dateTimeFormatter);
        if (checkIn1.compareTo(checkIn2) > 0) {
            return 1;
        } else if (checkIn1.compareTo(checkIn2) < 0) {
            return -1;

        } else {
            if (checkOut1.compareTo(checkOut2) > 0) {
                return 1;
            } else if (checkOut1.compareTo(checkOut2) < 0) {
                return -1;
            } else {
                return 0;
            }
        }
    }
}

