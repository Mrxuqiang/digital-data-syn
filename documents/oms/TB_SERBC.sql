/*
================================================================================
��ṹ����:TB_SERBC
��ṹ����:Ͷ�߽��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERBC;
drop index AK_TB_SERBC;
drop table TB_SERBC;
create table TB_SERBC  (                                       
   SERBC_ID             INTEGER                        not null,   /*�����ID            */            
   SERBC001             INTEGER                        not null,   /*�������            */            
   SERBC002             VARCHAR2(30)                   not null,   /*�������            */            
   SERBC003             INTEGER                        not null,   /*�ظ���ID            */                      
   SERBC004             DATE                           not null,   /*�������            */            
   SERBC005             NUMBER(12,2)                   not null,   /*�⸶���            */               
   SERBC006             NUMBER(1)                      not null,   /*�����ʽ            */   
   SERBC007             INTEGER ,                                  /*������              */
   SERBC008             VARCHAR2(255),                             /*��������            */
   SERBC009             VARCHAR2(1)                    not null,   /*�����⸶           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER(1),                                 /*����״̬            */             
                                           
   constraint PK_TB_SERBC primary key (SERBC_ID)                               
);                                           
create unique index AK_TB_SERBC on TB_SERBC (SERBC001,SERBC002);               
create sequence SEQ_TB_SERBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBC to public;                                     
grant index  on TB_SERBC to public;                                     
grant update on TB_SERBC to public;                                      
grant delete on TB_SERBC to public;                                       
grant insert on TB_SERBC to public;                                      
grant select on SEQ_TB_SERBC to public;                                        