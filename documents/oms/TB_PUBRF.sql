/*
================================================================================
��ṹ����:TB_PUBRF
��ṹ����:�ⲿ��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRF;
drop index AK_TB_PUBRF;
drop table TB_PUBRF;
create table TB_PUBRF  (
   PUBRF_ID             INTEGER                         not null,  /*�ⲿ������ID              */
   PUBRF001             VARCHAR2(10)                    not null,  /*������                  */
   PUBRF002             VARCHAR2(30)                    not null,  /*����ҵ������              */
   PUBRF003             INTEGER                         not null,  /*��˾ID                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_PUBRF primary key (PUBRF_ID)
);
create unique index AK_TB_PUBRF on TB_PUBRF (PUBRF001);
create sequence SEQ_TB_PUBRF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRF to public;
grant index  on TB_PUBRF to public;
grant update on TB_PUBRF to public; 
grant delete on TB_PUBRF to public;  
grant insert on TB_PUBRF to public; 
grant select on SEQ_TB_PUBRF to public;   