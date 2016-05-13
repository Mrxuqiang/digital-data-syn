/*
================================================================================
��ṹ����:TB_MEDBB
��ṹ����:ý��۸��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDBB;
drop index AK_TB_MEDBB;
drop table TB_MEDBB;
create table TB_MEDBB  (
   MEDBB_ID             INTEGER                         not null,  /*ý��۸�ID         */
   MEDBB001             INTEGER                         not null,  /*ý��ID             */
   MEDBB002             VARCHAR2(8)                     not null,  /*��ʼʱ��           */
   MEDBB003             VARCHAR2(8)                     not null,  /*����ʱ��           */
   MEDBB004             INTEGER                         not null,  /*��λID             */
   MEDBB005             NUMBER(12,2),				   /*����               */
   MEDBB006             VARCHAR2(255),				   /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDBB primary key (MEDBB_ID)
);
create unique index AK_TB_MEDBB on TB_MEDBB (MEDBB001,MEDBB002);
create sequence SEQ_TB_MEDBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBB to public;
grant index  on TB_MEDBB to public;
grant update on TB_MEDBB to public; 
grant delete on TB_MEDBB to public;  
grant insert on TB_MEDBB to public; 
grant select on SEQ_TB_MEDBB to public;   