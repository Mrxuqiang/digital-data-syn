/*
================================================================================
��ṹ����:TB_PROAF
��ṹ����:���ѵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROAF;
drop index AK_TB_PROAF;
drop table TB_PROAF;
create table TB_PROAF  (
   PROAF_ID             INTEGER                         not null,  /*���ѵ�ID             */
   PROAF001             INTEGER                         not null,  /*����ID               */
   PROAF002             VARCHAR2(30)                    not null,  /*���ѵ���             */
   PROAF003             DATE                            not null,  /*��������             */
   PROAF004             INTEGER                         not null,  /*��˾ID               */
   PROAF005             INTEGER                         not null,  /*Ӫ����֯ID           */
   PROAF006             INTEGER                         not null,  /*�绰ID               */
   PROAF007             VARCHAR2(1)                     not null,  /*�ɷ�����             */
   PROAF008             INTEGER                         not null,  /*�̻�ID               */
   PROAF009             INTEGER,                                   /*̯λID               */
   PROAF010             INTEGER,                                   /*��ͬID               */
   PROAF011             INTEGER                         not null,  /*����ID               */
   PROAF012             INTEGER,                                   /*���õ�ID             */
   PROAF013             INTEGER                         not null,  /*ҵ����ID           */
   PROAF014             INTEGER                         not null,  /*ҵ����ԱID           */
   PROAF015             VARCHAR2(255),                             /*��ע                 */
   PROAF016             DATE,                                      /*��������             */
   PROAF017             DATE,                                      /*����ֹ��             */
   PROAF018             NUMBER(12,2)                    not null,  /*���ѽ��             */
   PROAF019             INTEGER,                                   /*¼����ID             */
   PROAF020             DATE,                                      /*¼������             */
   PROAF021             INTEGER,                                   /*���ID               */
   PROAF022             DATE,                                      /*�������             */
   PROAF023             VARCHAR2(1)                     not null,  /*���״̬             */
   PROAF024             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   PROAF025             VARCHAR2(30),                              /*ǩ�˵���             */
   PROAF026             VARCHAR2(1),                               /*ǩ����               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PROAF primary key (PROAF_ID)
);
create unique index AK_TB_PROAF on TB_PROAF (PROAF002,PROAF005);
create sequence SEQ_TB_PROAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAF to public;
grant index  on TB_PROAF to public;
grant update on TB_PROAF to public; 
grant delete on TB_PROAF to public;  
grant insert on TB_PROAF to public; 
grant select on SEQ_TB_PROAF to public;   