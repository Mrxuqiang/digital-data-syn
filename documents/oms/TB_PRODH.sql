/*
================================================================================
��ṹ����:TB_PRODH
��ṹ����:װ�����յ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODH;
drop index AK_TB_PRODH;
drop table TB_PRODH;
create table TB_PRODH  (
   PRODH_ID             INTEGER                         not null,  /*װ�����յ�ID	 */
   PRODH001             INTEGER                         not null,  /*����		 */
   PRODH002             VARCHAR2(30)                    not null,  /*���յ���		 */
   PRODH003             DATE                            not null,  /*��������		 */
   PRODH004             INTEGER                         not null,  /*װ�����뵥ID        */
   PRODH005             INTEGER                         not null,  /*Ӫ����֯ID		 */
   PRODH006             INTEGER                         not null,  /*���ղ���ID		 */
   PRODH007             INTEGER                         not null,  /*������ԱID		 */
   PRODH008             VARCHAR2(30),                              /*��ע                */
   PRODH009             VARCHAR2(1),                               /*�Ƿ�᰸            */
   PRODH010             INTEGER,                                   /*¼����ID            */
   PRODH011             DATE,                                      /*¼������            */
   PRODH012             INTEGER,                                   /*�����ID            */
   PRODH013             DATE,                                      /*�������            */
   PRODH014             VARCHAR2(1)                     not null,  /*���״̬            */
   PRODH015             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PRODH016             VARCHAR2(30),                              /*ǩ�˵���            */
   PRODH017             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODH primary key (PRODH_ID)
);
create unique index AK_TB_PRODH on TB_PRODH (PRODH002,PRODH005);
create sequence SEQ_TB_PRODH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODH to public;
grant index  on TB_PRODH to public;
grant update on TB_PRODH to public; 
grant delete on TB_PRODH to public;  
grant insert on TB_PRODH to public; 
grant select on SEQ_TB_PRODH to public;   
