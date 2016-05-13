/*
================================================================================
��ṹ����:TB_PUBGQ
��ṹ����:����Ʒ�Ʊ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGQ;
drop index AK_TB_PUBGQ;
drop table TB_PUBGQ;
create table TB_PUBGQ  (
   PUBGQ_ID             INTEGER                         not null,  /*����Ʒ��ID         */
   PUBGQ001             INTEGER                         not null,  /*����ID             */
   PUBGQ002             INTEGER                         not null,  /*Ʒ��ID             */
   PUBGQ003             INTEGER,                                   /*����ID             */
   PUBGQ004             VARCHAR2(255),                             /*��ע               */
   PUBGQ005             VARCHAR2(255),                             /*Ʒ�� ����          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGQ primary key (PUBGQ_ID)
);
create unique index AK_TB_PUBGQ on TB_PUBGQ (PUBGQ001,PUBGQ002);
create sequence SEQ_TB_PUBGQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGQ to public;
grant index  on TB_PUBGQ to public;
grant update on TB_PUBGQ to public; 
grant delete on TB_PUBGQ to public;  
grant insert on TB_PUBGQ to public; 
grant select on SEQ_TB_PUBGQ to public;   