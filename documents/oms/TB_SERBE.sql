/*
================================================================================
��ṹ����:TB_SERBE
��ṹ����:Ͷ���ܷ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERBE;
drop index AK_TB_SERBE;
drop table TB_SERBE;
create table TB_SERBE  (                           
   SERBE_ID             INTEGER                         not null,  /*�ܷ���ID            */
   SERBE001             INTEGER                         not null,  /*�ܷ�����            */
   SERBE002             VARCHAR2(30)                    not null,  /*�ܷ�����            */
   SERBE003             INTEGER                         not null,  /*Ͷ�ߵ�ID            */
   SERBE004             INTEGER                         not null,  /*�����̻�ID          */
   SERBE005             NUMBER(12,2)                    not null,  /*������            */
   SERBE006             VARCHAR2(255)                   not null,  /*����ԭ��            */
   SERBE007             DATE                            not null,  /*��������            */
   SERBE008             NUMBER(1)                       not null,  /*��ǰ״̬            */
   SERBE009             INTEGER                         not null,  /*������              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */ 
   MODI_DATE            DATE,                                      /*�޸�����            */ 
   FLAG                 NUMBER(1),                                 /*����״̬            */ 

   constraint PK_TB_SERBE primary key (SERBE_ID)
);
create unique index AK_TB_SERBE on TB_SERBE (SERBE001,SERBE002);
create sequence SEQ_TB_SERBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBE to public;
grant index  on TB_SERBE to public;
grant update on TB_SERBE to public; 
grant delete on TB_SERBE to public;  
grant insert on TB_SERBE to public; 
grant select on SEQ_TB_SERBE to public;   