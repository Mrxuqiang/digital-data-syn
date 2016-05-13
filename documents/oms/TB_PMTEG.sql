/*
================================================================================
��ṹ����:TB_PMTEG
��ṹ����:�����ۿ۵���Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTEG;
drop index AK_TB_PMTEG;
drop table TB_PMTEG;
create table TB_PMTEG  (
   PMTEG_ID             INTEGER                         not null,  /*�����ۿ���Чʱ��ID*/
   PMTEG001             INTEGER                         not null,  /*�����ۿ۵�ID      */
   PMTEG002             DATE                            not null,  /*��ʼ����          */
   PMTEG003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTEG004             DATE                            not null,  /*��������          */
   PMTEG005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTEG primary key (PMTEG_ID)
);
create unique index AK_TB_PMTEG on TB_PMTEG (PMTEG001,PMTEG002,PMTEG003);
create sequence SEQ_TB_PMTEG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEG to public;
grant index  on TB_PMTEG to public;
grant update on TB_PMTEG to public; 
grant delete on TB_PMTEG to public;  
grant insert on TB_PMTEG to public; 
grant select on SEQ_TB_PMTEG to public;   