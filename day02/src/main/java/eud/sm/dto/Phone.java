package eud.sm.dto;

import lombok.*;

import java.sql.Timestamp;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
@Builder

// 실제 데이터베이스에 있는 shopdp에서는 cust_id로 되어있기 때문에
//
public class Phone {
    private String phoneId;
    private String phoneName;
    private String phoneCompany;
    private int phonePrice;
    private Timestamp phoneRegdate;
    private Timestamp phoneUpdate;


}
