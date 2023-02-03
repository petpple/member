package petpple.kiwi.member.service.member;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class Calendar {
    public Set<String> seperateSchedule(List<String> schedule) {
        Set<String> seperated = new HashSet<>();
        for (String date : schedule) {
            int startDate = Integer.parseInt(date.substring(0, date.indexOf('~')));
            int endDate = Integer.parseInt(date.substring(date.indexOf('~') + 1));
            for (int i = startDate; i <= endDate; i++) {
                seperated.add(String.valueOf(i));
            }
        }
        return seperated;
    }
}
