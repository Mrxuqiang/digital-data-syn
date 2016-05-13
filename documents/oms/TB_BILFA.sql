/*
================================================================================
��ṹ����:TB_BILFA
��ṹ����:�������÷�̯������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILFA;
drop index AK_TB_BILFA;
drop table TB_BILFA;
create table TB_BILFA  (
   BILFA_ID             INTEGER                         not null,  /*�������÷�̯��ID     */
   BILFA001             INTEGER                         not null,  /*����ID               */
   BILFA002             VARCHAR2(30)                    not null,  /*��̯����             */
   BILFA003             DATE                            not null,  /*��̯����             */
   BILFA004             INTEGER                         not null,  /*Ӫ����֯ID           */
   BILFA005             INTEGER                         not null,  /*ҵ����ID           */
   BILFA006             INTEGER                         not null,  /*ҵ����ԱID           */
   BILFA007             VARCHAR2(100),                             /*��Ӫ����             */
   BILFA008             VARCHAR2(100),                             /*��Ӫ����             */
   BILFA009             VARCHAR2(100),                             /*��ӪС��             */
   BILFA010             VARCHAR2(100),                             /*̯λ                 */
   BILFA011             DATE                            not null,  /*��̯��ֹ����         */
   BILFA012             VARCHAR2(255),                             /*��ע                 */
   BILFA013             INTEGER,                                   /*¼����ID             */
   BILFA014             DATE,                                      /*¼������             */
   BILFA015             INTEGER,                                   /*�����ID             */
   BILFA016             DATE,                                      /*�������             */
   BILFA017             VARCHAR2(1)                     not null,  /*���״̬             */
   BILFA018             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   BILFA019             VARCHAR2(30),                              /*ǩ�˵���             */
   BILFA020             VARCHAR2(1),                               /*ǩ����               */
   BILFA021             INTEGER,                                   /*����ID               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILFA primary key (BILFA_ID)
);
create unique index AK_TB_BILFA on TB_BILFA (BILFA001,BILFA002);
create sequence SEQ_TB_BILFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFA to public;
grant index  on TB_BILFA to public;
grant update on TB_BILFA to public; 
grant delete on TB_BILFA to public;  
grant insert on TB_BILFA to public; 
grant select on SEQ_TB_BILFA to public;   