/*
================================================================================
��ṹ����:TB_PUBBF
��ṹ����:�ؼ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBF;
drop index AK_TB_PUBBF;
drop table TB_PUBBF;
create table TB_PUBBF  (
   PUBBF_ID             INTEGER                         not null,  /*����ID             */
   PUBBF001             VARCHAR2(6)                     not null,  /*���д���           */
   PUBBF002             VARCHAR2(20)                    not null,  /*��������           */
   PUBBF003             INTEGER                         not null,  /*����ID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBBF primary key (PUBBF_ID)
);
create unique index AK_TB_PUBBF on TB_PUBBF (PUBBF001);
create sequence SEQ_TB_PUBBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBF to public;
grant index  on TB_PUBBF to public;
grant update on TB_PUBBF to public; 
grant delete on TB_PUBBF to public;  
grant insert on TB_PUBBF to public; 
grant select on SEQ_TB_PUBBF to public;   