/*
================================================================================
��ṹ����:TB_PUBEA
��ṹ����:���ֱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBEA;
drop index AK_TB_PUBEA;
drop table TB_PUBEA;
create table TB_PUBEA  (
   PUBEA_ID             INTEGER                         not null,  /*����ID             */
   PUBEA001             VARCHAR2(4)                     not null,  /*���ִ���           */
   PUBEA002             VARCHAR2(20)                    not null,  /*��������           */
   PUBEA003             VARCHAR2(2)                     not null,  /*���ַ���           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBEA primary key (PUBEA_ID)
);
create unique index AK_TB_PUBEA on TB_PUBEA (PUBEA001);
create sequence SEQ_TB_PUBEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBEA to public;
grant index  on TB_PUBEA to public;
grant update on TB_PUBEA to public; 
grant delete on TB_PUBEA to public;  
grant insert on TB_PUBEA to public; 
grant select on SEQ_TB_PUBEA to public;   