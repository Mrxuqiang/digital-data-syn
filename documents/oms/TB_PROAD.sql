/*
================================================================================
��ṹ����:TB_PROAD
��ṹ����:�绰�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROAD;
drop index AK_TB_PROAD;
drop table TB_PROAD;
create table TB_PROAD  (
   PROAD_ID             INTEGER                         not null,  /*�绰������ϸID       */
   PROAD001             INTEGER                         not null,  /*�绰����ID           */
   PROAD002             DATE                            not null,  /*��������             */
   PROAD003             INTEGER                         not null,  /*����ID               */
   PROAD004             INTEGER,                                   /*̯λID               */
   PROAD005             INTEGER,                                   /*��ͬID               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PROAD primary key (PROAD_ID)
);
create unique index AK_TB_PROAD on TB_PROAD (PROAD001,PROAD002);
create sequence SEQ_TB_PROAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAD to public;
grant index  on TB_PROAD to public;
grant update on TB_PROAD to public; 
grant delete on TB_PROAD to public;  
grant insert on TB_PROAD to public; 
grant select on SEQ_TB_PROAD to public;   