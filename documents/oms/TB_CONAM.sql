/*
================================================================================
��ṹ����:TB_CONAM
��ṹ����:SAP���ñ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAM;
drop index AK_TB_CONAM;
drop table TB_CONAM;
create table TB_CONAM  (
   CONAM_ID             INTEGER                         not null,  /*SAP���ñ���ID       */
   CONAM001             VARCHAR2(4)                     not null,  /*���ñ���            */
   CONAM002             VARCHAR2(60)                    not null,  /*��������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONAM primary key (CONAM_ID)
);
create unique index AK_TB_CONAM on TB_CONAM (CONAM001);
create sequence SEQ_TB_CONAM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAM to public;
grant index  on TB_CONAM to public;
grant update on TB_CONAM to public; 
grant delete on TB_CONAM to public;  
grant insert on TB_CONAM to public; 
grant select on SEQ_TB_CONAM to public;   