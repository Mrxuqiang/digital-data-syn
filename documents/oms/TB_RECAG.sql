/*
================================================================================
��ṹ����:TB_RECAG
��ṹ����:Ӧ�տ������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_RECAG;
drop index AK_TB_RECAG;
drop table TB_RECAG;
create table TB_RECAG  (
   RECAG_ID             INTEGER                         not null,  /*������ID              */  
   RECAG001             VARCHAR2(30)                    not null,  /*��������              */  
   RECAG002             VARCHAR2(4)                     not null,  /*�������              */  
   RECAG003             DATE                            not null,  /*��������              */
   RECAG004             INTEGER                         not null,  /*������                */
   RECAG005             VARCHAR2(1)                     not null,  /*��������              */
   RECAG006             INTEGER                         not null,  /*������ID              */
   RECAG007             INTEGER                         not null,  /*��������ID            */
   RECAG008             VARCHAR2(1)                     not null,  /*������������          */                                                                           
   RECAG009             INTEGER                         not null,  /*��������ID            */
   RECAG010             DATE,                                      /*��������              */
   RECAG011             DATE,                                      /*�������              */
   RECAG012             INTEGER                         not null,  /*�Է�����ID            */
   RECAG013             INTEGER                         not null,  /*�Է���������ID         */
   RECAG014             NUMBER(16,2),                              /*ԭ�����              */
   RECAG015             NUMBER(16,2),                              /*�������              */
   RECAG016             NUMBER(16,2),                              /*���κ���ԭ�ҽ��      */
   RECAG017             NUMBER(16,2),                              /*���κ������ҽ��      */
   RECAG018             VARCHAR2(1)                     not null,  /*����ƾ֤              */
   RECAG019             INTEGER                         not null,  /*����                  */
   RECAG020             VARCHAR2(1),                               /*��Դ  20090923 add by 1���ֹ�����  2���Զ�����  */
   RECAG021             VARCHAR2(30),                              /*��Դ����              */  
   RECAG022             INTEGER                                    /*����ID                */
   RECAG023             INTEGER                                    /*����ID                */
   RECAG024             INTEGER                                    /*����ID                */
   RECAG025             INTEGER                                    /*��ԱID                */
   RECAG026             INTEGER                                    /*�Է�����ID            */     
   RECAG027             INTEGER                                    /*����ID                */
   RECAG028             INTEGER                                    /*�Է�����ID            */
   RECAG029             INTEGER                                    /*�Է���ԱID            */ 
   RECAG030             INTEGER                                    /*�����ֽ��춯��        */
   RECAG031             INTEGER                                    /*�Է��ֽ��춯��        */    
   RECAG032             INTEGER                                    /*�����ո���ͻ�ID      */  
   RECAG033             INTEGER                                    /*�Է��ո���ͻ�ID      */  
   RECAG034             VARCHAR2(255)                              /*������ע20100510 add by gaoxl       */ 
   RECAG035             VARCHAR2(255)                              /*�Է���ע20100510 add by gaoxl       */   
   RECAG036             NUMBER(22,2)                               /*������  20100603 add by gaoxl       */  
   RECAG037             INTEGER,                                   /*�������̷���ID  20101216 add by gaoxl       */  
   RECAG038             INTEGER,                                   /*�Է����̷���ID  20101216 add by gaoxl       */   
   RECAG039             INTEGER,                                   /*����Ӫ����֯ID  20101216 add by gaoxl       */  
   RECAG040             INTEGER,                                   /*�Է�Ӫ����֯ID  20101216 add by gaoxl       */                                 
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER,                                 /*����״̬              */
   constraint PK_TB_RECAG primary key (RECAG_ID)
);
--create unique index AK_TB_RECAG on TB_RECAG (RECAG001,RECAG002,RECAG003,RECAG006,RECAG012,RECAG007,RECAG013);
create sequence SEQ_TB_RECAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAG to public;
grant index  on TB_RECAG to public;
grant update on TB_RECAG to public; 
grant delete on TB_RECAG to public;  
grant insert on TB_RECAG to public; 
grant select on SEQ_TB_RECAG to public;   