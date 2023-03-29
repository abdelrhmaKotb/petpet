package gov.iti.jets.helpers;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.*;

public class Validation {
    private static String regex;
    private static Pattern Pattern;
    public static Matcher matcher;
    public static boolean isEmail(String email){
        if (email == null|| email.equals("")) {
            System.out.println("email is bad");
            return false;
        }
        regex = "^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(email);
        System.out.println("Checked email");
        System.out.println(matcher.matches());
        return matcher.matches();
    }
    public static boolean isValidName(String name){
        if (name == null || name.equals("")){
            System.out.println("bad name");
            return false;
        }
        regex = "^[a-zA-Z\\s]{2,30}$";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(name);
        System.out.println("Checked name");
        return matcher.matches();
    }

    public static boolean validPhone(String phone) {
        if (phone == null|| phone.equals("")) {
            System.out.println("bad phone");
            return false;
        }
        regex = "^01[0125][0-9]{8}$";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(phone);
        System.out.println("Checked phone");
        System.out.println(matcher.matches());
        return matcher.matches();
    }
    public static boolean validPassword(String password) {
        if (password == null || password.length() < 8) {
            System.out.println("bad password");
            return false;
        }
        regex = "^\\d{8,20}";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(password);
        System.out.println("Checked password");
        return (matcher.matches());
    }
    public static boolean validConfirmPassword(String password, String confirmationPassword) {
        if (password == null || confirmationPassword == null || password.equals("") || confirmationPassword.equals("")) {
            return false;
        }
        return (confirmationPassword.equals(password));
    }
    public static boolean validDate(LocalDate date) {
        if (date == null) {
            return false;
        }
        return true;
    }
    private static List<String> listCountries(){

        List<String> crunchifyList = new ArrayList<String>();
        String[] locales = Locale.getISOCountries();
        for (String countryCode : locales) {
            Locale obj = new Locale("", countryCode);
            //System.out.println(obj.getDisplayCountry());
            crunchifyList.add(obj.getDisplayCountry());
        }

        return crunchifyList;
    }
    public static boolean validCountry(String country) {
        List<String> list = new ArrayList<String>();

        if (country == null) {
            System.out.println("null");
            return false;
        }
        String[] locales = Locale.getISOCountries();
        for (String countryCode : locales) {
            Locale obj = new Locale("", countryCode);
            //System.out.println(obj.getDisplayCountry());
            if((obj.getDisplayCountry()).equalsIgnoreCase(country) || obj.getDisplayCountry().contains(country) ) {
                System.out.println("Country matched");
                return true;
            }

        }
        return false;
    }

}
