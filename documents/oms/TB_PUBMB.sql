/*
================================================================================
��ṹ����:TB_PUBMB
��ṹ����:��Ŀ��ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBMB;
drop index AK_TB_PUBMB;
drop table TB_PUBMB;
create table TB_PUBMB  (
   PUBMB_ID             INTEGER                          not null,  /*��Ŀ��ϸID         */
   PUBMB001             INTEGER                          not null,  /*��Ŀ����ID         */
   PUBMB002             VARCHAR2(20)                     not null,  /*��Ŀ����           */
   PUBMB003             VARCHAR2(60)                     not null,  /*��Ŀ����           */
   PUBMB004             INTEGER,                                    /*������ID         */
   PUBMB005             INTEGER,                                    /*������ԱID         */
   PUBMB006             VARCHAR2(1)                      not null,  /*�Ƿ��깤           */
   PUBMB007             DATE,                                       /*Ԥ�ƿ�ʼ��         */
   PUBMB008             DATE,                                       /*Ԥ���깤��         */
   PUBMB009             DATE,                                       /*ʵ�ʿ�ʼ��         */
   PUBMB010             DATE,                                       /*ʵ���깤��         */ 
   PUBMB011             VARCHAR2(200),                              /*��ע               */       
   CREATE_USER          VARCHAR2(12),                               /*������Ա           */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����       */                               
   CREATE_DATE          DATE,                                       /*��������           */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա           */
   MODI_DATE            DATE,                                       /*�޸�����           */
   FLAG                 NUMBER(1),                                  /*����״̬           */
   constraint PK_TB_PUBMB primary  key (PUBMB_ID)
);
create unique index AK_TB_PUBMB on TB_PUBMB (PUBMB001);
create sequence SEQ_TB_PUBMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBMB to public;
grant index  on TB_PUBMB to public;
grant update on TB_PUBMB to public; 
grant delete on TB_PUBMB to public;  
grant insert on TB_PUBMB to public; 
grant select on SEQ_TB_PUBMB to public;   