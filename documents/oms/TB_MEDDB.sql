/*
================================================================================
��ṹ����:TB_MEDDB
��ṹ����:��������׷�ٱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDDB;
drop index AK_TB_MEDDB;
drop table TB_MEDDB;
create table TB_MEDDB  (
   MEDDB_ID             INTEGER                         not null,  /*��������׷��ID     */
   MEDDB001             INTEGER                         not null,  /*��������ID         */
   MEDDB002             INTEGER                         not null,  /*ý��ID             */
   MEDDB003             DATE                            not null,  /*��������           */
   MEDDB004             VARCHAR2(60),                              /*����               */
   MEDDB005             VARCHAR2(60),                              /*���               */
   MEDDB006             NUMBER(12),                                /*��������           */
   MEDDB007             NUMBER(12,2),                              /*�����۸�           */
   MEDDB008             VARCHAR2(255),                             /*��������           */
   MEDDB009             VARCHAR2(255),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDDB primary key (MEDDB_ID)
);
create unique index AK_TB_MEDDB on TB_MEDDB (MEDDB001,MEDDB002,MEDDB003);
create sequence SEQ_TB_MEDDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDDB to public;
grant index  on TB_MEDDB to public;
grant update on TB_MEDDB to public; 
grant delete on TB_MEDDB to public;  
grant insert on TB_MEDDB to public; 
grant select on SEQ_TB_MEDDB to public;   