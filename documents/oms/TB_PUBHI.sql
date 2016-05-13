/*
================================================================================
��ṹ����:TB_PUBHI
��ṹ����:��Ʒ��λ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHI;
drop index AK_TB_PUBHI;
drop table TB_PUBHI;
create table TB_PUBHI  (
   PUBHI_ID             INTEGER                         not null,  /*��λ������ID      */
   PUBHI001             INTEGER                         not null,  /*��ƷID            */
   PUBHI002             INTEGER                         not null,  /*��λID            */
   PUBHI003             NUMBER(12,2)                    not null,  /*����ϵ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHI primary key (PUBHI_ID)
);
create unique index AK_TB_PUBHI on TB_PUBHI (PUBHI001,PUBHI002);
create sequence SEQ_TB_PUBHI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHI to public;
grant index  on TB_PUBHI to public;
grant update on TB_PUBHI to public; 
grant delete on TB_PUBHI to public;  
grant insert on TB_PUBHI to public; 
grant select on SEQ_TB_PUBHI to public;   