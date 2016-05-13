/*
================================================================================
��ṹ����:TB_PMTKB
��ṹ����:�齱��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTKB;
drop index AK_TB_PMTKB;
drop table TB_PMTKB;
create table TB_PMTKB  (
   PMTKB_ID             INTEGER                         not null,  /*�齱����ID        */
   PMTKB001             INTEGER                         not null,  /*�齱���ID      */
   PMTKB002             VARCHAR2(10),                              /*�齱�ȼ�          */
   PMTKB003             INTEGER                         not null,  /*��ƷID            */
   PMTKB004             INTEGER,                                   /*��λID            */
   PMTKB005             NUMBER(12,2),                              /*����              */
   PMTKB006             NUMBER(18,3),                              /*����              */
   PMTKB007             NUMBER(12,2),                              /*���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTKB primary key (PMTKB_ID)
);
create unique index AK_TB_PMTKB on TB_PMTKB (PMTKB001,PMTKB002,PMTKB003);
create sequence SEQ_TB_PMTKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKB to public;
grant index  on TB_PMTKB to public;
grant update on TB_PMTKB to public; 
grant delete on TB_PMTKB to public;  
grant insert on TB_PMTKB to public; 
grant select on SEQ_TB_PMTKB to public;   