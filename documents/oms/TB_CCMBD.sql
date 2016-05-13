/*
================================================================================
��ṹ����:TB_CCMBD
��ṹ����:�׿����õ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBD;
drop index AK_TB_CCMBD;
drop table TB_CCMBD;
create table TB_CCMBD  (
   CCMBD_ID             INTEGER                         not null,  /*�׿����õ���ϸID    */
   CCMBD001             INTEGER                         not null,  /*�׿����õ�ID        */
   CCMBD002             INTEGER                         not null,  /*����ID              */
   CCMBD003             NUMBER(18)                      not null,  /*��ʼ����            */
   CCMBD004             NUMBER(18)                      not null,  /*��������            */
   CCMBD005             NUMBER(12)                      not null,  /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBD primary key (CCMBD_ID)
);
create unique index AK_TB_CCMBD on TB_CCMBD (CCMBD001,CCMBD002,CCMBD003);
create sequence SEQ_TB_CCMBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBD to public;
grant index  on TB_CCMBD to public;
grant update on TB_CCMBD to public; 
grant delete on TB_CCMBD to public;  
grant insert on TB_CCMBD to public; 
grant select on SEQ_TB_CCMBD to public;   