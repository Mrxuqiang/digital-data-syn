/*
================================================================================
��ṹ����:TB_SERBF
��ṹ����:�̻����ֵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERBF;
drop index AK_TB_SERBF;
drop table TB_SERBF;
create table TB_SERBF  (                                                                               
   SERBF_ID             INTEGER                        not null,   /*��¼��ID            */                                            
   SERBF001             INTEGER                        not null,   /*��¼����            */                                            
   SERBF002             VARCHAR2(30)                   not null,   /*��¼����            */                                            
   SERBF003             DATE                           not null,   /*��¼����            */                                            
   SERBF004             DATE ,                                     /*ʵ�ʴ�������        */                                            
   SERBF005             NUMBER(1)                      not null,   /*��������            */                                            
   SERBF006             NUMBER(12,2)                   not null,   /*���ַ�ֵ            */                                           
   SERBF007             INTEGER                        not null,   /*�̻����            */
   SERBF008             INTEGER,                                  /*��ͬ��              */
   SERBF009             VARCHAR2(255),                             /*�¼�����            */                                                               
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                            
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                            
   CREATE_DATE          DATE,                                      /*��������            */                                            
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */                                            
   MODI_DATE            DATE,                                      /*�޸�����            */                                            
   FLAG                 NUMBER(1),                                 /*����״̬            */                                            
                                           
   constraint PK_TB_SERBF primary key (SERBF_ID)                               
);                                           
create unique index AK_TB_SERBF on TB_SERBF (SERBF001,SERBF002);               
create sequence SEQ_TB_SERBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBF to public;                                     
grant index  on TB_SERBF to public;                                     
grant update on TB_SERBF to public;                                      
grant delete on TB_SERBF to public;                                       
grant insert on TB_SERBF to public;                                      
grant select on SEQ_TB_SERBF to public;                                        