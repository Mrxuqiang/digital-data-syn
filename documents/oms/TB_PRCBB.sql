/*
================================================================================
��ṹ����:TB_PRCBB
��ṹ����:�ۼ۵�����׼�ۼ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCBB;
drop index AK_TB_PRCBB;
drop table TB_PRCBB;
create table TB_PRCBB  (
   PRCBB_ID             INTEGER                         not null,  /*�ۼ۵�����׼�ۼ�ID*/
   PRCBB001             INTEGER                         not null,  /*�ۼ۵�����ͷID    */
   PRCBB002             INTEGER                         not null,  /*��ƷID            */
   PRCBB003             VARCHAR2(1)                     not null,  /*���ۼ۲ο���׼    */
   PRCBB004             NUMBER(12,2)                    not null,  /*���ۼ۲ο���      */
   PRCBB005             NUMBER(5,3)                     not null,  /*���ۼ۸�������    */
   PRCBB006             NUMBER(12,2)                    not null,  /*���ۼ�            */
   PRCBB007             VARCHAR2(1)                     not null,  /*��ͼ۲ο���׼    */
   PRCBB008             NUMBER(12,2)                    not null,  /*��ͼ۲ο���      */
   PRCBB009             NUMBER(5,3)                     not null,  /*��ͼ۸�������    */
   PRCBB010             NUMBER(12,2)                    not null,  /*��ͼ�            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PRCBB primary key (PRCBB_ID)
);
create unique index AK_TB_PRCBB on TB_PRCBB (PRCBB001,PRCBB002);
create sequence SEQ_TB_PRCBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCBB to public;
grant index  on TB_PRCBB to public;
grant update on TB_PRCBB to public; 
grant delete on TB_PRCBB to public;  
grant insert on TB_PRCBB to public; 
grant select on SEQ_TB_PRCBB to public;   