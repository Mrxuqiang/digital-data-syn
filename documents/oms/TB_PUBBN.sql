/*
================================================================================
��ṹ����:TB_PUBBN
��ṹ����:����ά�������ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBN;
drop index AK_TB_PUBBN;
drop table TB_PUBBN;
create table TB_PUBBN  (
   PUBBN_ID             INTEGER                         not null,  /*���䵥��id         */
   PUBBN001             INTEGER                         not null,  /*���䵥��id         */
   PUBBN002             INTEGER                         not null,  /*����               */
   PUBBN003             INTEGER,                                   /*����               */
   PUBBN004             INTEGER,                                   /*С��               */
   PUBBN005             INTEGER,                                   /*�̳�               */
   PUBBN006             DATE,                                      /*��Ч����           */
   PUBBN007             DATE,                                      /*ʧЧ����           */
   PUBBN008             VARCHAR2(255),                             /*��ע               */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBN primary key (PUBBN_ID)
);
create unique index AK_TB_PUBBN on TB_PUBBN (PUBBN001,PUBBN002,FLAG);
create sequence SEQ_TB_PUBBN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBN to public;
grant index  on TB_PUBBN to public;
grant update on TB_PUBBN to public; 
grant delete on TB_PUBBN to public;  
grant insert on TB_PUBBN to public; 
grant select on SEQ_TB_PUBBN to public;   