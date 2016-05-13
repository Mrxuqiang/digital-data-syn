/*
================================================================================
��ṹ����:TB_SERFE
��ṹ����:�ͻ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERFE;
drop index AK_TB_SERFE;
drop table TB_SERFE;
create table TB_SERFE  (
   SERFE_ID             INTEGER                   not null,    /*�ͻ���ID            */    
   SERFE001             INTEGER                   not null,    /*�ͻ�����            */    
   SERFE002             VARCHAR2(30)              not null,    /*�ͻ�����            */    
   SERFE003             DATE                      not null,    /*�ͻ�����            */    
   SERFE004             VARCHAR2(1)               not null,    /*������Դ            */    
   SERFE005             INTEGER                   not null,    /*��Դ��ID            */   
   SERFE006             VARCHAR2(30)              not null,    /*��Դ����            */    
   SERFE007             INTEGER                                /*Ӫ����֯            */    
   SERFE008             VARCHAR2(255)                          /*�ͻ���ַ            */    
   SERFE009             INTEGER                                /*�ͻ����            */   
   SERFE010             VARCHAR2(30)                           /*��Ա��              */   
   SERFE011             VARCHAR2(25)                           /*�������            */    
   SERFE012             VARCHAR2(25)                           /*����                */    
   SERFE013             DATE                                   /*��������            */    
   SERFE014             VARCHAR2(30)                           /*�˿�����            */    
   SERFE015             VARCHAR2(30)                           /*�˿͵绰            */   
   SERFE016             VARCHAR2(1)                            /*֤������            */   
   SERFE017             VARCHAR2(30)                           /*֤������            */   
   SERFE018             VARCHAR2(255)                          /*��ע                */    
   SERFE019             VARCHAR2(1),                           /*���״̬            */    
   SERFE020             INTEGER,                               /*¼����              */    
   SERFE021             DATE,                                  /*¼��ʱ��            */    
   SERFE022             INTEGER,                               /*�����              */    
   SERFE023             DATE,                                  /*���ʱ��            */  
   SERFE024             VARCHAR2(1)               not null,    /*�ͻ�״̬            */   
   CREATE_USER          VARCHAR2(12),                          /*������Ա         */
   USER_GROUP           VARCHAR2(12),                          /*������Ա����     */                               
   CREATE_DATE          DATE,                                  /*��������         */
   MODIFIER             VARCHAR2(12),                          /*�޸���Ա         */
   MODI_DATE            DATE,                                  /*�޸�����         */
   FLAG                 NUMBER(1),                             /*����״̬         */
   constraint PK_TB_SERFE primary key (SERFE_ID)
);
create unique index AK_TB_SERFE on TB_SERFE (SERFE001,SERFE002);
create sequence SEQ_TB_SERFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFE to public;
grant index  on TB_SERFE to public;
grant update on TB_SERFE to public; 
grant delete on TB_SERFE to public;  
grant insert on TB_SERFE to public; 
grant select on SEQ_TB_SERFE to public;   