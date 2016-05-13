/*
================================================================================
��ṹ����:TB_SALDL
��ṹ����:�˻��渶���ص�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDL;
drop index AK_TB_SALDL;
drop table TB_SALDL;
create table TB_SALDL  (
   SALDL_ID             INTEGER                         not null,  /*�˻��渶���ص�ID */
   SALDL001             INTEGER                         not null,  /*����ID           */
   SALDL002             VARCHAR2(30)                    not null,  /*���ص���         */
   SALDL003             DATE                            not null,  /*��������         */
   SALDL004             INTEGER                         not null,  /*Ӫ����֯ID       */
   SALDL005             INTEGER                         not null,  /*�˻��渶��ID     */
   SALDL006             INTEGER,                                   /*̯λID           */
   SALDL007             INTEGER,                                   /*���޺�ͬID       */
   SALDL008             INTEGER                         not null,  /*�����̻�ID       */
   SALDL009             INTEGER,                                   /*ҵ����ID       */
   SALDL010             INTEGER,                                   /*ҵ����ԱID       */
   SALDL011             VARCHAR2(255),                             /*��ע             */
   SALDL012             INTEGER,                                   /*¼����ID         */
   SALDL013             DATE,                                      /*¼������         */
   SALDL014             INTEGER,                                   /*�����ID         */
   SALDL015             DATE,                                      /*�������         */
   SALDL016             VARCHAR2(1)                     not null,  /*���״̬         */
   SALDL017             VARCHAR2(1),                               /*�Ƿ�ǩ��         */
   SALDL018             VARCHAR2(30),                              /*ǩ�˵���         */
   SALDL019             VARCHAR2(1),                               /*ǩ����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDL primary key (SALDL_ID)
);
create unique index AK_TB_SALDL on TB_SALDL (SALDL002);
create sequence SEQ_TB_SALDL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDL to public;
grant index  on TB_SALDL to public;
grant update on TB_SALDL to public; 
grant delete on TB_SALDL to public;  
grant insert on TB_SALDL to public; 
grant select on SEQ_TB_SALDL to public;   