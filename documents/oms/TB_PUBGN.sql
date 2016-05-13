/*
================================================================================
��ṹ����:TB_PUBGN
��ṹ����:���ʽ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGN;
drop index AK_TB_PUBGN;
drop table TB_PUBGN;
create table TB_PUBGN  (
   PUBGN_ID             INTEGER                         not null,  /*���ʽID         */
   PUBGN001             VARCHAR2(4)                     not null,  /*���ʽ����       */
   PUBGN002             VARCHAR2(30)                    not null,  /*���ʽ����       */
   PUBGN003             NUMBER(12,2),                              /*�������           */
   PUBGN004             NUMBER(5),                                 /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGN primary key (PUBGN_ID)
);
create unique index AK_TB_PUBGN on TB_PUBGN (PUBGN001);
create sequence SEQ_TB_PUBGN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGN to public;
grant index  on TB_PUBGN to public;
grant update on TB_PUBGN to public; 
grant delete on TB_PUBGN to public;  
grant insert on TB_PUBGN to public; 
grant select on SEQ_TB_PUBGN to public;   