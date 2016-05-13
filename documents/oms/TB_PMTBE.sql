/*
================================================================================
��ṹ����:TB_PMTBE
��ṹ����:��Ʒ�ؼ۵���Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTBE;
drop index AK_TB_PMTBE;
drop table TB_PMTBE;
create table TB_PMTBE  (
   PMTBE_ID             INTEGER                         not null,  /*�ۿ���Чʱ��ID    */
   PMTBE001             INTEGER                         not null,  /*��Ʒ�ؼ۵�ID      */
   PMTBE002             DATE                            not null,  /*��ʼ����          */
   PMTBE003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTBE004             DATE                            not null,  /*��������          */
   PMTBE005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTBE primary key (PMTBE_ID)
);
create unique index AK_TB_PMTBE on TB_PMTBE (PMTBE001,PMTBE002,PMTBE003);
create sequence SEQ_TB_PMTBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBE to public;
grant index  on TB_PMTBE to public;
grant update on TB_PMTBE to public; 
grant delete on TB_PMTBE to public;  
grant insert on TB_PMTBE to public; 
grant select on SEQ_TB_PMTBE to public;   