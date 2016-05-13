/*
================================================================================
��ṹ����:TB_PMTEB
��ṹ����:�����ۿ۵�������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTEB;
drop index AK_TB_PMTEB;
drop table TB_PMTEB;
create table TB_PMTEB  (
   PMTEB_ID             INTEGER                         not null,  /*������ƷID        */
   PMTEB001             INTEGER                         not null,  /*�����ۿ۵�ID      */
   PMTEB002             VARCHAR2(1)                     not null,  /*��������          */
   PMTEB003             INTEGER,                                   /*����ID            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTEB primary key (PMTEB_ID)
);
create unique index AK_TB_PMTEB on TB_PMTEB (PMTEB001,PMTEB002,PMTEB003);
create sequence SEQ_TB_PMTEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEB to public;
grant index  on TB_PMTEB to public;
grant update on TB_PMTEB to public; 
grant delete on TB_PMTEB to public;  
grant insert on TB_PMTEB to public; 
grant select on SEQ_TB_PMTEB to public;   