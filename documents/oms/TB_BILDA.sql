/*
================================================================================
��ṹ����:TB_BILDA
��ṹ����:Ԥ�ն��õ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILDA;
drop index AK_TB_BILDA;
drop table TB_BILDA;
create table TB_BILDA  (
   BILDA_ID             INTEGER                         not null,  /*Ԥ�ն��õ�ID         */
   BILDA001             INTEGER                         not null,  /*����ID               */
   BILDA002             VARCHAR2(30)                    not null,  /*���ݱ��             */
   BILDA003             DATE                            not null,  /*��������             */
   BILDA004             INTEGER                         not null,  /*��˾ID               */
   BILDA005             INTEGER                         not null,  /*Ӫ����֯ID           */
   BILDA006             INTEGER                         not null,  /*����ID               */
   BILDA007             INTEGER,                                   /*̯λID               */
   BILDA008             INTEGER,                                   /*��ͬID               */
   BILDA009             INTEGER                         not null,  /*ҵ����ID           */
   BILDA010             INTEGER                         not null,  /*ҵ����ԱID           */
   BILDA011             VARCHAR2(255),                             /*��ע                 */
   BILDA012             VARCHAR2(1)                     not null,  /*��������1.Ԥ�ն��� 2.�ʱ�����  */
   BILDA013             VARCHAR2(1),                               /*�Ƿ����             */
   BILDA014             INTEGER,                                   /*¼����ID             */
   BILDA015             DATE,                                      /*¼������             */
   BILDA016             INTEGER,                                   /*�����ID             */
   BILDA017             DATE,                                      /*�������             */
   BILDA018             VARCHAR2(1)                     not null,  /*���״̬             */
   BILDA019             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   BILDA020             VARCHAR2(30),                              /*ǩ�˵���             */
   BILDA021             VARCHAR2(1),                               /*ǩ����               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILDA primary key (BILDA_ID)
);
create unique index AK_TB_BILDA on TB_BILDA (BILDA002,BILDA005);
create sequence SEQ_TB_BILDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILDA to public;
grant index  on TB_BILDA to public;
grant update on TB_BILDA to public; 
grant delete on TB_BILDA to public;  
grant insert on TB_BILDA to public; 
grant select on SEQ_TB_BILDA to public;   