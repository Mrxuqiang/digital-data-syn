/*
================================================================================
��ṹ����:TB_PUBGT
��ṹ����:���̷����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGT;
drop index AK_TB_PUBGT;
drop table TB_PUBGT;
create table TB_PUBGT  (
   PUBGT_ID             INTEGER                         not null,  /*���̷���ID         */
   PUBGT001             VARCHAR2(12)                    not null,  /*�������           */
   PUBGT002             VARCHAR2(30)                    not null,  /*��������           */
   PUBGT003             INTEGER,                                   /*�ϼ�����ID         */
   PUBGT004             VARCHAR2(30),                              /*��ǰ�㼶����       */
   ISLASTLEV            VARCHAR2(1),                               /*�Ƿ�ĩ��           */
   LEVNUM               NUMBER(1),                                 /*�㼶               */ 
   PARCODE              VARCHAR2(40),                              /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGT primary key (PUBGT_ID)
);
create unique index AK_TB_PUBGT on TB_PUBGT (PUBGT001);
create sequence SEQ_TB_PUBGT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGT to public;
grant index  on TB_PUBGT to public;
grant update on TB_PUBGT to public; 
grant delete on TB_PUBGT to public;  
grant insert on TB_PUBGT to public; 
grant select on SEQ_TB_PUBGT to public;   