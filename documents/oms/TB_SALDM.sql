/*
================================================================================
��ṹ����:TB_SALDM
��ṹ����:�˻��渶���ص���Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDM;
drop index AK_TB_SALDM;
drop table TB_SALDM;
create table TB_SALDM  (
   SALDM_ID             INTEGER                         not null,  /*�˻��渶���ص���ĿID */
   SALDM001             INTEGER                         not null,  /*�˻��渶���ص�ID     */
   SALDM002             INTEGER                         not null,  /*�˻��渶����ĿID     */
   SALDM003             INTEGER                         not null,  /*����ID               */
   SALDM004             INTEGER,                                   /*��ĿID               */
   SALDM005             NUMBER(12,2)                    not null,  /*�渶���             */
   SALDM006             NUMBER(12,2),                              /*���ؽ��             */
   SALDM007             VARCHAR2(255),                             /*��ע                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_SALDM primary key (SALDM_ID)
);
create index AK_TB_SALDM on TB_SALDM (SALDM001,SALDM002);
create sequence SEQ_TB_SALDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDM to public;
grant index  on TB_SALDM to public;
grant update on TB_SALDM to public; 
grant delete on TB_SALDM to public;  
grant insert on TB_SALDM to public; 
grant select on SEQ_TB_SALDM to public;   