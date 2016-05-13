/*
================================================================================
��ṹ����:TB_PMTCC
��ṹ����:��Ʒ�ۿ۵�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTCC;
drop index AK_TB_PMTCC;
drop table TB_PMTCC;
create table TB_PMTCC  (
   PMTCC_ID             INTEGER                         not null,  /*�ۿ۲��������ID  */
   PMTCC001             INTEGER                         not null,  /*��Ʒ�ۿ۵�ID      */
   PMTCC002             VARCHAR2(1)                     not null,  /*�������������    */
   PMTCC003             INTEGER,                                   /*���������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTCC primary key (PMTCC_ID)
);
create unique index AK_TB_PMTCC on TB_PMTCC (PMTCC001,PMTCC002,PMTCC003);
create sequence SEQ_TB_PMTCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCC to public;
grant index  on TB_PMTCC to public;
grant update on TB_PMTCC to public; 
grant delete on TB_PMTCC to public;  
grant insert on TB_PMTCC to public; 
grant select on SEQ_TB_PMTCC to public;   