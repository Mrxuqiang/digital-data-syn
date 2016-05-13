/*
================================================================================
��ṹ����:TB_PRODD
��ṹ����:װ�޽��ѵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODD;
drop index AK_TB_PRODD;
drop table TB_PRODD;
create table TB_PRODD  (
   PRODD_ID             INTEGER                         not null,  /*װ�޽��ѵ�ID	 */
   PRODD001             INTEGER                         not null,  /*����		 */
   PRODD002             VARCHAR2(30)                    not null,  /*���ѵ���		 */
   PRODD003             DATE                            not null,  /*��������		 */
   PRODD004             INTEGER                         not null,  /*װ�����뵥ID        */
   PRODD005             INTEGER                         not null,  /*Ӫ����֯ID		 */
   PRODD006             INTEGER                         not null,  /*ҵ����ID		 */
   PRODD007             INTEGER                         not null,  /*ҵ����ԱID		 */
   PRODD008             VARCHAR2(30),                              /*��ע                */
   PRODD009             INTEGER,                                   /*¼����ID            */
   PRODD010             DATE,                                      /*¼������            */
   PRODD011             INTEGER,                                   /*�����ID            */
   PRODD012             DATE,                                      /*�������            */
   PRODD013             VARCHAR2(1)                     not null,  /*���״̬            */
   PRODD014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PRODD015             VARCHAR2(30),                              /*ǩ�˵���            */
   PRODD016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODD primary key (PRODD_ID)
);
create unique index AK_TB_PRODD on TB_PRODD (PRODD002,PRODD005);
create sequence SEQ_TB_PRODD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODD to public;
grant index  on TB_PRODD to public;
grant update on TB_PRODD to public; 
grant delete on TB_PRODD to public;  
grant insert on TB_PRODD to public; 
grant select on SEQ_TB_PRODD to public;   
