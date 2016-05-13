/*
��ṹ����:TB_PMTSD
��ṹ����:��Ч�̳�Ʒ�Ʒ�Χ��
��ṹĿ��:
================================================================================
*/

drop Sequence SeQ_TB_PMTSD;
drop index AK_TB_PMTSD;
drop table TB_PMTSD;
create table TB_PMTSD  (
   PMTSD_ID             INTEGER                         not null,  /*��Ч�̳�Ʒ�Ʒ�ΧID*/
   PMTSD001             INTEGER                         not null,  /*������ID          */
   PMTSD002             INTEGER                         ,          /*¥��ID            */
   PMTSD003             INTEGER                         ,          /*¥��ID            */
   PMTSD004             INTEGER                         ,          /*Ʒ��ID            */
   PMTSD005             INTEGER                         ,          /*Ʒ��ϵ��ID        */
   PMTSD006             INTEGER                         ,          /*�̻�ID            */
   PMTSD007             INTEGER                         ,          /*չλID            */
   PMTSD008             INTEGER                         ,          /*��ͬID            */
   PMTSD009             INTEGER                         ,          /*��Ч�̳�ID        */
   PMTSD010             INTEGER                         ,          /*��Ч�̳���Χ��ID(�����ӱ����) */
   CREATE_USeR          VARCHAR2(12),                              /*������Ա          */
   USeR_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTSD primary key (PMTSD_ID)
);
--create unique index AK_TB_PMTSD on TB_PMTSD (PMTSD001,PMTSD010);
create Sequence SeQ_TB_PMTSD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant Select on TB_PMTSD to public;
grant index  on TB_PMTSD to public;
grant update on TB_PMTSD to public; 
grant delete on TB_PMTSD to public;  
grant inSert on TB_PMTSD to public; 
grant Select on SDQ_TB_PMTSD to public;  
