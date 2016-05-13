/*
================================================================================
��ṹ����:TB_SALBX
��ṹ����:�������˵��˿���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBX;
drop index AK_TB_SALBX;
drop table TB_SALBX;
create table TB_SALBX  (
   SALBX_ID             INTEGER                         not null,  /*�������˵��˿��ID                             */
   SALBX001             INTEGER                         not null,  /*�������˵�ID                                   */
   SALBX002             INTEGER                         not null,  /*�������˵��˿�ID                               */
   SALBX003             INTEGER                         not null,  /*���ID                                       */
   SALBX004             INTEGER                         not null,  /*�������ID                                     */
   SALBX005             NUMBER(12,2),                              /*ʵ�˿���˽��                                 */
   SALBX006             NUMBER(12,2),                              /*ʵ�˿���                                     */
   SALBX007             INTEGER                         not null,  /*�������ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                   */                               
   CREATE_DATE          DATE,                                      /*��������                                       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                       */
   MODI_DATE            DATE,                                      /*�޸�����                                       */
   FLAG                 NUMBER(1),                                 /*����״̬                                       */
   constraint PK_TB_SALBX primary key (SALBX_ID)
);
create index AK_TB_SALBX on TB_SALBX (SALBX001,SALBX002,SALBX003,SALBX007);
create sequence SEQ_TB_SALBX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBX to public;
grant index  on TB_SALBX to public;
grant update on TB_SALBX to public; 
grant delete on TB_SALBX to public;  
grant insert on TB_SALBX to public; 
grant select on SEQ_TB_SALBX to public;   