/*                 
================================================================================
��ṹ����:TB_RECAI
��ṹ����:Ԥ���˿�����
��ṹĿ��:
================================================================================
*/  
  
drop sequence SEQ_TB_RECAI;
drop index AK_TB_RECAI;
drop table TB_RECAI;
create table TB_RECAI  (
   RECAI_ID             INTEGER                         not null,  /*�˿�����ID        */
   RECAI001             INTEGER                         not null,  /*����              */
   RECAI002             VARCHAR2(30)                    not null,  /*�˿��          */
   RECAI003             DATE                            not null,  /*�˿�����          */
   RECAI004             INTEGER                         not null,  /*�ͻ�              */ 
   RECAI005             INTEGER                         not null,  /*�˿�ͻ�              */
   RECAI006             VARCHAR2(1)                     not null,  /*��Դ              */
   RECAI007             INTEGER,                                   /*��Դ����          */
   RECAI008             INTEGER                         not null,  /*����              */
   RECAI009             NUMBER(5,4)                     not null,  /*����              */                                                                           
   RECAI010             INTEGER,                                   /*����              */
   RECAI011             INTEGER,                                   /*��Ա              */
   RECAI012             VARCHAR2(1),                               /*����״̬          */
   RECAI013             VARCHAR2(1),                               /*����״̬          */
   RECAI014             NUMBER(16,2),                              /*ԭ���˿���      */
   RECAI015             NUMBER(16,2),                              /*�����˿���      */
   RECAI016             NUMBER(16,2),                               /*ԭ�Һ������      */
   RECAI017             NUMBER(16,2),                               /*���Һ������      */
   RECAI018             INTEGER,                                    /*¼����            */
   RECAI019             DATE,                                       /*¼������          */
   RECAI020             INTEGER,                                    /*�����            */                                                                        
   RECAI021             DATE,                                      /*�������          */ 
   RECAI022             INTEGER,                                   /*Ӫ����֯ID          */ 
   RECAI023             VARCHAR2(255),                             /*��ע          */ 
   RECAI024             VARCHAR2(1),                               /*����ƾ֤          */    
   RECAI025             NUMBER(4),                                 /*������          */       
   RECAI026             NUMBER(2),                                 /*����ڼ�          */                                                                                                                                                     
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_RECAI primary key (RECAI_ID)
);  
create unique index AK_TB_RECAI on TB_RECAI (RECAI001,RECAI002);
create sequence SEQ_TB_RECAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAI to public;
grant index  on TB_RECAI to public;
grant update on TB_RECAI to public; 
grant delete on TB_RECAI to public;  
grant insert on TB_RECAI to public; 
grant select on SEQ_TB_RECAI to public;   