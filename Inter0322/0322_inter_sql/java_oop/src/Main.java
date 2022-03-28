public class Main {
    public static void main(String[] args) {
        Animal[] animals = data.animals;
        for (Animal a : animals) {
            a.speak();
        }
        Animal animal = new Cat();
        animal.speak();
    }
}
