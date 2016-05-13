/*
================================================================================
��ṹ����:TB_PRODJ
��ṹ����:����֤���ŵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODJ;
drop index AK_TB_PRODJ;
drop table TB_PRODJ;
create table TB_PRODJ  (
   PRODJ_ID             INTEGER                         not null,  /*����֤���ŵ�ID	 */
   PRODJ001             INTEGER                         not null,  /*����		 */
   PRODJ002             VARCHAR2(30)                    not null,  /*��֤����		 */
   PRODJ003             DATE                            not null,  /*��֤����		 */
   PRODJ004             INTEGER                         not null,  /*���뵥ID            */
   PRODJ005             INTEGER                         not null,  /*Ӫ����֯ID		 */
   PRODJ006             INTEGER                         not null,  /*��֤����ID		 */
   PRODJ007             INTEGER                         not null,  /*��֤��ԱID		 */
   PRODJ008             VARCHAR2(30),                              /*��ע                */
   PRODJ009             INTEGER,                                   /*¼����ID            */
   PRODJ010             DATE,                                      /*¼������            */
   PRODJ011             INTEGER,                                   /*�����ID            */
   PRODJ012             DATE,                                      /*�������            */
   PRODJ013             VARCHAR2(1)                     not null,  /*���״̬            */
   PRODJ014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PRODJ015             VARCHAR2(30),                              /*ǩ�˵���            */
   PRODJ016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODJ primary key (PRODJ_ID)
);
create unique index AK_TB_PRODJ on TB_PRODJ (PRODJ002,PRODJ005);
create sequence SEQ_TB_PRODJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODJ to public;
grant index  on TB_PRODJ to public;
grant update on TB_PRODJ to public; 
grant delete on TB_PRODJ to public;  
grant insert on TB_PRODJ to public; 
grant select on SEQ_TB_PRODJ to public;   
