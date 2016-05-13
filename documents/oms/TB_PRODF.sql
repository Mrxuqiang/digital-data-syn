/*
================================================================================
��ṹ����:TB_PRODF
��ṹ����:ʩ���ල������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODF;
drop index AK_TB_PRODF;
drop table TB_PRODF;
create table TB_PRODF  (
   PRODF_ID             INTEGER                         not null,  /*ʩ���ල��ID	 */
   PRODF001             INTEGER                         not null,  /*����		 */
   PRODF002             VARCHAR2(30)                    not null,  /*�ල����		 */
   PRODF003             DATE                            not null,  /*��������		 */
   PRODF004             INTEGER                         not null,  /*װ�����뵥ID        */
   PRODF005             INTEGER                         not null,  /*Ӫ����֯ID		 */
   PRODF006             INTEGER                         not null,  /*�ල����ID		 */
   PRODF007             INTEGER                         not null,  /*�ල��ԱID		 */
   PRODF008             VARCHAR2(30),                              /*��ע                */
   PRODF009             INTEGER,                                   /*¼����ID            */
   PRODF010             DATE,                                      /*¼������            */
   PRODF011             INTEGER,                                   /*�����ID            */
   PRODF012             DATE,                                      /*�������            */
   PRODF013             VARCHAR2(1)                     not null,  /*���״̬            */
   PRODF014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PRODF015             VARCHAR2(30),                              /*ǩ�˵���            */
   PRODF016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODF primary key (PRODF_ID)
);
create unique index AK_TB_PRODF on TB_PRODF (PRODF002,PRODF005);
create sequence SEQ_TB_PRODF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODF to public;
grant index  on TB_PRODF to public;
grant update on TB_PRODF to public; 
grant delete on TB_PRODF to public;  
grant insert on TB_PRODF to public; 
grant select on SEQ_TB_PRODF to public;   
