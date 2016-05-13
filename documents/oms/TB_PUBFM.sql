/*
================================================================================
��ṹ����:TB_PUBFM
��ṹ����:���Ԫ�ϲ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFM;
drop index AK_TB_PUBFM;
drop table TB_PUBFM;
create table TB_PUBFM  (
   PUBFM_ID             INTEGER			  NOT NULL,   /*���Ԫ�ϲ�ID               */
   PUBFM001             INTEGER			  NOT NULL,   /*����id                       */
   PUBFM002             INTEGER			  NOT NULL,   /*ͼ��id                       */
   PUBFM003             NUMBER(5),    			      /*�ϲ����                     */
   PUBFM004             NUMBER(5),                            /*��ʼ��                       */
   PUBFM005             NUMBER(5),                            /*��ʼ��                       */
   PUBFM006             NUMBER(5), 		              /*������                       */
   PUBFM007             NUMBER(5),                            /*������                       */
   CREATE_USER          VARCHAR2(12),                         /*������Ա          */
   USER_GROUP           VARCHAR2(12),                         /*������Ա����      */                               
   CREATE_DATE          DATE,                                 /*��������          */
   MODIFIER             VARCHAR2(12),                         /*�޸���Ա          */
   MODI_DATE            DATE,                                 /*�޸�����          */
   FLAG                 NUMBER(1),                            /*����״̬          */
   constraint PK_TB_PUBFM primary key (PUBFM_ID)
);
create unique index AK_TB_PUBFM on TB_PUBFM (PUBFM001,PUBFM002,PUBFM003);
create sequence SEQ_TB_PUBFM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFM to public;
grant index  on TB_PUBFM to public;
grant update on TB_PUBFM to public; 
grant delete on TB_PUBFM to public;  
grant insert on TB_PUBFM to public; 
grant select on SEQ_TB_PUBFM to public;   