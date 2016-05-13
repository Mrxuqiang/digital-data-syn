/*
================================================================================
��ṹ����:TB_SALDB
��ṹ����:Ԥ�յ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDB;
drop index AK_TB_SALDB;
drop table TB_SALDB;
create table TB_SALDB  (
   SALDB_ID             INTEGER                         not null,  /*Ԥ�յ�����ID     */
   SALDB001             INTEGER                         not null,  /*Ԥ�յ�ID         */
   SALDB002             INTEGER                         not null,  /*���㷽ʽID       */
   SALDB003             NUMBER(12,2)                    not null,  /*Ԥ�ս��         */
   SALDB004             NUMBER(12,2),                              /*������           */
   SALDB005             NUMBER(12,2),                              /*���ս��         */
   SALDB006             VARCHAR2(30),                              /*���п���         */
   SALDB007             INTEGER,                                   /*��������ID       */
   SALDB008             NUMBER(12,2),                              /*��������(%)      */
   SALDB009             VARCHAR2(30),                              /*֧Ʊ��           */
   SALDB010             NUMBER(12,2),                              /*Ʊ����         */
   SALDB011             DATE,                                      /*��Ʊ����         */
   SALDB012             VARCHAR2(60),                              /*��Ʊ��λ         */
   SALDB013             NUMBER(30),                                /*���ѿ���         */
   SALDB014             NUMBER(12,2),                              /*Ԥ���˿���     */
   SALDB015             NUMBER(12,2),                              /*Ԥ�ճ������     */
   SALDB016             NUMBER(12,2),                              /*Ԥ�����         */
   SALDB017             NUMBER(12,2),                              /*�������ѽ��     */
   SALDB018             NUMBER(12,2),                              /*�������ѽ��     */
   SALDB019             NUMBER(12,2),                              /*���������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDB primary key (SALDB_ID)
);
create index AK_TB_SALDB on TB_SALDB (SALDB_ID,SALDB001,SALDB002);
create sequence SEQ_TB_SALDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDB to public;
grant index  on TB_SALDB to public;
grant update on TB_SALDB to public; 
grant delete on TB_SALDB to public;  
grant insert on TB_SALDB to public; 
grant select on SEQ_TB_SALDB to public;   