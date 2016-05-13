/*
================================================================================
��ṹ����:TB_SALDI
��ṹ����:�˻��渶����Ŀ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDI;
drop index AK_TB_SALDI;
drop table TB_SALDI;
create table TB_SALDI  (
   SALDI_ID             INTEGER                         not null,  /*�˻��渶����ĿID */
   SALDI001             INTEGER                         not null,  /*�˻��渶��ID     */
   SALDI002             INTEGER                         not null,  /*����ID           */
   SALDI003             INTEGER,                                   /*��ĿID           */
   SALDI004             NUMBER(12,2)                    not null,  /*�渶���         */
   SALDI005             NUMBER(12,2),                              /*���ؽ��         */
   SALDI006             NUMBER(12,2),                              /*�������         */
   SALDI007             NUMBER(12,2),                              /*�渶���         */
   SALDI008             VARCHAR2(255),                             /*��ע             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALDI primary key (SALDI_ID)
);
create index AK_TB_SALDI on TB_SALDI (SALDI_ID,SALDI001,SALDI002);
create sequence SEQ_TB_SALDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDI to public;
grant index  on TB_SALDI to public;
grant update on TB_SALDI to public; 
grant delete on TB_SALDI to public;  
grant insert on TB_SALDI to public; 
grant select on SEQ_TB_SALDI to public;   