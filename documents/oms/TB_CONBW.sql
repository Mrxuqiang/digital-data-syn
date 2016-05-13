/*
================================================================================
��ṹ����:TB_CONBW
��ṹ����:��ͬ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBW;
drop index AK_TB_CONBW;
drop table TB_CONBW;
create table TB_CONBW  (
   CONBW_ID             INTEGER                         not null,  /*��ͬ�����ID         */
   CONBW001             INTEGER                         not null,  /*��ͬID               */
   CONBW002             VARCHAR2(30)                    not null,  /*��ͬ��               */
   CONBW003             DATE,                                      /*��������             */
   CONBW004             DATE,                                      /*����ֹ��             */      
   CONBW005             VARCHAR2(6),                               /*��ͬ�ڼ�             */
   CONBW006             INTEGER,                                   /*��ͬ�ڼ����         */
   CONBW007             NUMBER(12,2),                              /*��ͬ�����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                 /*����״̬             */
   constraint PK_TB_CONBW primary key (CONBW_ID)
);
create unique index AK_TB_CONBW on TB_CONBW (CONBW001,CONBW003,CONBW004,FLAG);
create sequence SEQ_TB_CONBW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBW to public;
grant index  on TB_CONBW to public;
grant update on TB_CONBW to public; 
grant delete on TB_CONBW to public;  
grant insert on TB_CONBW to public; 
grant select on SEQ_TB_CONBW to public;   