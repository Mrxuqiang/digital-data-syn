/*
================================================================================
��ṹ����:TB_PUBLP
��ṹ����:����ժҪ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLP;
drop index AK_TB_PUBLP;
drop table TB_PUBLP;
create table TB_PUBLP  (
   PUBLP_ID             INTEGER                         not null,  /*����ժҪID           */
   PUBLP001             VARCHAR2(4)                     not null,  /*ժҪ����             */
   PUBLP002             VARCHAR2(200)                   not null,  /*����ժҪ             */
   PUBLP003             VARCHAR2(1)                     not null,  /*�Ƿ���             */
   PUBLP004             INTEGER,                                   /*������ID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLP primary key (PUBLP_ID)
);
create unique index AK_TB_PUBLP on TB_PUBLP (PUBLP001);
create sequence SEQ_TB_PUBLP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLP to public;
grant index  on TB_PUBLP to public;
grant update on TB_PUBLP to public; 
grant delete on TB_PUBLP to public;  
grant insert on TB_PUBLP to public; 
grant select on SEQ_TB_PUBLP to public;   