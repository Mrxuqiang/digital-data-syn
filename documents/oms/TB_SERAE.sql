/*
================================================================================
��ṹ����:TB_SERAE
��ṹ����:����ƾ֤�ջص�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAE;
drop index AK_TB_SERAE;
drop table TB_SERAE;
create table TB_SERAE  (
   SERAE_ID             INTEGER                         not null,  /*����ƾ֤�ջص�ID     */
   SERAE001             INTEGER                         not null,  /*����ID               */
   SERAE002             VARCHAR2(30)                    not null,  /*�ջص���             */
   SERAE003             DATE                            not null,  /*��������             */
   SERAE004             INTEGER                         not null,  /*��˾ID               */
   SERAE005             INTEGER                         not null,  /*Ӫ����֯ID           */
   SERAE006             DATE                            not null,  /*�ջ�����             */
   SERAE007             INTEGER                         not null,  /*ҵ����ID           */
   SERAE008             INTEGER                         not null,  /*ҵ����ԱID           */
   SERAE009             INTEGER                         not null,  /*����ID               */
   SERAE010             INTEGER                         not null,  /*̯λID               */
   SERAE011             INTEGER                         not null,  /*��ͬID               */
   SERAE012             VARCHAR2(255),                             /*��ע                 */
   SERAE013             INTEGER,                                   /*¼����ID             */
   SERAE014             DATE,                                      /*¼������             */
   SERAE015             INTEGER,                                   /*�����ID             */
   SERAE016             DATE,                                      /*�������             */
   SERAE017             VARCHAR2(1)                     not null,  /*���״̬             */
   SERAE018             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   SERAE019             VARCHAR2(30),                              /*ǩ�˵���             */
   SERAE020             VARCHAR2(1),                               /*ǩ����               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_SERAE primary key (SERAE_ID)
);
create unique index AK_TB_SERAE on TB_SERAE (SERAE002,SERAE005);
create sequence SEQ_TB_SERAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAE to public;
grant index  on TB_SERAE to public;
grant update on TB_SERAE to public; 
grant delete on TB_SERAE to public;  
grant insert on TB_SERAE to public; 
grant select on SEQ_TB_SERAE to public;   