/*
================================================================================
��ṹ����:TB_BILIC
��ṹ����:�ɱ��������˵������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIC;
drop index AK_TB_BILIC;
drop table TB_BILIC;
create table TB_BILIC  (
   BILIC_ID        INTEGER                             not null,     /*������ϸID           */           
   BILIC001        INTEGER                             not null,     /*���˵�ID             */           
   BILIC002        VARCHAR2(1)                         not null,     /*��������             */           
   BILIC003        INTEGER                             not null,     /*���ñ���             */           
   BILIC004        VARCHAR2(30)                        not null,     /*��������             */           
   BILIC005        NUMBER(12,2)                        not null,     /*���ý��             */           
   BILIC006        NUMBER(12,2)                        not null,     /*�ѽ���             */           
   BILIC007        NUMBER(12,2)                        not null,     /*δ����             */           
   CREATE_USER          VARCHAR2(12),                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                       /*��������            */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա            */
   MODI_DATE            DATE,                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                  /*����״̬            */
   constraint PK_TB_BILIC primary key (BILIC_ID)
);
create unique index AK_TB_BILIC on TB_BILIC (BILIC003);
create sequence SEQ_TB_BILIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIC to public;
grant index  on TB_BILIC to public;
grant update on TB_BILIC to public; 
grant delete on TB_BILIC to public;  
grant insert on TB_BILIC to public; 
grant select on SEQ_TB_BILIC to public;   