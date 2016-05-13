/*
20130816 add by gaoxl for������ add SERBJ005
*/

/*
================================================================================
��ṹ����:TB_SERBJ
��ṹ����:Э�����̱�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERBJ;
drop index AK_TB_SERBJ;
drop table TB_SERBJ;
create table TB_SERBJ  (                                       
   SERBJ_ID             INTEGER                        not null,   /*Э������ID        */            
   SERBJ001             INTEGER                        not null,   /*Ͷ�ߵ�ID            */            
   SERBJ002             INTEGER ,                                  /*������              */ 
   SERBJ003             DATE ,                                     /*ʱ��                */               
   SERBJ004             VARCHAR2(2000),                            /*��������            */   
   SERBJ005             VARCHAR2(1),                               /*Ͷ�ߵȼ�            */              
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER,                                 /*����״̬            */             
                                           
   constraint PK_TB_SERBJ primary key (SERBJ_ID)                               
);                                                        
create sequence SEQ_TB_SERBJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBJ to public;                                     
grant index  on TB_SERBJ to public;                                     
grant update on TB_SERBJ to public;                                      
grant delete on TB_SERBJ to public;                                       
grant insert on TB_SERBJ to public;                                      
grant select on SEQ_TB_SERBJ to public;                                        