/*
================================================================================
��ṹ����:TB_MEDCA
��ṹ����:ý�����ͬ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDCA;
drop index AK_TB_MEDCA;
drop table TB_MEDCA;
create table TB_MEDCA  (
   MEDCA_ID             INTEGER                         not null,  /*ý�����ͬID     */
   MEDCA001             INTEGER                         not null,  /*Ӫ����֯ID         */
   MEDCA002             VARCHAR2(30)                    not null,  /*ý���ͬ��         */
   MEDCA003             DATE                            not null,  /*ǩ������           */
   MEDCA004             INTEGER                         not null,  /*������ID           */
   MEDCA005             VARCHAR2(30)                    not null,  /*ǩԼ��             */
   MEDCA006             DATE				not null,  /*��ͬ����           */
   MEDCA007             DATE				not null,  /*��ֹͬ��           */
   MEDCA008             INTEGER				not null,  /*���㷽ʽID         */
   MEDCA009             NUMBER(12,2)                    not null,  /*��ͬ���           */
   MEDCA010             NUMBER(12,2),				   /*�������         */
   MEDCA011             NUMBER(12,2),                              /*���ۿ���         */
   MEDCA012             NUMBER(12,2)                   not null,   /*��ͬ���           */
   MEDCA013             INTEGER			       not null,   /*ҵ����ID         */
   MEDCA014             INTEGER                        not null,   /*ҵ����ԱID         */ 
   MEDCA015             VARCHAR2(255),                             /*��ע               */
   MEDCA016             VARCHAR2(1)                    not null,   /*��ͬ״̬           */
   MEDCA017             INTEGER,                                   /*¼����ԱID         */
   MEDCA018             DATE,					   /*¼������           */
   MEDCA019             INTEGER,				   /*�����ԱID         */  
   MEDCA020             DATE,					   /*�������           */
   MEDCA021             VARCHAR2(1),                               /*�Ƿ�ǩ��           */
   MEDCA022             VARCHAR2(30),                              /*ǩ�˵���           */
   MEDCA023             VARCHAR2(1),                               /*ǩ����             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDCA primary key (MEDCA_ID)
);
create unique index AK_TB_MEDCA on TB_MEDCA (MEDCA001);
create sequence SEQ_TB_MEDCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCA to public;
grant index  on TB_MEDCA to public;
grant update on TB_MEDCA to public; 
grant delete on TB_MEDCA to public;  
grant insert on TB_MEDCA to public; 
grant select on SEQ_TB_MEDCA to public;   