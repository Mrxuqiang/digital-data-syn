/*
================================================================================
��ṹ����:TB_CONBD
��ṹ����:��ͬ�Żݵ���Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBD;
drop index AK_TB_CONBD;
drop table TB_CONBD;
create table TB_CONBD  (
   CONBD_ID             INTEGER                         not null,  /*�Żݵ���Ч��ΧID    */
   CONBD001             INTEGER                         not null,  /*�Żݵ�ID            */
   CONBD002             INTEGER,                                   /*Ӫ����֯ID          */
   CONBD003             INTEGER,                                   /*¥��ID              */
   CONBD004             INTEGER,                                   /*С��ID              */
   CONBD005             INTEGER,                                   /*̯λ���ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBD primary key (CONBD_ID)
);
create unique index AK_TB_CONBD on TB_CONBD (CONBD001,CONBD002,CONBD003,CONBD004,CONBD005);
create sequence SEQ_TB_CONBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBD to public;
grant index  on TB_CONBD to public;
grant update on TB_CONBD to public; 
grant delete on TB_CONBD to public;  
grant insert on TB_CONBD to public; 
grant select on SEQ_TB_CONBD to public;   