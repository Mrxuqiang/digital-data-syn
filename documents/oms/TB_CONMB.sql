/*
================================================================================
��ṹ����:TB_CONMB
��ṹ����:���ʦ��ͬ��ϸ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_CONMB;
drop index AK_TB_CONMB;
drop table TB_CONMB;
create table TB_CONMB  (
   CONMB_ID             INTEGER                         not null,  /*���ʦ��ͬ��ϸ��ID */
   CONMB001             INTEGER                         not null,  /*���ʦ��ͬID       */
   CONMB002             NUMBER(12,2),                              /*��ʼ���           */
   CONMB003             NUMBER(12,2),                              /*��ֹ���           */
   CONMB004             NUMBER(18,3),                              /*��̯����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_CONMB primary key (CONMB_ID)
);
create sequence SEQ_TB_CONMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONMB to public;
grant index  on TB_CONMB to public;
grant update on TB_CONMB to public; 
grant delete on TB_CONMB to public;  
grant insert on TB_CONMB to public; 
grant select on SEQ_TB_CONMB to public;   