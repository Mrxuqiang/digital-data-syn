/*
================================================================================
��ṹ����:TB_CCMDW
��ṹ����:Ԥ���˻ص���֧��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDW;
drop index AK_TB_CCMDW;
drop table TB_CCMDW;
create table TB_CCMDW  (
   CCMDW_ID             INTEGER                         not null,  /*�˻ص���֧ID	 */
   CCMDW001             INTEGER                         not null,  /*�˻ص�ID		 */
   CCMDW002             INTEGER                         not null,  /*��֧ID              */
   CCMDW003             NUMBER(12,2)                    not null,  /*������            */
   CCMDW004             INTEGER,                                   /*����ID	         */
   CCMDW005             NUMBER(12,2),                              /*���ʽ��            */
   CCMDW006             VARCHAR2(30),                              /*����                */
   CCMDW007             NUMBER(12,2),                              /*֧Ʊ���            */
   CCMDW008             VARCHAR2(16),                              /*֧Ʊ��              */
   CCMDW009             VARCHAR2(60),                              /*֧Ʊ��λ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CCMDW primary key (CCMDW_ID)
);
create unique index AK_TB_CCMDW on TB_CCMDW (CCMDW001,CCMDW002);
create sequence SEQ_TB_CCMDW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDW to public;
grant index  on TB_CCMDW to public;
grant update on TB_CCMDW to public; 
grant delete on TB_CCMDW to public;  
grant insert on TB_CCMDW to public; 
grant select on SEQ_TB_CCMDW to public;   