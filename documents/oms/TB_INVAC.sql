/*
================================================================================
��ṹ����:TB_INVAC
��ṹ����:��Ʒ�˻ص�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVAC;
drop index AK_TB_INVAC;
drop table TB_INVAC;
create table TB_INVAC  (                                       
   INVAC_ID         INTEGER                  not null,         /*�˻ص�ID        */            
   INVAC001         VARCHAR2(1)              not null,         /*�˻�����        */            
   INVAC002         INTEGER                  not null,         /*����ID          */            
   INVAC003         VARCHAR2(30)             not null,         /*�˻ص���        */            
   INVAC004         VARCHAR2(1)              not null,         /*��Դ����        */            
   INVAC005         INTEGER,                                   /*��Դ����(���ⵥID)        */            
   INVAC006         DATE                     not null,         /*�˻�����        */            
   INVAC007         INTEGER                  not null,         /*�˻�Ӫ����֯ID  */            
   INVAC008         INTEGER                  not null,         /*�˻ز���ID      */            
   INVAC009         INTEGER                  not null,         /*�˻���ԱID      */            
   INVAC010         VARCHAR2(1)              not null,         /*������Դ        */            
   INVAC011         INTEGER,                                   /*����ID          */
   INVAC011C1       VARCHAR2(12),                              /*�������        */
   INVAC011C2       VARCHAR2(40)             not null,         /*��������        */
   INVAC012         INTEGER                  not null,         /*������֯ID      */            
   INVAC013         VARCHAR2(1)              not null,         /*���״̬        */            
   INVAC014         INTEGER,                                   /*¼����          */            
   INVAC015         DATE,                                      /*¼������        */            
   INVAC016         INTEGER,                                   /*�����          */            
   INVAC017         DATE,                                      /*�������        */ 
   INVAC018         VARCHAR2(255),                             /*��ע            */
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */             
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */             
   CREATE_DATE        DATE,                                        /*��������        */             
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */             
   MODI_DATE          DATE,                                        /*�޸�����        */             
   FLAG               NUMBER(1),                                   /*����״̬        */            


  constraint PK_TB_INVAC primary key (INVAC_ID)                               
);                                           
create unique index AK_TB_INVAC on TB_INVAC (INVAC002,INVAC003);               
create sequence SEQ_TB_INVAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAC to public;                                     
grant index  on TB_INVAC to public;                                     
grant update on TB_INVAC to public;                                      
grant delete on TB_INVAC to public;                                       
grant insert on TB_INVAC to public;                                      
grant select on SEQ_TB_INVAC to public;                                        