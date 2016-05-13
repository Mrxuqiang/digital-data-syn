/*
================================================================================
��ṹ����:TB_INVHA
��ṹ����:���쵥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVHA;
drop index AK_TB_INVHA;
drop table TB_INVHA;
create table TB_INVHA  (
   INVHA_ID             INTEGER              not null,   /*���쵥ID          */   
   INVHA001             INTEGER              not null,   /*���쵥��          */   
   INVHA002             VARCHAR2(30)         not null,   /*���쵥��          */   
   INVHA003             DATE                 not null,   /*�����������      */   
   INVHA004             INTEGER              not null,   /*�ջ�Ӫ����֯      */   
   INVHA005             INTEGER              not null,   /*����Ӫ����֯      */   
   INVHA006             INTEGER              not null,   /*����Ӫ����֯      */   
   INVHA007             INTEGER,                         /*���������Ա      */   
   INVHA008             VARCHAR2(1)          not null,   /*������Դ����      */   
   INVHA009             INTEGER              not null,   /*��Դ����ID        */   
   INVHA010             VARCHAR2(30)         not null,   /*��Դ����          */   
   INVHA011             VARCHAR2(1),         not null,   /*���״̬          */   
   INVHA012             INTEGER,                         /*¼����            */   
   INVHA013             DATE,                            /*¼������          */   
   INVHA014             INTEGER,                         /*�����            */   
   INVHA015             DATE,                            /*�������          */   
   CREATE_USER          VARCHAR2(12),                    /*������Ա        */
   USER_GROUP           VARCHAR2(12),                    /*������Ա����    */                               
   CREATE_DATE          DATE,                            /*��������        */
   MODIFIER             VARCHAR2(12),                    /*�޸���Ա        */
   MODI_DATE            DATE,                            /*�޸�����        */
   FLAG                 NUMBER(1),                       /*����״̬        */
   constraint PK_TB_INVHA primary key (INVHA_ID)
);
create unique index AK_TB_INVHA on TB_INVHA (INVHA001,INVHA002);
create sequence SEQ_TB_INVHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVHA to public;
grant index  on TB_INVHA to public;
grant update on TB_INVHA to public; 
grant delete on TB_INVHA to public;  
grant insert on TB_INVHA to public; 
grant select on SEQ_TB_INVHA to public;   