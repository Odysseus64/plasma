package plasma.plasma_rest.model;

import java.util.List;

public class Data {
    private static Long id;

    public static List<Registration> getRegistrations() {
        return List.of(
                new Registration(++id, "Alex12", "Poll", "graf@gmail.com", "Neon9012-"),
                new Registration(++id, "Maxim", "Alexeev", "ma23@gmail.com", "Backflip44+"),
                new Registration(++id, "Kali", "LOS", "KAos@protonmail.com", "Lop23ko-!")
        );
    }
}
