/*
================================================================================
��ṹ����:TB_CONBR
��ṹ����:��ͬ������Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBR;
drop index AK_TB_CONBR;
drop table TB_CONBR;
create table TB_CONBR  (
   CONBR_ID             INTEGER                         not null,  /*��ͬ������ĿID      */
   CONBR001             INTEGER                         not null,  /*��ͬID              */
   CONBR002             INTEGER                         not null,  /*����ID              */
   CONBR003             VARCHAR2(1)                     not null,  /*��������            */
   CONBR004             VARCHAR2(1)                     not null,  /*�Ƿ�ѡ��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBR primary key (CONBR_ID)
);
create unique index AK_TB_CONBR on TB_CONBR (CONBR001,CONBR002);
create sequence SEQ_TB_CONBR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBR to public;
grant index  on TB_CONBR to public;
grant update on TB_CONBR to public; 
grant delete on TB_CONBR to public;  
grant insert on TB_CONBR to public; 
grant select on SEQ_TB_CONBR to public;   