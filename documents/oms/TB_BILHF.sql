/*
================================================================================
��ṹ����:TB_BILHF
��ṹ����:�������˵�������ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILHF;
drop index AK_TB_BILHF;
drop table TB_BILHF;
create table TB_BILHF  (
   BILHF_ID             INTEGER                           not null,   /*������ͬ���õ�����ϸID  */   
   BILHF001             INTEGER                           not null,   /*���˵�ID                */   
   BILHF002             INTEGER                           not null,   /*������ϸID              */   
   BILHF003             VARCHAR2(30)                      not null,   /*���õ���                */   
   BILHF004             INTEGER                           not null,   /*���õ���ϸID            */   
   BILHF005             VARCHAR2(1)                       not null,   /*��������                */   
   BILHF006             INTEGER                           not null,   /*���ñ���                */   
   BILHF007             VARCHAR2(30)                      not null,   /*��������                */   
   BILHF008             NUMBER(12,2)                      not null,   /*���ý��                */   
   BILHF009             NUMBER(12,2)                      not null,   /*�ѽ���                */   
   BILHF010             NUMBER(12,2)                      not null,   /*δ����                */
   CREATE_USER          VARCHAR2(12),                                 /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����        */                               
   CREATE_DATE          DATE,                                         /*��������            */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա            */
   MODI_DATE            DATE,                                         /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILHF primary key (BILHF_ID)
);
create unique index AK_TB_BILHF on TB_BILHF (BILHF003,BILHF005);
create sequence SEQ_TB_BILHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHF to public;
grant index  on TB_BILHF to public;
grant update on TB_BILHF to public; 
grant delete on TB_BILHF to public;  
grant insert on TB_BILHF to public; 
grant select on SEQ_TB_BILHF to public;   