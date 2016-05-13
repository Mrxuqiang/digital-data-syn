/*
================================================================================
��ṹ����:TB_PMTKE
��ṹ����:�齱�����Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTKE;
drop index AK_TB_PMTKE;
drop table TB_PMTKE;
create table TB_PMTKE  (
   PMTKE_ID             INTEGER                         not null,  /*��Чʱ��ID        */
   PMTKE001             INTEGER                         not null,  /*�齱���ID      */
   PMTKE002             DATE                            not null,  /*��ʼ����          */
   PMTKE003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTKE004             DATE                            not null,  /*��������          */
   PMTKE005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTKE primary key (PMTKE_ID)
);
create unique index AK_TB_PMTKE on TB_PMTKE (PMTKE001,PMTKE002,PMTKE003);
create sequence SEQ_TB_PMTKE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKE to public;
grant index  on TB_PMTKE to public;
grant update on TB_PMTKE to public; 
grant delete on TB_PMTKE to public;  
grant insert on TB_PMTKE to public; 
grant select on SEQ_TB_PMTKE to public;   