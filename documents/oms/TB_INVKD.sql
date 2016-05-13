/*
================================================================================
��ṹ����:TB_INVKD
��ṹ����:�����ϸ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVKD;
drop index AK_TB_INVKD;
drop table TB_INVKD;
create table TB_INVKD  (
   INVKD_ID             INTEGER                    not null,    /*�����ϸ����ID            */    
   INVKD001             INTEGER                    not null,    /*�����ϸ����            */    
   INVKD002             VARCHAR2(30)           	   not null,    /*�����ϸ����            */    
   INVKD003             DATE                       not null,    /*��������            */    
   INVKD004             INTEGER		           not null,    /*Ӫ����֯            */ 
   INVKD005             VARCHAR2(30)               not null,    /*�������            */  
   INVKD006             INTEGER                    not null,    /*�ֿ�       */   
   INVKD007             VARCHAR2(1),                            /*���ɷ�ʽ            */      
   INVKD008             INTEGER,                                /*����            */
   INVKD009             INTEGER,                                /*����            */    
   INVKD010             INTEGER,                                /*����            */   
   INVKD011              DATE,                                  /*�������              */    
   INVKD012             INTEGER,                                /*�����              */ 
   INVKD013             INTEGER,                                /*¼����              */    
   INVKD014             DATE,                                   /*¼��ʱ��            */   
   INVKD015             INTEGER,                                /*�����ID            */
   CREATE_USER          VARCHAR2(12),                          /*������Ա         */
   USER_GROUP           VARCHAR2(12),                          /*������Ա����     */        
   CREATE_DATE          DATE,                                  /*��������         */
   MODIFIER             VARCHAR2(12),                          /*�޸���Ա         */
   MODI_DATE            DATE,                                  /*�޸�����         */
   FLAG                 NUMBER(1),                             /*����״̬         */
   constraint PK_TB_SERFE primary key (INVKD_ID)
);
create unique index AK_TB_SERFE on TB_INVKD (INVKD002,INVKD004,INVKD006);
create sequence SEQ_TB_INVKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVKD to public;
grant index  on TB_INVKD to public;
grant update on TB_INVKD to public; 
grant delete on TB_INVKD to public;  
grant insert on TB_INVKD to public; 
grant select on SEQ_TB_INVKD to public;   


