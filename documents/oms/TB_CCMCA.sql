/*
================================================================================
��ṹ����:TB_CCMCA
��ṹ����:���ѿ���Ȩ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMCA;
drop index AK_TB_CCMCA;
drop table TB_CCMCA;
create table TB_CCMCA  (
   CCMCA_ID             INTEGER                         not null,  /*��ȨID              */
   CCMCA001             INTEGER                         not null,  /*�û�ID              */
   CCMCA002             VARCHAR2(30)                    not null,  /*�û�����            */
   CCMCA003             VARCHAR2(1),                               /*�Ƿ����Ա          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMCA primary key (CCMCA_ID)
);
create unique index AK_TB_CCMCA on TB_CCMCA (CCMCA001);
create sequence SEQ_TB_CCMCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCA to public;
grant index  on TB_CCMCA to public;
grant update on TB_CCMCA to public; 
grant delete on TB_CCMCA to public;  
grant insert on TB_CCMCA to public; 
grant select on SEQ_TB_CCMCA to public;   