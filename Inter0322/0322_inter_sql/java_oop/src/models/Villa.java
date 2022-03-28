package models;

public class Villa extends Facility{
    private int roomStandard;
    private int numberOfFloors;
    private  int poolArea;

    public Villa(){}

    public Villa(int roomStandard, int numberOfFloors, int poolArea) {
        this.roomStandard = roomStandard;
        this.numberOfFloors = numberOfFloors;
        this.poolArea = poolArea;
    }



    public Villa(int idFacility, String name, double price, String rentalType,
                 String usableArea, int roomStandard, int numberOfFloors, int poolArea) {
        super(idFacility,name, price, rentalType, usableArea);
        this.roomStandard = roomStandard;
        this.numberOfFloors = numberOfFloors;
        this.poolArea = poolArea;
    }

    public int getRoomStandard() {
        return roomStandard;
    }

    public void setRoomStandard(int roomStandard) {
        this.roomStandard = roomStandard;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }

    public int getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(int poolArea) {
        this.poolArea = poolArea;
    }

    @Override
    public String toString() {
        return super.toString()+
                "roomStandard='" + roomStandard + '\'' +
                ", numberOfFloors=" + numberOfFloors +
                ", poolArea=" + poolArea +
                '}';
    }
}
