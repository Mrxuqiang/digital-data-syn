/*
================================================================================
��ṹ����:TB_BILIF
��ṹ����:�ɱ��������˵�������ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIF;
drop index AK_TB_BILIF;
drop table TB_BILIF;
create table TB_BILIF  (
   BILIF_ID             INTEGER                           not null,   /*�ɱ�������ͬ���õ�����ϸID  */   
   BILIF001             INTEGER                           not null,   /*���˵�ID                */   
   BILIF002             INTEGER                           not null,   /*������ϸID              */   
   BILIF003             VARCHAR2(30)                      not null,   /*���õ���                */   
   BILIF004             INTEGER                           not null,   /*���õ���ϸID            */   
   BILIF005             VARCHAR2(1)                       not null,   /*��������                */   
   BILIF006             INTEGER                           not null,   /*���ñ���                */   
   BILIF007             VARCHAR2(30)                      not null,   /*��������                */   
   BILIF008             NUMBER(12,2)                      not null,   /*���ý��                */   
   BILIF009             NUMBER(12,2)                      not null,   /*�ѽ���                */   
   BILIF010             NUMBER(12,2)                      not null,   /*δ����                */
   CREATE_USER          VARCHAR2(12),                                 /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����        */                               
   CREATE_DATE          DATE,                                         /*��������            */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա            */
   MODI_DATE            DATE,                                         /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILIF primary key (BILIF_ID)
);
create unique index AK_TB_BILIF on TB_BILIF (BILIF003,BILIF005);
create sequence SEQ_TB_BILIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIF to public;
grant index  on TB_BILIF to public;
grant update on TB_BILIF to public; 
grant delete on TB_BILIF to public;  
grant insert on TB_BILIF to public; 
grant select on SEQ_TB_BILIF to public;   