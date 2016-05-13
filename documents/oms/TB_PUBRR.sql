/*
================================================================================
��ṹ����:TB_PUBRR
��ṹ����:��ת�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRR;
drop index AK_TB_PUBRR;
drop table TB_PUBRR;
create table TB_PUBRR  (
   PUBRR_ID             INTEGER                         not null,  /*��ת������ID       */
   PUBRR001             VARCHAR2(10)                    not null,  /*����               */
   PUBRR002             VARCHAR2(30)                    not null,  /*����               */
   PUBRR003             INTEGER ,                                  /*�����ϼ�           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBRR primary key (PUBRR_ID)
);
create unique index AK_TB_PUBRR on TB_PUBRR (PUBRR001,PUBRR002);
create sequence SEQ_TB_PUBRR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRR to public;
grant index  on TB_PUBRR to public;
grant update on TB_PUBRR to public; 
grant delete on TB_PUBRR to public;  
grant insert on TB_PUBRR to public; 
grant select on SEQ_TB_PUBRR to public;   