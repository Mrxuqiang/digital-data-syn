/*
================================================================================
��ṹ����:TB_PUBHB
��ṹ����:Ʒ�Ʊ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHB;
drop index AK_TB_PUBHB;
drop table TB_PUBHB;
create table TB_PUBHB  (
   PUBHB_ID             INTEGER                         not null,  /*Ʒ��ID             */
   PUBHB001             VARCHAR2(10)                    not null,  /*Ʒ�ƴ���           */
   PUBHB002             VARCHAR2(30)                    not null,  /*Ʒ������           */
   PUBHB003             VARCHAR2(80),                              /*Ʒ������           */
   PUBHB004             INTEGER,                                   /*������Ʒ��         */
   PUBHB005             VARCHAR2(1),                               /*�Ƿ�ͣ��           */
   PUBHB006             INTEGER,                                   /*��������ID         */
   PUBHB007             VARCHAR2(1),                               /*�Ƿ��ڲ�Ʒ��       */
   PUBHB008             INTEGER,                                   /*Ʒ�Ƶȼ�ID         */
   PUBHB009             VARCHAR2(255),                             /*ͼƬ               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBHB primary key (PUBHB_ID)
);
create unique index AK_TB_PUBHB on TB_PUBHB (PUBHB001);
create sequence SEQ_TB_PUBHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHB to public;
grant index  on TB_PUBHB to public;
grant update on TB_PUBHB to public; 
grant delete on TB_PUBHB to public;  
grant insert on TB_PUBHB to public; 
grant select on SEQ_TB_PUBHB to public;   