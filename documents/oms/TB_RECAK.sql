/*                                        
================================================================================
��ṹ����:TB_RECAK                       
��ṹ����:�տ�̯����                       
��ṹĿ��:                               
================================================================================
*/                                        
                                          
drop sequence SEQ_TB_RECAK;               
drop index AK_TB_RECAK;                                          
drop table TB_RECAK;                                             
create table TB_RECAK  (                                         
   RECAK_ID             INTEGER                         not null,  /*̯����ID        */
   RECAK001             INTEGER                         not null,  /*����ID          */
   RECAK002             VARCHAR2(30)                    not null,  /*̯������        */
   RECAK003             DATE                            not null,  /*̯������        */
   RECAK004             INTEGER                         not null,  /*̯������ID      */
   RECAK005             NUMBER(4,0)                     not null,  /*������        */
   RECAK006             NUMBER(2,0)                     not null,  /*����·�        */
   RECAK007             INTEGER                         not null,  /*Ӫ����֯ID      */
   RECAK008             INTEGER                         not null,  /*����ID          */
   RECAK009             INTEGER                         not null,  /*��ԱID          */
   RECAK010             VARCHAR2(1),                               /*����״̬        */
   RECAK011             INTEGER,                                   /*¼����ID        */
   RECAK012             DATE,                                      /*¼������        */
   RECAK013             INTEGER,                                   /*�����ID        */
   RECAK014             DATE ,                                     /*�������        */
   RECAK015             VARCHAR2(1),                               /*����ƾ֤        */
   RECAK016             VARCHAR2(1),                               /*ֻȡ����        */
   RECAK017             VARCHAR2(100),                             /*��ע            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա        */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����    */                               
   CREATE_DATE          DATE,                                      /*��������        */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա        */
   MODI_DATE            DATE,                                      /*�޸�����        */
   FLAG                 NUMBER(1),                                 /*����״̬        */
   constraint PK_TB_RECAK primary key (RECAK_ID)                 
);                                                               
create unique index AK_TB_RECAK on TB_RECAK (RECAK001,RECAK002,RECAK005); 
create sequence SEQ_TB_RECAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAK to public;                              
grant index  on TB_RECAK to public;                              
grant update on TB_RECAK to public;                              
grant delete on TB_RECAK to public;                              
grant insert on TB_RECAK to public;                              
grant select on SEQ_TB_RECAK to public;                          
                       
                       
                       
                       
                       
                       
                       
                       
                       