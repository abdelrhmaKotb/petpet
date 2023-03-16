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
            return false;
        }
        regex = "^(.+)@(.+)$";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(email);
        return matcher.matches();
    }
    public static boolean isValidName(String name){
        if (name == null || name.equals("")){
            return false;
        }
        regex = "^[a-zA-Z]{2,30}$";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(name);
        return matcher.matches();
    }

    public static boolean validPhone(String phone) {
        if (phone == null|| phone.equals("")) {
            return false;
        }
        regex = "^01[0125][0-9]{8}$";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(phone);
        return matcher.matches();
    }
    public static boolean validPassword(String password) {
        if (password == null || password.equals("")) {
            return false;
        }
        regex = "^\\d{8,20}";
        Pattern = Pattern.compile(regex);
        matcher = Pattern.matcher(password);
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

        List<String> list = new ArrayList<>();
        String[] locales = Locale.getISOCountries();

        for (String countryCode : locales) {

            Locale obj = new Locale("", countryCode);
            list.add(obj.getDisplayCountry());

        }
        return list;
    }
    public static boolean validCountry(String country) {
        List<String> list = listCountries();
        if (country == null) {
            return false;
        }
        for(String s : list){
            if (!s.equals(country))
                return false;
        }
        return true;
    }

}
