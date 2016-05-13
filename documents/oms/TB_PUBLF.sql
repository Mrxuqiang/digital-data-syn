/*
================================================================================
��ṹ����:TB_PUBLF
��ṹ����:���׶����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLF;
drop index AK_TB_PUBLF;
drop table TB_PUBLF;
create table TB_PUBLF  (
   PUBLF_ID             INTEGER                         not null,  /*���׶���ID           */
   PUBLF001             VARCHAR2(4)                     not null,  /*���״���             */
   PUBLF002             VARCHAR2(30)                    not null,  /*��������             */
   PUBLF003             VARCHAR2(60),                              /*��������             */
   PUBLF004             INTEGER                         not null,  /*��ƿ�Ŀ����ID       */
   PUBLF005             INTEGER                         not null,  /*����ڼ䷽��ID       */
   PUBLF006             INTEGER                         not null,  /*��λ��ID             */
   PUBLF007             VARCHAR2(1)                     not null,  /*���ֺ�����ϵ         */
   PUBLF008             INTEGER,                                   /*����ID               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLF primary key (PUBLF_ID)
);
create unique index AK_TB_PUBLF on TB_PUBLF (PUBLF001);
create sequence SEQ_TB_PUBLF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLF to public;
grant index  on TB_PUBLF to public;
grant update on TB_PUBLF to public; 
grant delete on TB_PUBLF to public;  
grant insert on TB_PUBLF to public; 
grant select on SEQ_TB_PUBLF to public;   