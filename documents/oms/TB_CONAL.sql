/*
================================================================================
��ṹ����:TB_CONAL
��ṹ����:��ͬ��Ŀȷ��ֵ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAL;
drop index AK_TB_CONAL;
drop table TB_CONAL;
create table TB_CONAL  (
   CONAL_ID             INTEGER                         not null,  /*��ͬ��������ID      */
   CONAL001             VARCHAR2(4)                     not null,  /*��Ŀȷ��ֵ���      */
   CONAL002             VARCHAR2(60)                    not null,  /*��Ŀȷ��ֵ����      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONAL primary key (CONAL_ID)
);
create unique index AK_TB_CONAL on TB_CONAL (CONAL001);
create sequence SEQ_TB_CONAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAL to public;
grant index  on TB_CONAL to public;
grant update on TB_CONAL to public; 
grant delete on TB_CONAL to public;  
grant insert on TB_CONAL to public; 
grant select on SEQ_TB_CONAL to public;   