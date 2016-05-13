/*
================================================================================
��ṹ����:TB_ASSBA
��ṹ����:���׵�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_ASSBA;
drop index AK_TB_ASSBA;
drop table TB_ASSBA;
create table TB_ASSBA  (
   ASSBA_ID             INTEGER                         not null,   /*������ID         */
   ASSBA001             VARCHAR2(30)                    not null,   /*���ݺ�           */
   ASSBA002             DATE                            not null,   /*��������         */
   ASSBA003             VARCHAR2(1)                     not null,   /*�䶯����         */
   ASSBA004             VARCHAR2(1)                     not null,   /*����״̬         */
   ASSBA005             VARCHAR2(255),                              /*��ע             */
   ASSBA006             INTEGER,                                    /*¼����           */
   ASSBA007             DATE,                                       /*¼������         */
   ASSBA008             INTEGER,                                    /*�����           */
   ASSBA009             DATE,                                       /*�������         */
   ASSBA010             INTEGER                         not null,   /*����         */
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER(1),                                  /*����״̬               */
   constraint PK_TB_ASSBA primary key (ASSBA_ID)
);
create unique index AK_TB_ASSBA on TB_ASSBA (ASSBA001,ASSBA010);
create sequence SEQ_TB_ASSBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSBA to public;
grant index  on TB_ASSBA to public;
grant update on TB_ASSBA to public; 
grant delete on TB_ASSBA to public;  
grant insert on TB_ASSBA to public; 
grant select on SEQ_TB_ASSBA to public;   