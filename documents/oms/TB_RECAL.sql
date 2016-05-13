/*                                        
================================================================================
��ṹ����:TB_RECAL                       
��ṹ����:�տ�̯����ϸ��                     
��ṹĿ��:                               
================================================================================
*/                                        
                                          
drop sequence SEQ_TB_RECAL;               
drop index AK_TB_RECAL;                                          
drop table TB_RECAL;                                             
create table TB_RECAL  (                                         
   RECAL_ID             INTEGER                         not null,  /*̯����ϸID        */
   RECAL001             INTEGER                         not null,  /*̯����ID          */
   RECAL002             INTEGER                         not null,  /*�ͻ�ID            */
   RECAL003             INTEGER,                                   /*̯λID            */
   RECAL004             INTEGER,                                   /*��ͬID            */
   RECAL005             NUMBER(12,2),				   /*��̯���          */
   RECAL006             NUMBER(12,2),                              /*ʵ̯���          */
   RECAL007             VARCHAR2(100),                             /*��ע              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_RECAL primary key (RECAL_ID)                 
);  
create unique index AK_TB_RECAK on TB_RECAL (RECAL001,RECAL002,RECAL003,RECAL004); 
create sequence SEQ_TB_RECAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAL to public;                              
grant index  on TB_RECAL to public;                              
grant update on TB_RECAL to public;                              
grant delete on TB_RECAL to public;                              
grant insert on TB_RECAL to public;                              
grant select on SEQ_TB_RECAL to public;                          
                       
                       
                       
                       
                       
                       
                       
                       
                       