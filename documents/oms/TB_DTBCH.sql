/*
================================================================================
��ṹ����:TB_DTBCH
��ṹ����:�ų����ͻ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCH;
drop index AK_TB_DTBCH;
drop table TB_DTBCH;
create table TB_DTBCH  (                                       
   DTBCH_ID	         INTEGER                       not null,   /*�ͻ��б�ID       */           
   DTBCH001	         INTEGER                       not null,   /*�ų���ID       */           
   DTBCH002	         INTEGER                       not null,   /*�ͻ�ID           */           
   DTBCH003	         INTEGER                       not null,   /*��Դ����         */           
   DTBCH004	         VARCHAR2(255)                 not null,   /*�ͻ���ַ         */           
   DTBCH005	         DATE                          not null,   /*�ͻ�����         */           
   DTBCH006	         VARCHAR2(30),                             /*�˿�����         */           
   DTBCH007	         VARCHAR2(30),                             /*�˿͵绰         */           
   DTBCH008	         NUMBER(12,2)                  not null,   /*��������         */           
   DTBCH009	         VARCHAR2(10),                             /*ԤԼʱ��         */           
   DTBCH010	         VARCHAR2(10),                             /*¥��             */           
   DTBCH011	         NUMBER(12,2),                             /*���             */           
   DTBCH012	         NUMBER(12,2),                             /*����             */           
   DTBCH013	         NUMBER(4)                     not null,   /*�ŵ�˳��         */                     
   DTBCH014	         VARCHAR2(1)                   not null,   /*�ͻ�״̬         */    
   DTBCH015	         VARCHAR2(1)                   not null,   /*��Դ���         */  --2010.1.20 add by hansf
   DTBCH016	         INTEGER                       not null,   /*��Դ�ŵ�         */    --2010-01-26 add by hansf
   DTBCH017              INTEGER                       NOT NULL,   /*�ų�����         */	
   DTBCH018              VARCHAR2(255)                 NOT NULL,   /*�ֻ���һ        */
   DTBCH019              VARCHAR2(255)                 NOT NULL,   /*�ֻ��Ŷ�        */
   DTBCH020              VARCHAR2(255)                 NOT NULL,   /*��ע            */  
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */             
   CREATE_DATE        DATE,                                        /*��������        */             
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */             
   MODI_DATE          DATE,                                        /*�޸�����        */             
   FLAG               NUMBER(1),                                   /*����״̬        */            


  constraint PK_TB_DTBCH primary key (DTBCH_ID)                               
);                                           
create unique index AK_TB_DTBCH on TB_DTBCH (DTBCH002,DTBCH003);               
create sequence SEQ_TB_DTBCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCH to public;                                     
grant index  on TB_DTBCH to public;                                     
grant update on TB_DTBCH to public;                                      
grant delete on TB_DTBCH to public;                                       
grant insert on TB_DTBCH to public;                                      
grant select on SEQ_TB_DTBCH to public;                                        