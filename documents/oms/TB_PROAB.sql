/*
================================================================================
��ṹ����:TB_PROAB
��ṹ����:�������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROAB;
drop index AK_TB_PROAB;
drop table TB_PROAB;
create table TB_PROAB  (
   PROAB_ID             INTEGER                         not null,  /*��������ϸID       */
   PROAB001             INTEGER                         not null,  /*������ID           */
   PROAB002             DATE                            not null,  /*��������             */
   PROAB003             NUMBER(12,2)                    not null,  /*���                 */
   PROAB004             INTEGER                         not null,  /*����ID               */
   PROAB005             INTEGER,                                   /*̯λID               */
   PROAB006             INTEGER,                                   /*��ͬID               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PROAB primary key (PROAB_ID)
);
create unique index AK_TB_PROAB on TB_PROAB (PROAB001,PROAB002);
create sequence SEQ_TB_PROAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAB to public;
grant index  on TB_PROAB to public;
grant update on TB_PROAB to public; 
grant delete on TB_PROAB to public;  
grant insert on TB_PROAB to public; 
grant select on SEQ_TB_PROAB to public;   