/*
================================================================================
��ṹ����:TB_MEMBC
��ṹ����:��Ա���������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBC;
drop index AK_TB_MEMBC;
drop table TB_MEMBC;
create table TB_MEMBC  (
   MEMBC_ID             INTEGER                         not null,  /*������������ID     */
   MEMBC001             VARCHAR2(4)                     not null,  /*��������           */
   MEMBC002             VARCHAR2(30)                    not null,  /*��������           */
   MEMBC003             VARCHAR2(1),                               /*�Ƿ���Ч           */
   MEMBC004             VARCHAR2(1)                     not null,  /*��������1.���ۿ� 2.���Ѹ���    */
   MEMBC005             NUMBER(12,2),                              /*�������           */
   MEMBC006             NUMBER(12,2),                              /*������           */
   MEMBC007             NUMBER(12,2),                              /*���۽��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMBC primary key (MEMBC_ID)
);
create unique index AK_TB_MEMBC on TB_MEMBC (MEMBC001);
create sequence SEQ_TB_MEMBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBC to public;
grant index  on TB_MEMBC to public;
grant update on TB_MEMBC to public; 
grant delete on TB_MEMBC to public;  
grant insert on TB_MEMBC to public; 
grant select on SEQ_TB_MEMBC to public;   