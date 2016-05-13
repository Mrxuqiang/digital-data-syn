/*
================================================================================
��ṹ����:TB_BILDB
��ṹ����:Ԥ�ն��õ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILDB;
drop index AK_TB_BILDB;
drop table TB_BILDB;
create table TB_BILDB  (
   BILDB_ID             INTEGER                         not null,  /*Ԥ�ն��õ���ϸID     */
   BILDB001             INTEGER                         not null,  /*Ԥ�ն��õ�ID         */
   BILDB002             INTEGER,                                   /*Ԥ�յ�ID             */
   BILDB003             INTEGER                         not null,  /*����ID               */
   BILDB004             VARCHAR2(1)                     not null,  /*�ʿ�����             */
   BILDB005             INTEGER,                                   /*��ƿ�ĿID           */
   BILDB006             NUMBER(12,2)                    not null,  /*���ý��             */
   BILDB008             VARCHAR2(255),                             /*��ע                 */
   BILDB009             INTEGER,                                   /*���õ�ID             */
   BILDB010             VARCHAR2(16),                              /*���õ���             */
   BILDB011             INTEGER,                                   /*֧����ID             */
   BILDB012             VARCHAR2(16),                              /*֧������             */
   BILDB013             INTEGER,                                   /*��ԴӪ����֯ID       */
   BILBB014             VARCHAR2(30),                              /*Ԥ�յ���             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILDB primary key (BILDB_ID)
);
create unique index AK_TB_BILDB on TB_BILDB (BILDB_ID,BILDB001,BILDB002,BILDB003);
create sequence SEQ_TB_BILDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILDB to public;
grant index  on TB_BILDB to public;
grant update on TB_BILDB to public; 
grant delete on TB_BILDB to public;  
grant insert on TB_BILDB to public; 
grant select on SEQ_TB_BILDB to public;   