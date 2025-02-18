package com.gr25.thinkpro.domain.dto.request;

import lombok.Data;

@Data
public class PaymentInfoResponse {
    private String id;
    private String description;
    private String price;
    private String date;
    private String stk;
}
