/*
================================================================================
��ṹ����:TB_PUBNB
��ṹ����:���㵥λ�ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNB;
drop index AK_TB_PUBNB;
drop table TB_PUBNB;
create table TB_PUBNB  (
   PUBNB_ID             INTEGER                         not null,   /*���㵥λ�û�ID          */
   PUBNB001             INTEGER                         not null,   /*���㵥λ��ID            */
   PUBNB002             INTEGER,                                    /*�û�����ID              */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����            */                               
   CREATE_DATE          DATE,                                       /*��������                */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                */
   MODI_DATE            DATE,                                       /*�޸�����                */
   FLAG                 NUMBER(1),                                  /*����״̬                */
   constraint PK_TB_PUBNB primary key (PUBNB_ID)
);
create unique index AK_TB_PUBNB on TB_PUBNB (PUBNB001);
create sequence SEQ_TB_PUBNB minvalue 1 NBxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNB to public;
grant index  on TB_PUBNB to public;
grant update on TB_PUBNB to public; 
grant delete on TB_PUBNB to public;  
grant insert on TB_PUBNB to public; 
grant select on SEQ_TB_PUBNB to public;   