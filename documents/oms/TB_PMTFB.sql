/*
================================================================================
��ṹ����:TB_PMTFB
��ṹ����:���ȯ��������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFB;
drop index AK_TB_PMTFB;
drop table TB_PMTFB;
create table TB_PMTFB  (
   PMTFB_ID             INTEGER                         not null,  /*������ƷID        */
   PMTFB001             INTEGER                         not null,  /*���ȯ��ID      */
   PMTFB002             VARCHAR2(1)                     not null,  /*��������          */
   PMTFB003             INTEGER,                                   /*����ID            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFB primary key (PMTFB_ID)
);
create unique index AK_TB_PMTFB on TB_PMTFB (PMTFB001,PMTFB002,PMTFB003);
create sequence SEQ_TB_PMTFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFB to public;
grant index  on TB_PMTFB to public;
grant update on TB_PMTFB to public; 
grant delete on TB_PMTFB to public;  
grant insert on TB_PMTFB to public; 
grant select on SEQ_TB_PMTFB to public;   