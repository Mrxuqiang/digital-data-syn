/*
================================================================================
��ṹ����:TB_PROBB
��ṹ����:ά�޵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROBB;
drop index AK_TB_PROBB;
drop table TB_PROBB;
create table TB_PROBB  (                                       
   PROBB_ID             INTEGER                        not null,   /*ά�޵�ID            */            
   PROBB001             INTEGER                        not null,   /*����                */            
   PROBB002             VARCHAR2(30)                   not null,   /*ά�޵����          */                    
   PROBB003             DATE                           not null,   /*ά������            */ 
   PROBB004             INTEGER                        not null,   /*Ӫ����֯            */
   PROBB005             INTEGER                        not null,   /*���޵�ID            */  
   PROBB006             INTEGER,                                   /*̯λID              */            
   PROBB007             INTEGER                        not null,   /*�̻�ID              */   
   PROBB008             INTEGER                        not null,   /*������            */   
   PROBB009             INTEGER                        not null,   /*������Ա            */     
   PROBB010             DATE,                                      /*�ɹ�ʱ��            */
   PROBB011             DATE,                                      /*�깤ʱ��            */
   PROBB012             VARCHAR2(30),                              /*ά���ص�            */
   PROBB013             NUMBER(12,2),                              /*�����ܼ�            */
   PROBB014             INTEGER                        not null,   /*���ñ���            */
   PROBB015             INTEGER,                                   /*���õ�ID            */
   PROBB016             VARCHAR2(60),                              /*��ע                */
   PROBB017             VARCHAR2(1),                               /*�̻�����            */
   PROBB018             VARCHAR2(1),                               /*��������            */
   PROBB019             VARCHAR2(100),                             /*����˵��            */
   PROBB020             VARCHAR2(100),                             /*��������            */
   PROBB021             INTEGER,                                   /*¼����ID            */
   PROBB022             DATE,                                      /*¼������            */
   PROBB023             INTEGER,                                   /*�����ID            */
   PROBB024             DATE,                                      /*�������            */
   PROBB025             VARCHAR2(1)                     not null,  /*���״̬            */
   PROBB026             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PROBB027             VARCHAR2(30),                              /*ǩ�˵���            */
   PROBB028             VARCHAR2(1),                               /*ǩ����              */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */                                          
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                                          
   CREATE_DATE          DATE,                                      /*��������            */                                         
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */             
   MODI_DATE            DATE,                                      /*�޸�����            */             
   FLAG                 NUMBER(1),                                 /*����״̬            */             
                                           
   constraint PK_TB_PROBB primary key (PROBB_ID)                               
);                                           
create unique index AK_TB_PROBB on TB_PROBB (PROBB001,PROBB002);               
create sequence SEQ_TB_PROBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROBB to public;                                     
grant index  on TB_PROBB to public;                                     
grant update on TB_PROBB to public;                                      
grant delete on TB_PROBB to public;                                       
grant insert on TB_PROBB to public;                                      
grant select on SEQ_TB_PROBB to public;                                        