/*
================================================================================
��ṹ����:TB_CONBL
��ṹ����:��ͬ�������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBL;
drop index AK_TB_CONBL;
drop table TB_CONBL;
create table TB_CONBL  (
   CONBL_ID             INTEGER                         not null,  /*��ͬ��������ID      */
   CONBL001             INTEGER                         not null,  /*��ͬID              */
   CONBL002             INTEGER                         not null,  /*����ID              */
   CONBL003             NUMBER(12,2)                    not null,  /*���ý��            */����
   CONBL004             DATE                            not null,  /*��׼����            */
   CONBL005             DATE                                    ,  /*��ʼ����            */
   CONBL006             DATE                                    ,  /*��ֹ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONBL primary key (CONBL_ID)
);
create unique index AK_TB_CONBL on TB_CONBL (CONBL001,CONBL002,CONBL004);
create sequence SEQ_TB_CONBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBL to public;
grant index  on TB_CONBL to public;
grant update on TB_CONBL to public; 
grant delete on TB_CONBL to public;  
grant insert on TB_CONBL to public; 
grant select on SEQ_TB_CONBL to public;   