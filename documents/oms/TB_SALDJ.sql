/*
================================================================================
��ṹ����:TB_SALDJ
��ṹ����:�˻��渶��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDJ;
drop index AK_TB_SALDJ;
drop table TB_SALDJ;
create table TB_SALDJ  (
   SALDJ_ID             INTEGER                         not null,  /*�˻��渶������ID */
   SALDJ001             INTEGER                         not null,  /*�˻��渶��ID     */
   SALDJ002             INTEGER                         not null,  /*���㷽ʽID       */
   SALDJ003             NUMBER(12,2)                    not null,  /*������         */
   SALDJ004             NUMBER(12,2),                              /*������           */
   SALDJ005             VARCHAR2(30),                              /*���п���         */
   SALDJ006             INTEGER,                                   /*��������ID       */
   SALDJ007             NUMBER(12,2),                              /*��������(%)      */
   SALDJ008             VARCHAR2(30),                              /*֧Ʊ��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDJ primary key (SALDJ_ID)
);
create index AK_TB_SALDJ on TB_SALDJ (SALDJ_ID,SALDJ001,SALDJ002);
create sequence SEQ_TB_SALDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDJ to public;
grant index  on TB_SALDJ to public;
grant update on TB_SALDJ to public; 
grant delete on TB_SALDJ to public;  
grant insert on TB_SALDJ to public; 
grant select on SEQ_TB_SALDJ to public;   