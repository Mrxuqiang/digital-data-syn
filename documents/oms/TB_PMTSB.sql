/*
================================================================================
��ṹ����:TB_PMTSB
��ṹ����:����ֱ���������ֱ��ۿ۹���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTSB;
drop index AK_TB_PMTSB;
drop table TB_PMTSB;
create table TB_PMTSB  (
   PMTSB_ID             INTEGER                         not null,  /*����ֱ�����������ID      */
   PMTSB001             INTEGER                         not null,  /*����ֱ��������ID          */
   PMTSB002             NUMBER(18,3)                    not null,  /*��ʼ���          */
   PMTSB003             NUMBER(18,3)                    not null,  /*�������          */
   PMTSB004             NUMBER(18,3)                    not null,  /*ֱ�����      */
   PMTSB005             NUMBER(18,3),                              /*�𵥱���      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTSB primary key (PMTSB_ID)
);
--create unique index AK_TB_PMTSB on TB_PMTSB (PMTSB001);
create sequence SEQ_TB_PMTSB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSB to public;
grant index  on TB_PMTSB to public;
grant update on TB_PMTSB to public; 
grant delete on TB_PMTSB to public;  
grant insert on TB_PMTSB to public; 
grant select on SEQ_TB_PMTSB to public;   
