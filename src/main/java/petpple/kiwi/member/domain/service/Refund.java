package petpple.kiwi.member.domain.service;

import lombok.Data;

@Data
public class Refund {
    String serviceId, refAccNum, refDepositor, refBankId, resId;
    int pay;
}
