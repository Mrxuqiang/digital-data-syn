/*
================================================================================
��ṹ����:TB_PMTBC
��ṹ����:��Ʒ�ؼ۵�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTBC;
drop index AK_TB_PMTBC;
drop table TB_PMTBC;
create table TB_PMTBC  (
   PMTBC_ID             INTEGER                         not null,  /*�ۿ۲��������ID  */
   PMTBC001             INTEGER                         not null,  /*��Ʒ�ؼ۵�ID      */
   PMTBC002             VARCHAR2(1)                     not null,  /*�������������    */
   PMTBC003             INTEGER,                                   /*���������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTBC primary key (PMTBC_ID)
);
create unique index AK_TB_PMTBC on TB_PMTBC (PMTBC001,PMTBC002,PMTBC003);
create sequence SEQ_TB_PMTBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBC to public;
grant index  on TB_PMTBC to public;
grant update on TB_PMTBC to public; 
grant delete on TB_PMTBC to public;  
grant insert on TB_PMTBC to public; 
grant select on SEQ_TB_PMTBC to public;   