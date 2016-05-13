/*
================================================================================
��ṹ����:TB_CONCN
��ṹ����:��ͬ���������Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCN;
drop index AK_TB_CONCN;
drop table TB_CONCN;
create table TB_CONCN  (
   CONCN_ID             INTEGER                         not null,  /*��ͬ���������ĿID  */
   CONCN001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCN002             INTEGER                         not null,  /*����ID              */
   CONCN003             VARCHAR2(1)                     not null,  /*��������            */
   CONCN004             VARCHAR2(1)                     not null,  /*�Ƿ�ѡ��            */
   CONCN005             VARCHAR2(1)                     not null,  /*�Ƿ���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONCN primary key (CONCN_ID)
);
create unique index AK_TB_CONCN on TB_CONCN (CONCN001,CONCN002);
create sequence SEQ_TB_CONCN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCN to public;
grant index  on TB_CONCN to public;
grant update on TB_CONCN to public; 
grant delete on TB_CONCN to public;  
grant insert on TB_CONCN to public; 
grant select on SEQ_TB_CONCN to public;   