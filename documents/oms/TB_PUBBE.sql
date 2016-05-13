/*
================================================================================
��ṹ����:TB_PUBBE
��ṹ����:���б�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBE;
drop index AK_TB_PUBBE;
drop table TB_PUBBE;
create table TB_PUBBE  (
   PUBBE_ID             INTEGER                         not null,  /*����ID             */
   PUBBE001             VARCHAR2(4)                     not null,  /*���д���           */
   PUBBE002             VARCHAR2(20)                    not null,  /*��������           */
   PUBBE003             INTEGER                         not null,  /*ʡ��ID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBBE primary key (PUBBE_ID)
);
create unique index AK_TB_PUBBE on TB_PUBBE (PUBBE001);
create sequence SEQ_TB_PUBBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBE to public;
grant index  on TB_PUBBE to public;
grant update on TB_PUBBE to public; 
grant delete on TB_PUBBE to public;  
grant insert on TB_PUBBE to public; 
grant select on SEQ_TB_PUBBE to public;   