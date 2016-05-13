/*
================================================================================
��ṹ����:TB_CONFB
��ṹ����:��Ӧ�̺�ͬ�����Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONFB;
drop index AK_TB_CONFB;
drop table TB_CONFB;
create table TB_CONFB  (
   CONFB_ID             INTEGER                         not null,  /*��ͬ�����Ч��ΧID  */
   CONFB001             INTEGER                         not null,  /*��ͬ���ID          */
   CONFB002             INTEGER                         not null,  /*�ڲ�Ʒ��ID          */
   CONFB003             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONFB004             INTEGER                         not null,  /*��˾ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONFB primary key (CONFB_ID)
);
create unique index AK_TB_CONFB on TB_CONFB (CONFB001,CONFB002,CONFB003);
create sequence SEQ_TB_CONFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFB to public;
grant index  on TB_CONFB to public;
grant update on TB_CONFB to public; 
grant delete on TB_CONFB to public;  
grant insert on TB_CONFB to public; 
grant select on SEQ_TB_CONFB to public;   