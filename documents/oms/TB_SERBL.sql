/*
================================================================================
��ṹ����:TB_SERBL
��ṹ����:Ͷ�ߵǼǴ�Ҫԭ���
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERBL;
drop index AK_TB_SERBL;
drop table TB_SERBL;
create table TB_SERBL  (                                       
   SERBL_ID             INTEGER                        not null,   /*Ͷ�ߵǼǴ�Ҫԭ��ID        */            
   SERBL001             INTEGER                        not null,   /*Ͷ�ߵ�ID            */            
   SERBL002             INTEGER ,                                  /*Ͷ��ԭ��ID         */                
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER,                                 /*����״̬            */             
                                           
   constraint PK_TB_SERBL primary key (SERBL_ID)                               
); 
create unique index AK_TB_SERMB on TB_SERMB (SERBL001,SERBL002,FLAG);                                                        
create sequence SEQ_TB_SERBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBL to public;                                     
grant index  on TB_SERBL to public;                                     
grant update on TB_SERBL to public;                                      
grant delete on TB_SERBL to public;                                       
grant insert on TB_SERBL to public;                                      
grant select on SEQ_TB_SERBL to public;                                        