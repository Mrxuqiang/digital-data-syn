/*
================================================================================
��ṹ����:TB_SERAG
��ṹ����:����ƾ֤���ϵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAG;
drop index AK_TB_SERAG;
drop table TB_SERAG;
create table TB_SERAG  (
   SERAG_ID             INTEGER                         not null,  /*����ƾ֤���ϵ�ID     */
   SERAG001             INTEGER                         not null,  /*����ID               */
   SERAG002             VARCHAR2(30)                    not null,  /*���ϵ���             */
   SERAG003             DATE                            not null,  /*��������             */
   SERAG004             INTEGER                         not null,  /*��˾ID               */
   SERAG005             INTEGER                         not null,  /*Ӫ����֯ID           */
   SERAG006             DATE                            not null,  /*��������             */
   SERAG007             INTEGER                         not null,  /*���ϲ���ID           */
   SERAG008             INTEGER                         not null,  /*������ԱID           */
   SERAG009             VARCHAR2(255),                             /*��ע                 */
   SERAG010             INTEGER,                                   /*¼����ID             */
   SERAG011             DATE,                                      /*¼������             */
   SERAG012             INTEGER,                                   /*�����ID             */
   SERAG013             DATE,                                      /*�������             */
   SERAG014             VARCHAR2(1)                     not null,  /*���״̬             */
   SERAG015             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   SERAG016             VARCHAR2(30),                              /*ǩ�˵���             */
   SERAG017             VARCHAR2(1),                               /*ǩ����               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_SERAG primary key (SERAG_ID)
);
create unique index AK_TB_SERAG on TB_SERAG (SERAG002,SERAG005);
create sequence SEQ_TB_SERAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAG to public;
grant index  on TB_SERAG to public;
grant update on TB_SERAG to public; 
grant delete on TB_SERAG to public;  
grant insert on TB_SERAG to public; 
grant select on SEQ_TB_SERAG to public;   