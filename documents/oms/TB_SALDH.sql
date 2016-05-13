/*
================================================================================
��ṹ����:TB_SALDH
��ṹ����:�˻��渶������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDH;
drop index AK_TB_SALDH;
drop table TB_SALDH;
create table TB_SALDH  (
   SALDH_ID             INTEGER                         not null,  /*�˻��渶��ID     */
   SALDH001             INTEGER                         not null,  /*����ID           */
   SALDH002             VARCHAR2(30)                    not null,  /*�˻��渶����     */
   SALDH003             DATE                            not null,  /*�˻��渶����     */
   SALDH004             INTEGER                         not null,  /*Ӫ����֯ID       */
   SALDH005             VARCHAR2(1)                     not null,  /*��Դ����         */
   SALDH006             INTEGER,                                   /*��Դ����ID       */
   SALDH007             VARCHAR2(30),                              /*��Դ����         */
   SALDH008             INTEGER,                                   /*̯λID           */
   SALDH009             INTEGER,                                   /*���޺�ͬID       */
   SALDH010             INTEGER                         not null,  /*�����̻�ID       */
   SALDH011             INTEGER,                                   /*ҵ����ID       */
   SALDH012             INTEGER,                                   /*ҵ����ԱID       */
   SALDH013             VARCHAR2(255),                             /*��ע             */
   SALDH014             INTEGER,                                   /*¼����ID         */
   SALDH015             DATE,                                      /*¼������         */
   SALDH016             INTEGER,                                   /*�����ID         */
   SALDH017             DATE,                                      /*�������         */
   SALDH018             VARCHAR2(1)                     not null,  /*���״̬         */
   SALDH019             VARCHAR2(1),                               /*�Ƿ�ǩ��         */
   SALDH020             VARCHAR2(30),                              /*ǩ�˵���         */
   SALDH021             VARCHAR2(1),                               /*ǩ����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDH primary key (SALDH_ID)
);
create unique index AK_TB_SALDH on TB_SALDH (SALDH002,SALDH004);
create sequence SEQ_TB_SALDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDH to public;
grant index  on TB_SALDH to public;
grant update on TB_SALDH to public; 
grant delete on TB_SALDH to public;  
grant insert on TB_SALDH to public; 
grant select on SEQ_TB_SALDH to public;   