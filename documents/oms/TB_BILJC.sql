/*
================================================================================
��ṹ����:TB_BILJC
��ṹ����:����/��Ӫ���˵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJC;
drop index AK_TB_BILJC;
drop table TB_BILJC;
create table TB_BILJC  (
   BILJC_ID        INTEGER                             not null,     /*������ϸID           */           
   BILJC001        INTEGER                             not null,     /*���˵�ID             */           
   BILJC002        VARCHAR2(1)                         not null,     /*��������             */           
   BILJC003        INTEGER                             not null,     /*���ñ���             */           
   BILJC004        VARCHAR2(30)                        not null,     /*��������             */           
   BILJC005        NUMBER(12,2)                        not null,     /*���ý��             */           
   BILJC006        NUMBER(12,2)                        not null,     /*�ѽ���             */           
   BILJC007        NUMBER(12,2)                        not null,     /*δ����             */           
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILJC primary key (BILJC_ID)
);
create unique index AK_TB_BILJC on TB_BILJC (BILJC003);
create sequence SEQ_TB_BILJC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJC to public;
grant index  on TB_BILJC to public;
grant update on TB_BILJC to public; 
grant delete on TB_BILJC to public;  
grant insert on TB_BILJC to public; 
grant select on SEQ_TB_BILJC to public;   