/*                 
================================================================================
��ṹ����:TB_RECAP
��ṹ����:��ӪԤ��ת�˵�
��ṹĿ��:
================================================================================
*/  
  
drop sequence SEQ_TB_RECAP;
drop index AK_TB_RECAP;
drop table TB_RECAP;
create table TB_RECAP  (
   RECAP_ID             INTEGER                         not null,  /*ת�˵�ID              */
   RECAP001             INTEGER                         not null,  /*����ID                */
   RECAP002             VARCHAR2(30)                    not null,  /*����                  */
   RECAP003             DATE                            not null,  /*��������              */
   RECAP004             INTEGER                         not null,  /*ԭ�ͻ�ID              */ 
   RECAP005             INTEGER                         not null,  /*ת��ͻ�ID            */
   RECAP006             INTEGER,                                   /*���۵���ID            */
   RECAP007             INTEGER,                                   /*�����ID            */
   RECAP008             INTEGER,                                   /*Ԥ�մ��ֵ�ID          */
   RECAP009             INTEGER ,                                  /*����                  */                                                                           
   RECAP010             NUMBER(6,7),                               /*����                  */
   RECAP011             VARCHAR2(255),                             /*��ע                  */
   RECAP012             NUMBER(28,2),                              /*ԭ�ҽ��              */
   RECAP013             NUMBER(28,2),                              /*���ҽ��              */
   RECAP014             VARCHAR2(1)                      not null, /*����״̬              */
   RECAP015             INTEGER,                                   /*¼����                */
   RECAP016             DATE,                                      /*¼������              */                                                                        
   RECAP017             INTEGER,                                   /*�����                */                                                                        
   RECAP018             DATE,                                      /*�������              */ 
   RECAP019             NUMBER(4) ,                                /*������              */     
   RECAP020             NUMBER(2) ,                                /*����ڼ�              */      
   RECAP021             NUMBER(28,2),                              /*ԭ�ҳ������          */
   RECAP022             NUMBER(28,2),                              /*���ҳ������          */
   RECAP023             INTEGER ,                                  /*Ӫ����֯ID              */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER,                                    /*����״̬              */
   constraint PK_TB_RECAP primary key (RECAP_ID)
);  
create unique index AK_TB_RECAP on TB_RECAP (RECAP001,RECAP002);
create sequence SEQ_TB_RECAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAP to public;
grant index  on TB_RECAP to public;
grant update on TB_RECAP to public; 
grant delete on TB_RECAP to public;  
grant insert on TB_RECAP to public; 
grant select on SEQ_TB_RECAP to public;   