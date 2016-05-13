/*
================================================================================
��ṹ����:TB_PMTHB
��ṹ����:�ۼ���Ʒ��������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHB;
drop index AK_TB_PMTHB;
drop table TB_PMTHB;
create table TB_PMTHB  (
   PMTHB_ID             INTEGER                         not null,  /*������ƷID        */
   PMTHB001             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHB002             VARCHAR2(1)                     not null,  /*��������          */
   PMTHB003             INTEGER,                                   /*����ID            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHB primary key (PMTHB_ID)
);
create unique index AK_TB_PMTHB on TB_PMTHB (PMTHB001,PMTHB002,PMTHB003);
create sequence SEQ_TB_PMTHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHB to public;
grant index  on TB_PMTHB to public;
grant update on TB_PMTHB to public; 
grant delete on TB_PMTHB to public;  
grant insert on TB_PMTHB to public; 
grant select on SEQ_TB_PMTHB to public;   