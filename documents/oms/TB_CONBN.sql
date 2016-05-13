/*
================================================================================
��ṹ����:TB_CONBN
��ṹ����:��ͬ���۱����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBN;
drop index AK_TB_CONBN;
drop table TB_CONBN;
create table TB_CONBN  (
   CONBN_ID             INTEGER                         not null,  /*��ͬ������ϸID      */
   CONBN001             INTEGER                         not null,  /*��ͬID              */
   CONBN002             DATE                            not null,  /*��ʼ����            */
   CONBN003             DATE                            not null,  /*��������            */
   CONBN004             NUMBER(12,2)                    not null,  /*���۱���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBN primary key (CONBN_ID)
);
create unique index AK_TB_CONBN on TB_CONBN (CONBN001,CONBN002);
create sequence SEQ_TB_CONBN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBN to public;
grant index  on TB_CONBN to public;
grant update on TB_CONBN to public; 
grant delete on TB_CONBN to public;  
grant insert on TB_CONBN to public; 
grant select on SEQ_TB_CONBN to public;   