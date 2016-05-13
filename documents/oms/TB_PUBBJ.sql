/*
================================================================================
��ṹ����:TB_PUBBJ
��ṹ����:������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBJ;
drop index AK_TB_PUBBJ;
drop table TB_PUBBJ;
create table TB_PUBBJ  (
   PUBBJ_ID             INTEGER                         not null,  /*����ID             */
   PUBBJ001             VARCHAR2(10)                    not null,  /*��������           */
   PUBBJ002             VARCHAR2(30)                    not null,  /*��������           */
   PUBBJ003             VARCHAR2(255) ,                            /*��ע             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBJ primary key (PUBBJ_ID)
);
create unique index AK_TB_PUBBJ on TB_PUBBJ (PUBBJ001);
create sequence SEQ_TB_PUBBJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBJ to public;
grant index  on TB_PUBBJ to public;
grant update on TB_PUBBJ to public; 
grant delete on TB_PUBBJ to public;  
grant insert on TB_PUBBJ to public; 
grant select on SEQ_TB_PUBBJ to public;   