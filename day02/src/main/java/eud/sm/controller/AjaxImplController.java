package eud.sm.controller;

import eud.sm.dto.HotItem;
import eud.sm.dto.Weather;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.*;

@RestController
public class AjaxImplController {

    @RequestMapping("/gettime")
    public Object getTime(){
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(date);
    }

    @RequestMapping("/checkid")
    public Object checkid(@RequestParam("id") String id){
        String result = "1";
        if("qqq".equals(id) || "aaa".equals(id) ||"www".equals(id)){
            result = "0" ;
        }
        return result;
    }


    @RequestMapping("/getdata")
    public List<HotItem> getdata(){
        Random random = new Random();
        Object c[] = {1,2,3,4,5};
        Collections.shuffle(Arrays.asList(c));

        List<HotItem> list = new ArrayList<>();
        list.add(HotItem.builder().cnt((Integer) c[0]).title("날씨").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[1]).title("여름").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[2]).title("태풍").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[3]).title("장마").updown(random.nextInt(2)).build());
        list.add(HotItem.builder().cnt((Integer) c[4]).title("러브버그").updown(random.nextInt(2)).build());
        list.sort((o1, o2) -> {return  o1.getCnt() - o2.getCnt();});
        return list;
    }

    @RequestMapping("/weatherdata")
    public List<Weather> weatherdata(){
        Random random = new Random();
        Object w[] = {20,27,28,30,40};
        Collections.shuffle(Arrays.asList(w));

        List<Weather> list = new ArrayList<>();
        list.add(Weather.builder().region("서울").temperature((Integer) w[0]).wet(random.nextInt(3)).build());
        list.add(Weather.builder().region("천안").temperature((Integer) w[1]).wet(random.nextInt(3)).build());
        list.add(Weather.builder().region("가평").temperature((Integer) w[2]).wet(random.nextInt(3)).build());
        list.add(Weather.builder().region("인천").temperature((Integer) w[3]).wet(random.nextInt(3)).build());
        list.add(Weather.builder().region("부산").temperature((Integer) w[4]).wet(random.nextInt(3)).build());

        return list;
    }


}
