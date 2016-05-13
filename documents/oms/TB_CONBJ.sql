/*
================================================================================
��ṹ����:TB_CONBJ
��ṹ����:��ͬ�����Ա��������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBJ;
drop index AK_TB_CONBJ;
drop table TB_CONBJ;
create table TB_CONBJ  (
   CONBJ_ID             INTEGER                         not null,  /*��ͬ�����Ա���������ϸID   */
   CONBJ001             INTEGER                         not null,  /*��ͬID              */
   CONBJ002             INTEGER                         not null,  /*��ͬ�����Ա�������ID*/
   CONBJ003             DATE                            not null,  /*��ʼ����            */
   CONBJ004             DATE                            not null,  /*��������            */
   CONBJ005             NUMBER(12,2)                    not null,  /*��׼��              */
   CONBJ006             NUMBER(12,2),                              /*��׼ֹ              */
   CONBJ007             NUMBER(12,2)                    not null,  /*��׼����(%)         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBJ primary key (CONBJ_ID)
);
create unique index AK_TB_CONBJ on TB_CONBJ (CONBJ001,CONBJ002,CONBJ003,CONBJ005);
create sequence SEQ_TB_CONBJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBJ to public;
grant index  on TB_CONBJ to public;
grant update on TB_CONBJ to public; 
grant delete on TB_CONBJ to public;  
grant insert on TB_CONBJ to public; 
grant select on SEQ_TB_CONBJ to public;   