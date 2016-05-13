/*
================================================================================
��ṹ����:TB_CONCJ
��ṹ����:��ͬ������۱��ױ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCJ;
drop index AK_TB_CONCJ;
drop table TB_CONCJ;
create table TB_CONCJ  (
   CONCJ_ID             INTEGER                         not null,  /*��ͬ������۱���ID  */
   CONCJ001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCJ002             DATE                            not null,  /*��ʼ����            */
   CONCJ003             DATE                            not null,  /*��������            */
   CONCJ004             NUMBER(12,4)                    not null,  /*���۱���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONCJ primary key (CONCJ_ID)
);
create unique index AK_TB_CONCJ on TB_CONCJ (CONCJ001,CONCJ002);
create sequence SEQ_TB_CONCJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCJ to public;
grant index  on TB_CONCJ to public;
grant update on TB_CONCJ to public; 
grant delete on TB_CONCJ to public;  
grant insert on TB_CONCJ to public; 
grant select on SEQ_TB_CONCJ to public;   