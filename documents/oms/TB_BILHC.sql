/*
================================================================================
��ṹ����:TB_BILHC
��ṹ����:�������˵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILHC;
drop index AK_TB_BILHC;
drop table TB_BILHC;
create table TB_BILHC  (
   BILHC_ID        INTEGER                             not null,     /*������ϸID           */           
   BILHC001        INTEGER                             not null,     /*���˵�ID             */           
   BILHC002        VARCHAR2(1)                         not null,     /*��������             */   01.һ����ã�02�����3��������֤��        
   BILHC003        INTEGER                             not null,     /*���ñ���             */           
   BILHC004        VARCHAR2(30)                        not null,     /*��������             */           
   BILHC005        NUMBER(12,2)                        not null,     /*���ý��             */           
   BILHC006        NUMBER(12,2)                        not null,     /*�ѽ���             */           
   BILHC007        NUMBER(12,2)                        not null,     /*δ����             */           
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILHC primary key (BILHC_ID)
);
create unique index AK_TB_BILHC on TB_BILHC (BILHC003);
create sequence SEQ_TB_BILHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHC to public;
grant index  on TB_BILHC to public;
grant update on TB_BILHC to public; 
grant delete on TB_BILHC to public;  
grant insert on TB_BILHC to public; 
grant select on SEQ_TB_BILHC to public;   