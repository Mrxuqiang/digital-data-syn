/*
================================================================================
��ṹ����:TB_PURFI
��ṹ����:����������
��ṹĿ��:�ֲ�
================================================================================
*/

drop sequence SEQ_TB_PURFI
drop index AK_TB_PURFI;
drop table TB_PURFI;
create table TB_PURFI  (
   PURFI_ID             INTEGER             not null,    /*������ID           */   
   PURFI001             INTEGER             not null,    /*����               */   
   PURFI002             VARCHAR2(30)        not null,    /*��������           */   
   PURFI003             DATE                not null,    /*��������           */  
   PURFI004             INTEGER             not null,    /*Ӫ����֯           */ 
   PURFI005             INTEGER             not null,    /*�����ֿ�           */
   PURFI006             VARCHAR2(1),                     /*��Դ����           */--1.����֪ͨ�� 2.����������
   PURFI007             INTEGER,                         /*��Դ��ID           */ 
   PURFI008             VARCHAR2(1),                     /*��Դ����           */
   PURFI009             INTEGER,                         /*����               */ 
   PURFI010             INTEGER,                         /*�ͻ�����           */ 
   PURFI011             VARCHAR2(30),                    /*�˿�����           */
   PURFI012             VARCHAR2(30),                    /*��ϵ�绰           */
   PURFI013             VARCHAR2(30),                    /*�ֻ���             */
   PURFI014             NUMBER(12,2) ,                   /*¥��               */
   PURFI015             VARCHAR2(1),                     /*�Ƿ��е���         */--0 ����û�У� 1��ʾ�� 
   PURFI016             VARCHAR2(255),                   /*�ͻ���ַ           */ 
   PURFI017             DATE,                            /*�ͻ�����           */
   PURFI018             INTEGER,                         /*¼����             */   
   PURFI019             DATE,                            /*¼������           */   
   PURFI020             INTEGER,                         /*�����             */   
   PURFI021             DATE,                            /*�������           */
   PURFI022             VARCHAR2(1)         not null,    /*���״̬           */  
   PURFI023             VARCHAR2(255),                   /*��ע               */   
   CREATE_USER          VARCHAR2(12),                    /*������Ա           */
   USER_GROUP           VARCHAR2(12),                    /*������Ա����       */                          
   CREATE_DATE          DATE,                            /*��������           */
   MODIFIER             VARCHAR2(12),                    /*�޸���Ա           */
   MODI_DATE            DATE,                            /*�޸�����           */
   FLAG                 NUMBER,                          /*����״̬           */
   constraint PK_TB_PURFI primary key (PURFI_ID)
);
create unique index AK_TB_PURFI on TB_PURFI (PURFI001,PURFI002,FLAG);
create sequence SEQ_TB_PURFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 

nocache;
grant select on TB_PURFI to public;
grant index  on TB_PURFI to public;
grant update on TB_PURFI to public; 
grant delete on TB_PURFI to public;  
grant insert on TB_PURFI to public; 
grant select on SEQ_TB_PURFI to public;   