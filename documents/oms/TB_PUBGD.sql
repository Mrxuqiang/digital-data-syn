/*
================================================================================
��ṹ����:TB_PUBGD
��ṹ����:ԭ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGD;
drop index AK_TB_PUBGD;
drop table TB_PUBGD;
create table TB_PUBGD  (
   PUBGD_ID             INTEGER                         not null,  /*ԭ��ID             */
   PUBGD001             VARCHAR2(2)                     not null,  /*ԭ������           */
   PUBGD002             VARCHAR2(4)                     not null,  /*ԭ�����           */
   PUBGD003             VARCHAR2(50)                    not null,  /*ԭ������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGD primary key (PUBGD_ID)
);
create unique index AK_TB_PUBGD on TB_PUBGD (PUBGD001,PUBGD002);
create sequence SEQ_TB_PUBGD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGD to public;
grant index  on TB_PUBGD to public;
grant update on TB_PUBGD to public; 
grant delete on TB_PUBGD to public;  
grant insert on TB_PUBGD to public; 
grant select on SEQ_TB_PUBGD to public;   