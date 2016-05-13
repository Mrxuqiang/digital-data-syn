/*
================================================================================
��ṹ����:TB_PMTIB
��ṹ����:������ȯ��������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIB;
drop index AK_TB_PMTIB;
drop table TB_PMTIB;
create table TB_PMTIB  (
   PMTIB_ID             INTEGER                         not null,  /*������ƷID        */
   PMTIB001             INTEGER                         not null,  /*������ȯ��ID      */
   PMTIB002             VARCHAR2(1)                     not null,  /*��������          */
   PMTIB003             INTEGER,                                   /*����ID            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTIB primary key (PMTIB_ID)
);
create unique index AK_TB_PMTIB on TB_PMTIB (PMTIB001,PMTIB002,PMTIB003);
create sequence SEQ_TB_PMTIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIB to public;
grant index  on TB_PMTIB to public;
grant update on TB_PMTIB to public; 
grant delete on TB_PMTIB to public;  
grant insert on TB_PMTIB to public; 
grant select on SEQ_TB_PMTIB to public;   