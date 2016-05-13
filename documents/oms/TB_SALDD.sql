/*
================================================================================
��ṹ����:TB_SALDD
��ṹ����:��Ԥ�յ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDD;
drop index AK_TB_SALDD;
drop table TB_SALDD;
create table TB_SALDD  (
   SALDD_ID             INTEGER                         not null,  /*��Ԥ�յ�����ID   */
   SALDD001             INTEGER                         not null,  /*��Ԥ�յ�ID       */
   SALDD002             INTEGER                         not null,  /*���㷽ʽID       */
   SALDD003             NUMBER(12,2)                    not null,  /*��Ԥ�ս��       */
   SALDD004             NUMBER(12,2),                              /*��Ԥ��������     */
   SALDD005             NUMBER(12,2),                              /*���ս��         */
   SALDD006             VARCHAR2(30),                              /*���п���         */
   SALDD007             INTEGER,                                   /*��������ID       */
   SALDD008             NUMBER(12,2),                              /*��������(%)      */
   SALDD009             VARCHAR2(30),                              /*֧Ʊ��           */
   SALDD010             NUMBER(12,2),                              /*Ʊ����         */
   SALDD011             DATE,                                      /*��Ʊ����         */
   SALDD012             VARCHAR2(60),                              /*��Ʊ��λ         */
   SALDD013             NUMBER(30),                                /*���ѿ���         */
   SALDD014             INTEGER,                                   /*Ԥ�յ�ID         */
   SALDD015             INTEGER,                                   /*Ԥ�յ���ϸID     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDD primary key (SALDD_ID)
);
create index AK_TB_SALDD on TB_SALDD (SALDD_ID,SALDD001,SALDD002);
create sequence SEQ_TB_SALDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDD to public;
grant index  on TB_SALDD to public;
grant update on TB_SALDD to public; 
grant delete on TB_SALDD to public;  
grant insert on TB_SALDD to public; 
grant select on SEQ_TB_SALDD to public;   