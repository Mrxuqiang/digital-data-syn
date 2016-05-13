/*
================================================================================
��ṹ����:TB_PMTJB
��ṹ����:��Ʒ��ϵ�������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTJB;
drop index AK_TB_PMTJB;
drop table TB_PMTJB;
create table TB_PMTJB  (
   PMTJB_ID             INTEGER                         not null,  /*������ƷID        */
   PMTJB001             INTEGER                         not null,  /*��Ʒ��ϵ�ID      */
   PMTJB002             VARCHAR2(5)                     not null,  /*�������          */
   PMTJB003             INTEGER                         not null,  /*��ƷID            */
   PMTJB004             INTEGER                         not null,  /*��λID            */
   PMTJB005             NUMBER(12,2),                              /*��������          */
   PMTJB006             NUMBER(12,2),                              /*�����ۼ�          */
   PMTJB007             NUMBER(12,2),                              /*���۵���          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTJB primary key (PMTJB_ID)
);
create unique index AK_TB_PMTJB on TB_PMTJB (PMTJB001,PMTJB002,PMTJB006);
create sequence SEQ_TB_PMTJB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJB to public;
grant index  on TB_PMTJB to public;
grant update on TB_PMTJB to public; 
grant delete on TB_PMTJB to public;  
grant insert on TB_PMTJB to public; 
grant select on SEQ_TB_PMTJB to public;   