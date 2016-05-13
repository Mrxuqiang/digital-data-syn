/*
================================================================================
��ṹ����:TB_PMTDC
��ṹ����:��Ʒ������������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTDC;
drop index AK_TB_PMTDC;
drop table TB_PMTDC;
create table TB_PMTDC  (
   PMTDC_ID             INTEGER                         not null,  /*������ƷID        */
   PMTDC001             INTEGER                         not null,  /*��Ʒ������ID      */
   PMTDC002             VARCHAR2(5)                     not null,  /*�������          */
   PMTDC003             INTEGER                         not null,  /*��ƷID            */
   PMTDC004             INTEGER                         not null,  /*��λID            */
   PMTDC005             NUMBER(12,2),                              /*��������          */
   PMTDC006             NUMBER(12,2),                              /*���۽��          */
   PMTDC007             NUMBER(12,2),                              /*����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTDC primary key (PMTDC_ID)
);
create unique index AK_TB_PMTDC on TB_PMTDC (PMTDC001,PMTDC002,PMTDC006);
create sequence SEQ_TB_PMTDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDC to public;
grant index  on TB_PMTDC to public;
grant update on TB_PMTDC to public; 
grant delete on TB_PMTDC to public;  
grant insert on TB_PMTDC to public; 
grant select on SEQ_TB_PMTDC to public;   