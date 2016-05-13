/*
================================================================================
��ṹ����:TB_BILBA
��ṹ����:֧��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILBA;
drop index AK_TB_BILBA;
drop table TB_BILBA;
create table TB_BILBA  (
   BILBA_ID             INTEGER                         not null,  /*֧����ID             */
   BILBA001             INTEGER                         not null,  /*����ID               */
   BILBA002             VARCHAR2(30)                    not null,  /*���ݱ��             */
   BILBA003             DATE                            not null,  /*��������             */
   BILBA004             INTEGER                         not null,  /*��˾ID               */
   BILBA005             INTEGER                         not null,  /*Ӫ����֯ID           */
   BILBA006             INTEGER                         not null,  /*����ID               */
   BILBA007             INTEGER,                                   /*̯λID               */
   BILBA008             INTEGER,                                   /*��ͬID               */
   BILBA009             INTEGER                         not null,  /*ҵ����ID           */
   BILBA010             INTEGER                         not null,  /*ҵ����ԱID           */
   BILBA011             VARCHAR2(255),                             /*��ע                 */
   BILBA012             VARCHAR2(1)                     not null,  /*������Դ             */
   BILBA013             INTEGER,                                   /*��Դ����ID           */
   BILBA014             INTEGER,                                   /*¼����ID             */
   BILBA015             DATE,                                      /*¼������             */
   BILBA016             INTEGER,                                   /*�����ID             */
   BILBA017             DATE,                                      /*�������             */
   BILBA018             VARCHAR2(1)                     not null,  /*���״̬             */
   BILBA019             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   BILBA020             VARCHAR2(30),                              /*ǩ�˵���             */
   BILBA021             VARCHAR2(1),                               /*ǩ����               */
   BILBA022             VARCHAR2(16),                              /*��Դ����             */
   BILBA023             INTEGER                         not null,  /*�����̻�ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILBA primary key (BILBA_ID)
);
create unique index AK_TB_BILBA on TB_BILBA (BILBA002,BILBA005);
create sequence SEQ_TB_BILBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILBA to public;
grant index  on TB_BILBA to public;
grant update on TB_BILBA to public; 
grant delete on TB_BILBA to public;  
grant insert on TB_BILBA to public; 
grant select on SEQ_TB_BILBA to public;   