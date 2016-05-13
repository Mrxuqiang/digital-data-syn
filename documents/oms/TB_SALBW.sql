/*
================================================================================
��ṹ����:TB_SALBW
��ṹ����:�������˵��˿��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBW;
drop index AK_TB_SALBW;
drop table TB_SALBW;
create table TB_SALBW  (
   SALBW_ID             INTEGER                         not null,  /*�������˵��˿�ID                               */
   SALBW001             INTEGER                         not null,  /*�������˵�ID                                   */
   SALBW002             INTEGER                         not null,  /*���ID                                       */
   SALBW003             NUMBER(12,2),                              /*������                                       */
   SALBW004             NUMBER(12,2),                              /*���˽��                                       */
   SALBW005             NUMBER(12,2),                              /*���˽��                                       */
   SALBW006             NUMBER(12,2),                              /*�����˿���                                   */
   SALBW007             NUMBER(12,2),                              /*�ۿ۳�����                                   */
   SALBW008             NUMBER(12,2),                              /*ʵ�˿���                                     */
   SALBW009             NUMBER(12,2),                              /*Ӧ���ս���ȯ                                   */
   SALBW010             NUMBER(12,2),                              /*Ӧ�����ۼ�ȯ                                   */
   SALBW011             NUMBER(12,2),                              /*Ӧ������Ʒ��                                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                   */                               
   CREATE_DATE          DATE,                                      /*��������                                       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                       */
   MODI_DATE            DATE,                                      /*�޸�����                                       */
   FLAG                 NUMBER(1),                                 /*����״̬                                       */
   constraint PK_TB_SALBW primary key (SALBW_ID)
);
create index AK_TB_SALBW on TB_SALBW (SALBW001,SALBW002);
create sequence SEQ_TB_SALBW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBW to public;
grant index  on TB_SALBW to public;
grant update on TB_SALBW to public; 
grant delete on TB_SALBW to public;  
grant insert on TB_SALBW to public; 
grant select on SEQ_TB_SALBW to public;   