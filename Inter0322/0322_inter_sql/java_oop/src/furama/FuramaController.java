package furama;

import Service.CustomerService;
import Service.EmployeeSevice;
import Service.Impl.*;

import java.util.Scanner;

public class FuramaController {
    public static void main(String[] args) {
        displayMainMenu();

    }

    public static void displayMainMenu(){
        boolean check=true;
        int choice= 0;
        while (check){

            System.out.println("1.Employee Management");
            System.out.println("2.Customer Management");
            System.out.println("3.Facility Management ");
            System.out.println("4.Booking Managerment");
            System.out.println("5.Promotion Management");
            System.out.println("6.Exit");

            Scanner scanner = new Scanner(System.in);
            try {
                choice=Integer.parseInt(scanner.nextLine());
            }
            catch (NumberFormatException e){
                System.out.println("Ban da nhap sai ");

            }

            switch (choice){
                case 1:{
                    displayEmployeeMenu();
                    break;
                }
                case 2:{
                    displayCustomerMenu();
                    break;
                }
                case 3:{
                    displayFacilityMenu();
                }
                case 4:{
                    displayBookingMenu();

                }
                case 5:{
                    displayPromotionMenu();
                }
                case 6:{
                    System.exit(0);
                }

            }
        }
    }
    public static void  displayEmployeeMenu(){
        EmployeeServiceImpl employeeService= new EmployeeServiceImpl();
        boolean check=true;
        int choice=0;
        while (check) {
            System.out.println("1.Display list employees");
            System.out.println("2.Add new employee");
            System.out.println("3.Edit employee ");
            System.out.println("4.Return main menu");


            Scanner scanner = new Scanner(System.in);
            try {
                choice=Integer.parseInt(scanner.nextLine());
            }
            catch (NumberFormatException e){
                System.out.println("Ban da nhap sai ");

            }

            switch (choice){
                case 1:{
                    employeeService.display();
                    break;

                }
                case 2:{
                    employeeService.addNew();
                    break;
                }
                case 3:{
                    employeeService.edit();
                    break;
                }
                case 4:{
                    displayMainMenu();
                    break;
                }


            }
        }
    }
    public static  void displayCustomerMenu(){
        CustomerServiceImpl customerService= new CustomerServiceImpl();
        boolean check=true;
        int choice= 0;
        while (check)
        {
            System.out.println("1.Display list Customer");
            System.out.println("2.Add new Customer");
            System.out.println("3.Edit Customer ");
            System.out.println("4.Return main menu");


            Scanner scanner = new Scanner(System.in);
            try {
                choice=Integer.parseInt(scanner.nextLine());
            }
            catch (NumberFormatException e){
                System.out.println("Ban da nhap sai ");

            }

            switch (choice){
                case 1:{
                    customerService.display();
                    break;
                }
                case 2:{
                    customerService.addNew();
                    break;
                }
                case 3:{
                    customerService.edit();
                    break;
                }
                case 4:{
                    displayMainMenu();
                }

            }
        }
    }

    public static void displayFacilityMenu() {
        FacilityServiceImpl facilityService= new FacilityServiceImpl();
        boolean check = true;
        int choice=0;
        while (check) {
            System.out.println("1.Display list Facility");
            System.out.println("2.Add new Facility");
            System.out.println("3.Display list Facility Maintain ");
            System.out.println("4.Return main menu");


            Scanner scanner = new Scanner(System.in);
            try {
                choice=Integer.parseInt(scanner.nextLine());
            }
            catch (NumberFormatException e){
                System.out.println("Ban da nhap sai ");

            }

            switch (choice) {
                case 1: {
                    facilityService.display();
                    break;

                }
                case 2:{
                    addNewFacilityMenu();
                    break;
                }

            }
        }


    }
    public static void displayBookingMenu() {

        boolean check = true;
        int choice=0;
        while (check) {
            System.out.println("1.Add new booking");
            System.out.println("2.Display list booking");
            System.out.println("3.Create new constracts ");
            System.out.println("4.Display list contracts");
            System.out.println("5.Edit contracts");
            System.out.println("6.Return main menu");
            BookingServiceImpl bookingService= new BookingServiceImpl();
            ContractServiceImpl contractService= new ContractServiceImpl();



            Scanner scanner = new Scanner(System.in);
            try {
                choice=Integer.parseInt(scanner.nextLine());
            }
            catch (NumberFormatException e){
                System.out.println("Ban da nhap sai ");

            }

            switch (choice) {
                case 1: {
                    bookingService.addNew();
                    displayBookingMenu();
                    break;

                }
                case 2:{
                    bookingService.display();
                    displayBookingMenu();
                    break;
                }
                case 3:{
                    contractService.addNew();
                    displayBookingMenu();
                    break;

                }
                case 4:{
                    contractService.display();
                    displayBookingMenu();
                    break;
                }
                case 6:{
                   displayMainMenu();
                   break;
                }
            }
        }


    }
    public static void displayPromotionMenu() {
        boolean check = true;
        int choice=0;
        while (check) {
            System.out.println("1.Display list customers use service");
            System.out.println("2.Display list customers get voucher");
            System.out.println("3.Return main menu ");


            Scanner scanner = new Scanner(System.in);
            try {
                choice=Integer.parseInt(scanner.nextLine());
            }
            catch (NumberFormatException e){
                System.out.println("Ban da nhap sai ");

            }

            switch (choice) {
                case 1: {

                }
                case 3:{
                    displayMainMenu();

                }



            }
        }


    }
    public static void addNewFacilityMenu() {
        FacilityServiceImpl facilityService= new FacilityServiceImpl();
        boolean check = true;
        int choice=0;
        while (check) {
            System.out.println("1.Add Villa");
            System.out.println("2.Add House");
            System.out.println("3.Add Room ");
            System.out.println("4.Return main menu");


            Scanner scanner = new Scanner(System.in);
            try {
                choice=Integer.parseInt(scanner.nextLine());
            }
            catch (NumberFormatException e){
                System.out.println("Ban da nhap sai ");

            }

            switch (choice) {
                case 1: {
                    facilityService.addNewVilla();
                    displayFacilityMenu();
                    break;

                }
                case 2:{
                    facilityService.addNewRoom();
                    displayFacilityMenu();
                    break;
                }
                case 3:{
                facilityService.addNewHouse();
                displayFacilityMenu();
                break;
                }
            }

            }
        }





}
