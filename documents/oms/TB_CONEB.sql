/*
================================================================================
��ṹ����:TB_CONEB
��ṹ����:��Ӧ�̺�ͬ��Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONEB;
drop index AK_TB_CONEB;
drop table TB_CONEB;
create table TB_CONEB  (
   CONEB_ID             INTEGER                         not null,  /*��ͬ��Ч��ΧID      */
   CONEB001             INTEGER                         not null,  /*��ͬID              */
   CONEB002             INTEGER                         not null,  /*�ڲ�Ʒ��ID          */
   CONEB003             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONEB004             INTEGER                         not null,  /*��˾ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONEB primary key (CONEB_ID)
);
create unique index AK_TB_CONEB on TB_CONEB (CONEB001,CONEB002,CONEB003);
create sequence SEQ_TB_CONEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEB to public;
grant index  on TB_CONEB to public;
grant update on TB_CONEB to public; 
grant delete on TB_CONEB to public;  
grant insert on TB_CONEB to public; 
grant select on SEQ_TB_CONEB to public;   