/*
================================================================================
��ṹ����:TB_PUBGE
��ṹ����:������λ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGE;
drop index AK_TB_PUBGE;
drop table TB_PUBGE;
create table TB_PUBGE  (
   PUBGE_ID             INTEGER                         not null,  /*������λID         */
   PUBGE001             VARCHAR2(4)                     not null,  /*��λ����           */
   PUBGE002             VARCHAR2(20)                    not null,  /*��λ����           */
   PUBGE003             NUMBER(4)                       not null,  /*С��λ��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGE primary key (PUBGE_ID)
);
create unique index AK_TB_PUBGE on TB_PUBGE (PUBGE001);
create sequence SEQ_TB_PUBGE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGE to public;
grant index  on TB_PUBGE to public;
grant update on TB_PUBGE to public; 
grant delete on TB_PUBGE to public;  
grant insert on TB_PUBGE to public; 
grant select on SEQ_TB_PUBGE to public;   