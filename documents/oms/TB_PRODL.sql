/*
================================================================================
��ṹ����:TB_PRODL
��ṹ����:����֤�ջص�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODL;
drop index AK_TB_PRODL;
drop table TB_PRODL;
create table TB_PRODL  (
   PRODL_ID             INTEGER                         not null,  /*����֤�ջص�ID	 */
   PRODL001             INTEGER                         not null,  /*����		 */
   PRODL002             VARCHAR2(30)                    not null,  /*��֤����		 */
   PRODL003             DATE                            not null,  /*��֤����		 */
   PRODL004             INTEGER                         not null,  /*���뵥ID            */
   PRODL005             INTEGER                         not null,  /*Ӫ����֯ID		 */
   PRODL006             INTEGER                         not null,  /*�ջز���ID		 */
   PRODL007             INTEGER                         not null,  /*�ջ���ԱID		 */
   PRODL008             VARCHAR2(30),                              /*��ע                */
   PRODL009             INTEGER,                                   /*¼����ID            */
   PRODL010             DATE,                                      /*¼������            */
   PRODL011             INTEGER,                                   /*�����ID            */
   PRODL012             DATE,                                      /*�������            */
   PRODL013             VARCHAR2(1)                     not null,  /*���״̬            */
   PRODL014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PRODL015             VARCHAR2(30),                              /*ǩ�˵���            */
   PRODL016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODL primary key (PRODL_ID)
);
create unique index AK_TB_PRODL on TB_PRODL (PRODL002,PRODL005);
create sequence SEQ_TB_PRODL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODL to public;
grant index  on TB_PRODL to public;
grant update on TB_PRODL to public; 
grant delete on TB_PRODL to public;  
grant insert on TB_PRODL to public; 
grant select on SEQ_TB_PRODL to public;   
