/*                 
================================================================================
��ṹ����:TB_RECAH
��ṹ����:Ԥ�մ��ֵ�
��ṹĿ��:
================================================================================
*/  
  
drop sequence SEQ_TB_RECAH;
drop index AK_TB_RECAH;
drop table TB_RECAH;
create table TB_RECAH  (
   RECAH_ID             INTEGER                         not null,  /*Ԥ�մ��ֱ�ID       */
   RECAH001             INTEGER                         not null,  /*����ID               */
   RECAH002             VARCHAR2(30)                    not null,  /*����               */
   RECAH003             DATE                            not null,  /*��������           */
   RECAH004             INTEGER                         not null,  /*�ͻ�ID               */ 
   RECAH005             INTEGER                         not null,  /*�տ�ͻ�ID              */
   RECAH006             INTEGER,                                   /*����ID               */
   RECAH007             INTEGER,                                   /*��ԱID               */
   RECAH008             VARCHAR2(1)                     not null,  /*��Դ               */
   RECAH009             VARCHAR2(30)                    not null,  /*��Դ����           */                                                                           
   RECAH010             INTEGER,                                   /*��Ŀ���           */
   RECAH011             INTEGER,                                   /*��������           */
   RECAH012             NUMBER(16,2),                              /*ԭ�ҽ��           */
   RECAH013             NUMBER(16,2),                              /*���ҽ��           */
   RECAH014             NUMBER(16,2),                              /*ԭ���Ѻ������     */
   RECAH015             NUMBER(16,2),                              /*�����Ѻ������     */
   RECAH016             VARCHAR2(1)                      not null, /*����״̬           */
   RECAH017             VARCHAR2(1)                      not null, /*����ƾ֤           */
   RECAH018             VARCHAR2(1)                      not null, /*����״̬           */
   RECAH019             INTEGER,                                   /*¼����             */
   RECAH020             DATE,                                      /*¼������           */                                                                        
   RECAH021             INTEGER,                                   /*�����             */                                                                        
   RECAH022             DATE,                                      /*�������           */ 
   RECAH023             INTEGER                         not null,  /*����ID               */ 
   RECAH024             INTEGER,                                   /*��ƿ�ĿID         */ 
   RECAH025             INTEGER                         not null,  /*��Դ����ID         */ 
   RECAH026             INTEGER,                                   /*��Դ����ID         */ 
   RECAH027             NUMBER(16,2) ,                             /*ԭ�Ҵ��˽��       */ 
   RECAH028             NUMBER(16,2) ,                             /*���Ҵ��˽��       */ 
   RECAH029             INTEGER ,                                  /*Ӫ����֯ID         */ 
   RECAH030             NUMBER(16,4) ,                             /*����                */  
   RECAH031             NUMBER(4) ,                                /*������                */     
   RECAH032             NUMBER(2) ,                                /*����ڼ�                */  
   RECAH033             INTEGER ,                                  /*�춯��ID                */                                                                                
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_RECAH primary key (RECAH_ID)
);  
create unique index AK_TB_RECAH on TB_RECAH (RECAH001,RECAH002);
create sequence SEQ_TB_RECAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAH to public;
grant index  on TB_RECAH to public;
grant update on TB_RECAH to public; 
grant delete on TB_RECAH to public;  
grant insert on TB_RECAH to public; 
grant select on SEQ_TB_RECAH to public;   