/*
================================================================================
��ṹ����:TB_OTSDI
��ṹ����:�����⸶���õ���Ӧ��Ӧ����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_OTSDI;
drop index AK_TB_OTSDI;
drop table TB_OTSDI;
create table TB_OTSDI  (
   OTSDI_ID             INTEGER                         not null,  /*����������ID             */
   OTSDI001             VARCHAR2(2)                    not null,   /*�⸶��������         */
   OTSDI002             INTEGER                         not null,  /*OMS������ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_OTSDI primary key (OTSDI_ID)
);
create sequence SEQ_TB_OTSDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSDI to public;
grant index  on TB_OTSDI to public;
grant update on TB_OTSDI to public; 
grant delete on TB_OTSDI to public;  
grant insert on TB_OTSDI to public; 
grant select on SEQ_TB_OTSDI to public;  