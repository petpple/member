package petpple.kiwi.member.repository.service;

import org.apache.ibatis.annotations.Mapper;
import petpple.kiwi.member.domain.service.Refund;
import petpple.kiwi.member.domain.visitService.VisitService;

@Mapper
public interface IReservedService {
    public Refund getVServiceInfo(String vId);
    public Refund getFServiceInfo(String fId);
    public Refund getUVServiceInfo(String uvId);
    public Refund getUFServiceInfo(String ufId);
    public int visitServiceCancel(Refund dto);
    public int fosterServiceCancel(Refund dto);
    public int urgentVServiceCancel(Refund dto);

    public int urgentFServiceCancel(Refund dto);

    public int visitServiceNoShow(Refund dto);

    public int fosterServiceNoShow(Refund dto);
    public int uvServiceNoShow(Refund dto);
    public int ufServiceNoShow(Refund dto);

}
