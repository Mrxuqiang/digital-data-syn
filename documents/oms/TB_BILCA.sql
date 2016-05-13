/*
================================================================================
��ṹ����:TB_BILCA
��ṹ����:���õ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILCA;
drop index AK_TB_BILCA;
drop table TB_BILCA;
create table TB_BILCA  (
   BILCA_ID             INTEGER                         not null,  /*���õ�����           */
   BILCA001             INTEGER                         not null,  /*����ID               */
   BILCA002             VARCHAR2(30)                    not null,  /*���ݱ��             */
   BILCA003             DATE                            not null,  /*��������             */
   BILCA004             INTEGER                         not null,  /*��˾ID               */
   BILCA005             INTEGER                         not null,  /*Ӫ����֯ID           */
   BILCA006             INTEGER                         not null,  /*����ID               */
   BILCA007             INTEGER,                                   /*̯λID               */
   BILCA008             INTEGER,                                   /*��ͬID               */
   BILCA009             INTEGER                         not null,  /*ҵ����ID           */
   BILCA010             INTEGER                         not null,  /*ҵ����ԱID           */
   BILCA011             VARCHAR2(255),                             /*��ע                 */
   BILCA012             INTEGER,                                   /*¼����ID             */
   BILCA013             DATE,                                      /*¼������             */
   BILCA014             INTEGER,                                   /*�����ID             */
   BILCA015             DATE,                                      /*�������             */
   BILCA016             VARCHAR2(1)                     not null,  /*���״̬             */
   BILCA017             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   BILCA018             VARCHAR2(30),                              /*ǩ�˵���             */
   BILCA019             VARCHAR2(1),                               /*ǩ����               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILCA primary key (BILCA_ID)
);
create unique index AK_TB_BILCA on TB_BILCA (BILCA002,BILCA005);
create sequence SEQ_TB_BILCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILCA to public;
grant index  on TB_BILCA to public;
grant update on TB_BILCA to public; 
grant delete on TB_BILCA to public;  
grant insert on TB_BILCA to public; 
grant select on SEQ_TB_BILCA to public;   