/*
================================================================================
��ṹ����:TB_PUBNJ
��ṹ����:�ո���ʽ�˻���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNJ;
drop index AK_TB_PUBNJ;
drop table TB_PUBNJ;
create table TB_PUBNJ  (
   PUBNJ_ID             INTEGER                         not null,  /*�ո���ʽ�˻�ID           */
   PUBNJ001             INTEGER,                                   /*�˺�ID                   */
   PUBNJ002             INTEGER,                                   /*�ո��ʽID             */
   PUBNJ003             INTEGER,                                   /*ȯ��ID                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_PUBNJ primary key (PUBNJ_ID)
);
create unique index AK_TB_PUBNJ on TB_PUBNJ (PUBNJ001,PUBNJ002,PUBNJ003);
create sequence SEQ_TB_PUBNJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNJ to public;
grant index  on TB_PUBNJ to public;
grant update on TB_PUBNJ to public; 
grant delete on TB_PUBNJ to public;  
grant insert on TB_PUBNJ to public; 
grant select on SEQ_TB_PUBNJ to public;   