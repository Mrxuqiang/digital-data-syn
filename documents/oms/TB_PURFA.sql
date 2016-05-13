/*
================================================================================
��ṹ����:TB_PURFA
��ṹ����:�ɹ���ⵥ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURFA
drop index AK_TB_PURFA;
drop table TB_PURFA;
create table TB_PURFA  (
   PURFA_ID             INTEGER             not null,    /*��ⵥID           */   
   PURFA001             VARCHAR2(1)         not null,    /*�������           */   --mark 20100401
   PURFA002             INTEGER             not null,    /*��ⵥ��           */   
   PURFA003             VARCHAR2(30)        not null,    /*��ⵥ��           */   
   PURFA004             DATE                not null,    /*�������           */   
   PURFA005             INTEGER,                         /*�ջ�֪ͨ����       */   
   PURFA006             INTEGER             not null,    /*���Ӫ����֯       */   
   PURFA007             INTEGER             not null,    /*��ⲿ��           */   
   PURFA008             INTEGER             not null,    /*�����Ա           */   
   PURFA009             INTEGER,                         /*�ֿ�               */   --modify 20100401 
   PURFA010             INTEGER,                         /*��Ʒ����Ա         */   --mark 20100401 
   PURFA011             INTEGER             not null,    /*��Ӧ��             */   
   PURFA012             VARCHAR2(1)         not null,    /*��Ӫ��ʽ           */   
   PURFA013             VARCHAR2(1)         not null,    /*���䷽ʽ           */   --mark 20100401
   PURFA014             VARCHAR2(1)         not null,    /*ָ���ɹ�           */   --mark 20100401
   PURFA015             INTEGER,                         /*���̵���           */   --modify 20100401
   PURFA016             VARCHAR2(255),                   /*�ջ���ַ           */   
   PURFA017             VARCHAR2(255),                   /*��ע               */   
   PURFA018             VARCHAR2(1),                     /*���״̬           */   
   PURFA019             INTEGER,                         /*¼����             */   
   PURFA020             DATE,                            /*¼������           */   
   PURFA021             INTEGER,                         /*�����             */   
   PURFA022             DATE,                            /*�������           */
   PURFA023	        NUMBER(18,3),                    /*˰ǰ���ϼ�       */   --add by 0826
   PURFA024             NUMBER(18,3),                    /*��˰���ϼ�       */   
   PURFA025             VARCHAR2(1),                     /*��Դ��������       */ 1.�ֹ�¼�� 2.�ջ�֪ͨ�� 3.�ջ���      
   PURFA026             NUMBER(18,3),                    /*����               */ 
   PURFA027		VARCHAR2(30),                    /*��Ӧ���̵���			  */ 
   CREATE_USER          VARCHAR2(12),                    /*������Ա           */
   USER_GROUP           VARCHAR2(12),                    /*������Ա����       */                               
   CREATE_DATE          DATE,                            /*��������           */
   MODIFIER             VARCHAR2(12),                    /*�޸���Ա           */
   MODI_DATE            DATE,                            /*�޸�����           */
   FLAG                 NUMBER(1),                       /*����״̬           */
   constraint PK_TB_PURFA primary key (PURFA_ID)
);
create unique index AK_TB_PURFA on TB_PURFA (PURFA002,PURFA003);
create sequence SEQ_TB_PURFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFA to public;
grant index  on TB_PURFA to public;
grant update on TB_PURFA to public; 
grant delete on TB_PURFA to public;  
grant insert on TB_PURFA to public; 
grant select on SEQ_TB_PURFA to public;   