/*
================================================================================
��ṹ����:TB_PMTCE
��ṹ����:��Ʒ�ۿ۵���Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTCE;
drop index AK_TB_PMTCE;
drop table TB_PMTCE;
create table TB_PMTCE  (
   PMTCE_ID             INTEGER                         not null,  /*�ۿ���Чʱ��ID    */
   PMTCE001             INTEGER                         not null,  /*��Ʒ�ۿ۵�ID      */
   PMTCE002             DATE                            not null,  /*��ʼ����          */
   PMTCE003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTCE004             DATE                            not null,  /*��������          */
   PMTCE005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTCE primary key (PMTCE_ID)
);
create unique index AK_TB_PMTCE on TB_PMTCE (PMTCE001,PMTCE002,PMTCE003);
create sequence SEQ_TB_PMTCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCE to public;
grant index  on TB_PMTCE to public;
grant update on TB_PMTCE to public; 
grant delete on TB_PMTCE to public;  
grant insert on TB_PMTCE to public; 
grant select on SEQ_TB_PMTCE to public;   