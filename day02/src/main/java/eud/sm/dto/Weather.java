package eud.sm.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder

public class Weather {
    private String region;
    private int temperature; //온도
    private int wet;// 날씨
    private int wetimg;// 날씨

}
