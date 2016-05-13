/*
================================================================================
��ṹ����:TB_PUBBK
��ṹ����:С����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBK;
drop index AK_TB_PUBBK;
drop table TB_PUBBK;
create table TB_PUBBK  (
   PUBBK_ID             INTEGER                         not null,  /*С��ID             */
   PUBBK001             VARCHAR2(10)                    not null,  /*С������           */
   PUBBK002             VARCHAR2(30)                    not null,  /*С������           */
   PUBBK003             INTEGER                         not null,  /*����ID          */
   PUBBK004             VARCHAR2(255),                             /*��ע           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBK primary key (PUBBK_ID)
);
create unique index AK_TB_PUBBK on TB_PUBBK (PUBBK001);
create sequence SEQ_TB_PUBBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBK to public;
grant index  on TB_PUBBK to public;
grant update on TB_PUBBK to public; 
grant delete on TB_PUBBK to public;  
grant insert on TB_PUBBK to public; 
grant select on SEQ_TB_PUBBK to public;   