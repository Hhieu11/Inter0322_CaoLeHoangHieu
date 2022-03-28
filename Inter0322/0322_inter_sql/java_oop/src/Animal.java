public abstract class Animal {
    protected String name;
    protected int leg;

    abstract void speak();

    public Animal() {
    }

    public String getName() {
        return name;
    }

    public Animal(String name, int leg) {
        this.name = name;
        this.leg = leg;
    }

    public void setName(String name) {
        this.name = name;
    }
}
