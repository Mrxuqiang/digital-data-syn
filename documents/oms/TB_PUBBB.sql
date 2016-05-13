/*
================================================================================
��ṹ����:TB_PUBBB
��ṹ����:���ұ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBB;
drop index AK_TB_PUBBB;
drop table TB_PUBBB;
create table TB_PUBBB  (
   PUBBB_ID             INTEGER                         not null,  /*����ID             */
   PUBBB001             VARCHAR2(4)                     not null,  /*���Ҵ���           */
   PUBBB002             VARCHAR2(20)                    not null,  /*��������           */
   PUBBB003             INTEGER                         not null,  /*����ID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBBB primary key (PUBBB_ID)
);
create unique index AK_TB_PUBBB on TB_PUBBB (PUBBB001);
create sequence SEQ_TB_PUBBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBB to public;
grant index  on TB_PUBBB to public;
grant update on TB_PUBBB to public; 
grant delete on TB_PUBBB to public;  
grant insert on TB_PUBBB to public; 
grant select on SEQ_TB_PUBBB to public;   