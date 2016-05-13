/*
================================================================================
��ṹ����:TB_PROAA
��ṹ����:����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROAA;
drop index AK_TB_PROAA;
drop table TB_PROAA;
create table TB_PROAA  (
   PROAA_ID             INTEGER                         not null,  /*������ID           */
   PROAA001             INTEGER                         not null,  /*��˾ID               */
   PROAA002             INTEGER                         not null,  /*Ӫ����֯ID           */
   PROAA003             VARCHAR2(16)                    not null,  /*����               */
   PROAA004             VARCHAR2(30),                              /*�������             */
   PROAA005             INTEGER                         not null,  /*��ѷ���ID           */
   PROAA006             INTEGER                         not null,  /*��������ID           */
   PROAA007             VARCHAR2(1),                               /*��Ч��               */
   PROAA008             VARCHAR2(255),                             /*��ע                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PROAA primary key (PROAA_ID)
);
create unique index AK_TB_PROAA on TB_PROAA (PROAA002,PROAA003);
create sequence SEQ_TB_PROAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAA to public;
grant index  on TB_PROAA to public;
grant update on TB_PROAA to public; 
grant delete on TB_PROAA to public;  
grant insert on TB_PROAA to public; 
grant select on SEQ_TB_PROAA to public;   