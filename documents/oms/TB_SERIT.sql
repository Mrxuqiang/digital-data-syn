20140723 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_SERIT
��ṹ����:BOM���
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIT;
drop index AK_TB_SERIT;
drop table TB_SERIT;
create table TB_SERIT  (
   SERIT_ID             INTEGER                         not null,  /*BOM��ID             */
   SERIT001             VARCHAR2(50)                    not null,  /*BOM������           */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIT primary key (SERIT_ID)
);
create unique index AK_TB_SERIT on TB_SERIT (SERIT001);
create sequence SEQ_TB_SERIT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIT to public;
grant index  on TB_SERIT to public;
grant update on TB_SERIT to public; 
grant delete on TB_SERIT to public;  
grant insert on TB_SERIT to public; 
grant select on SEQ_TB_SERIT to public;   