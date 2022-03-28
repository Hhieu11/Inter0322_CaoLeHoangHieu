public class data {
    public static Animal[] animals;
    static {
        animals = new Animal[5];
        animals[0] = new Dog();
        animals[1] = new Cat();
        animals[2] = new Cat();
        animals[3] = new Dog();
        animals[4] = new Dog();
    }
}
