/*
================================================================================
��ṹ����:TB_TAXAB
��ṹ����:˰Ʊ�ű�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAB;
drop index AK_TB_TAXAB;
drop table TB_TAXAB;
create table TB_TAXAB  (
   TAXAB_ID             INTEGER                         not null,  /*˰Ʊ��ID          */
   TAXAB001             INTEGER                         not null,  /*��������˰���׼ID*/
   TAXAB002             VARCHAR2(16)                    not null,  /*˰Ʊ��            */
   TAXAB003             VARCHAR2(16)                    not null,  /*����              */
   TAXAB004             DATE                            not null,  /*�춯����          */
   TAXAB005             VARCHAR2(1),                               /*�Ƿ��ѽ�          */
   TAXAB006             INTEGER,                                   /*��˰����ϸID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAB primary key (TAXAB_ID)
);
create unique index AK_TB_TAXAB on TB_TAXAB (TAXAB001,TAXAB002);
create sequence SEQ_TB_TAXAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAB to public;
grant index  on TB_TAXAB to public;
grant update on TB_TAXAB to public; 
grant delete on TB_TAXAB to public;  
grant insert on TB_TAXAB to public; 
grant select on SEQ_TB_TAXAB to public;   