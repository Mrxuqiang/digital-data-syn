/*
================================================================================
��ṹ����:TB_PUBNC
��ṹ����:���㵥λ��֧��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNC;
drop index AK_TB_PUBNC;
drop table TB_PUBNC;
create table TB_PUBNC  (
   PUBNC_ID             INTEGER                         not null,   /*���㵥λ��֧ID          */
   PUBNC001             INTEGER                         not null,   /*���㵥λ��ID            */
   PUBNC002             INTEGER,                                    /*��֧��Ŀ����ID          */
   PUBNC004             NUMBER(16,2),                               /*��ض��                */
   PUBNC005             INTEGER,                                    /*����ID                  */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����            */                               
   CREATE_DATE          DATE,                                       /*��������                */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                */
   MODI_DATE            DATE,                                       /*�޸�����                */
   FLAG                 NUMBER(1),                                  /*����״̬                */
   constraint PK_TB_PUBNC primary key (PUBNC_ID)
);
create unique index AK_TB_PUBNC on TB_PUBNC (PUBNC001);
create sequence SEQ_TB_PUBNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNC to public;
grant index  on TB_PUBNC to public;
grant update on TB_PUBNC to public; 
grant delete on TB_PUBNC to public;  
grant insert on TB_PUBNC to public; 
grant select on SEQ_TB_PUBNC to public;   