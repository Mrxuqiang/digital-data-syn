/*
================================================================================
��ṹ����:TB_PUBBL
��ṹ����:�������ʱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBL;
drop index AK_TB_PUBBL;
drop table TB_PUBBL;
create table TB_PUBBL  (
   PUBBL_ID             INTEGER                         not null,  /*��������ID         */
   PUBBL001             INTEGER                         not null,  /*Ʒ����ID           */
   PUBBL002             INTEGER                         not null,  /*��������ID         */
   PUBBL003             VARCHAR2(80),                              /*���ʺ���           */
   PUBBL004             DATE,                                      /*��Ч����           */
   PUBBL005             DATE,                                      /*��Чֹ��           */
   PUBBL006             VARCHAR2(1000),                            /*����ͼƬ           */
   PUBBL007             VARCHAR2(1),                               /*״̬               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBL primary key (PUBBL_ID)
);
create unique index AK_TB_PUBBL on TB_PUBBL (PUBBL001,PUBBL002,PUBBL004,PUBBL005,FLAG);
create sequence SEQ_TB_PUBBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBL to public;
grant index  on TB_PUBBL to public;
grant update on TB_PUBBL to public; 
grant delete on TB_PUBBL to public;  
grant insert on TB_PUBBL to public; 
grant select on SEQ_TB_PUBBL to public;   