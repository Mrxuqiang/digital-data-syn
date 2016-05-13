/*
================================================================================
��ṹ����:TB_BILJF
��ṹ����:����/��Ӫ���˵�������ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJF;
drop index AK_TB_BILJF;
drop table TB_BILJF;
create table TB_BILJF  (
   BILJF_ID             INTEGER                           not null,   /*����/��Ӫ��ͬ���õ�����ϸID  */   
   BILJF001             INTEGER                           not null,   /*���˵�ID                */   
   BILJF002             INTEGER                           not null,   /*������ϸID              */   
   BILJF003             VARCHAR2(30)                      not null,   /*���õ���                */   
   BILJF004             INTEGER                           not null,   /*���õ���ϸID            */   
   BILJF005             VARCHAR2(1)                       not null,   /*��������                */   
   BILJF006             INTEGER                           not null,   /*���ñ���                */   
   BILJF007             VARCHAR2(30)                      not null,   /*��������                */   
   BILJF008             NUMBER(12,2)                      not null,   /*���ý��                */   
   BILJF009             NUMBER(12,2)                      not null,   /*�ѽ���                */   
   BILJF010             NUMBER(12,2)                      not null,   /*δ����                */
   CREATE_USER          VARCHAR2(12),                                 /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����        */                               
   CREATE_DATE          DATE,                                         /*��������            */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա            */
   MODI_DATE            DATE,                                         /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILJF primary key (BILJF_ID)
);
create unique index AK_TB_BILJF on TB_BILJF (BILJF003,BILJF005);
create sequence SEQ_TB_BILJF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJF to public;
grant index  on TB_BILJF to public;
grant update on TB_BILJF to public; 
grant delete on TB_BILJF to public;  
grant insert on TB_BILJF to public; 
grant select on SEQ_TB_BILJF to public;   