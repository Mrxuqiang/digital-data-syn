/*
================================================================================
��ṹ����:TB_PUBNE
��ṹ����:���������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNE;
drop index AK_TB_PUBNE;
drop table TB_PUBNE;
create table TB_PUBNE  (
   PUBNE_ID             INTEGER                         not null,   /*����������ID            */
   PUBNE001             INTEGER                         not null,   /*����������ID            */
   PUBNE002             INTEGER,                                    /*���㵥λ����ID            */
   PUBNE003             VARCHAR2(200),                              /*���㵥λ����            */
   PUBNE004             VARCHAR2(100),                              /*���㵥λ���            */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����            */                               
   CREATE_DATE          DATE,                                       /*��������                */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                */
   MODI_DATE            DATE,                                       /*�޸�����                */
   FLAG                 NUMBER(1),                                  /*����״̬                */
   constraint PK_TB_PUBNE primary key (PUBNE_ID)
);
create unique index AK_TB_PUBNE on TB_PUBNE (PUBNE001);
create sequence SEQ_TB_PUBNE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNE to public;
grant index  on TB_PUBNE to public;
grant update on TB_PUBNE to public; 
grant delete on TB_PUBNE to public;  
grant insert on TB_PUBNE to public; 
grant select on SEQ_TB_PUBNE to public;   