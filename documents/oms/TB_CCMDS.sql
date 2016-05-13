/*
================================================================================
��ṹ����:TB_CCMDS
��ṹ����:ȯ״̬��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDS;
drop index AK_TB_CCMDS;
drop table TB_CCMDS;
create table TB_CCMDS  (
   CCMDS_ID             INTEGER                         not null,  /*ȯID                */
   CCMDS001             INTEGER                         not null,  /*ȯ��ID              */
   CCMDS002             NUMBER(30)                      not null,  /*ȯ��                */
   CCMDS003             VARCHAR2(1)                     not null,  /*ȯ״̬: 1.��� 2.���� 3.����  4.���� 5.����  */
   CCMDS004             VARCHAR2(1),                               /*����ǰȯ״̬: 1.��� 2.���� 3.����  4.���� 5.����  */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDS primary key (CCMDS_ID)
);
create unique index AK_TB_CCMDS on TB_CCMDS (CCMDS001,CCMDS002);
create sequence SEQ_TB_CCMDS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDS to public;
grant index  on TB_CCMDS to public;
grant update on TB_CCMDS to public; 
grant delete on TB_CCMDS to public;  
grant insert on TB_CCMDS to public; 
grant select on SEQ_TB_CCMDS to public;   