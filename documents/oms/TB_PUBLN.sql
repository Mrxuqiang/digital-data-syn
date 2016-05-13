/*
================================================================================
��ṹ����:TB_PUBLN
��ṹ����:��ƿ�Ŀ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLN;
drop index AK_TB_PUBLN;
drop table TB_PUBLN;
create table TB_PUBLN  (
   PUBLN_ID             INTEGER                         not null,  /*��ƿ�Ŀ���ID       */
   PUBLN001             INTEGER                         not null,  /*��ƿ�ĿID           */
   PUBLN002             INTEGER                         not null,  /*��ƿ�Ŀ����ID       */
   PUBLN003             VARCHAR2(30)                    not null,  /*��Ŀ����             */
   PUBLN004             VARCHAR2(40)                    not null,  /*��Ŀ����             */
   PUBLN005             VARCHAR2(40)                    not null,  /*��ĿӢ��             */
   PUBLN006             INTEGER                         not null,  /*��Ŀ����ID           */
   PUBLN007             VARCHAR2(2)                     not null,  /*����             */
   PUBLN008             VARCHAR2(2)                     not null,  /*�ֽ����             */
   PUBLN009             INTEGER                         not null,  /*Ĭ�ϱ���ID           */
   PUBLN010             NUMBER(2)                       not null,  /*��Ŀ�㼶             */
   PUBLN011             VARCHAR2(1),                               /*�Ƿ�ĩ��             */
   PUBLN012             VARCHAR2(1),                               /*�Ƿ�ͣ��             */
   PUBLN013             NUMBER(4)                       not null,  /*��Ч���             */
   PUBLN014             NUMBER(2)                       not null,  /*��Ч�ڼ�             */
   PUBLN015             NUMBER(4),                                 /*��ֹ���             */
   PUBLN016             NUMBER(2),                                 /*��ֹ�ڼ�             */
   PUBLN017             NUMBER(4),                                 /*�������             */
   PUBLN018             NUMBER(2),                                 /*�����ڼ�             */
   PUBLN019             VARCHAR2(1),                               /*����������       */
   PUBLN020             VARCHAR2(1),                               /*�������         */
   PUBLN021             VARCHAR2(1),                               /*�˱����˫����ʾ     */
   PUBLN022             VARCHAR2(1),                               /*��������             */
   PUBLN023             INTEGER,                                   /*���㵥λID           */
   PUBLN024             VARCHAR2(1),                               /*�Ƿ������Ŀ         */
   PUBLN025             INTEGER,                                   /*������˾ID           */
   PUBLN026             INTEGER,                                   /*������������ID       */
   PUBLN027             VARCHAR2(2)                     not null,  /*�������             */
   PUBLN028             INTEGER,                                   /*�����˾ID           */
   PUBLN029             INTEGER,                                   /*�����������ID       */
   PUBLN030             INTEGER                         not null,  /*Ŀ�Ļ�ƿ�ĿID       */
   PUBLN031             INTEGER,                                   /*�����ԱID           */
   PUBLN032             DATE,                                      /*�������             */                                                                       
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLN primary key (PUBLN_ID)
);
create unique index AK_TB_PUBLN on TB_PUBLN (PUBLN001,PUBLN002,PUBLN013,PUBLN014);
create sequence SEQ_TB_PUBLN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLN to public;
grant index  on TB_PUBLN to public;
grant update on TB_PUBLN to public; 
grant delete on TB_PUBLN to public;  
grant insert on TB_PUBLN to public; 
grant select on SEQ_TB_PUBLN to public;   