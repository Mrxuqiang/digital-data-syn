/*
================================================================================
��ṹ����:TB_BILBB
��ṹ����:֧�����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILBB;
drop index AK_TB_BILBB;
drop table TB_BILBB;
create table TB_BILBB  (
   BILBB_ID             INTEGER                         not null,  /*֧������ϸID         */
   BILBB001             INTEGER                         not null,  /*֧����ID             */
   BILBB002             INTEGER,                                   /*Ԥ�յ�ID             */
   BILBB003             INTEGER                         not null,  /*����ID               */
   BILBB004             VARCHAR2(1)                     not null,  /*�ʿ�����             */
   BILBB005             INTEGER,                                   /*��ƿ�ĿID           */
   BILBB006             NUMBER(12,2)                    not null,  /*֧�����             */
   BILBB007             NUMBER(12,2)                    not null,  /*�Ѹ����             */
   BILBB008             VARCHAR2(255),                             /*��ע                 */
   BILBB009             DATE,                                      /*��������             */
   BILBB010             DATE,                                      /*����ֹ��             */
   BILBB011             INTEGER,                                   /*��ԴӪ����֯         */
   BILBB012             VARCHAR2(30),                              /*Ԥ�յ���             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILBB primary key (BILBB_ID)
);
create unique index AK_TB_BILBB on TB_BILBB (BILBB_ID,BILBB001,BILBB002,BILBB003);
create sequence SEQ_TB_BILBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILBB to public;
grant index  on TB_BILBB to public;
grant update on TB_BILBB to public; 
grant delete on TB_BILBB to public;  
grant insert on TB_BILBB to public; 
grant select on SEQ_TB_BILBB to public;   