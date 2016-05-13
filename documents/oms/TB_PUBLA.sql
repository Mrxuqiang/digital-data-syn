/*
================================================================================
��ṹ����:TB_PUBLA
��ṹ����:����ڼ䷽����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLA;
drop index AK_TB_PUBLA;
drop table TB_PUBLA;
create table TB_PUBLA  (
   PUBLA_ID             INTEGER                         not null,  /*����ڼ䷽��ID       */
   PUBLA001             VARCHAR2(4)                     not null,  /*�ڼ䷽������         */
   PUBLA002             VARCHAR2(30)                    not null,  /*�ڼ䷽������         */
   PUBLA003             VARCHAR2(60),                              /*�ڼ䷽������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLA primary key (PUBLA_ID)
);
create unique index AK_TB_PUBLA on TB_PUBLA (PUBLA001);
create sequence SEQ_TB_PUBLA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLA to public;
grant index  on TB_PUBLA to public;
grant update on TB_PUBLA to public; 
grant delete on TB_PUBLA to public;  
grant insert on TB_PUBLA to public; 
grant select on SEQ_TB_PUBLA to public;   