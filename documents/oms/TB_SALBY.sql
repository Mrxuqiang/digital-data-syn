/*
================================================================================
��ṹ����:TB_SALBY
��ṹ����:���˵��˿��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBY;
drop index AK_TB_SALBY;
drop table TB_SALBY;
create table TB_SALBY  (
   SALBY_ID             INTEGER                         not null,  /*���˵��˿�ID                               */
   SALBY001             INTEGER                         not null,  /*���˵�ID                                   */
   SALBY002             INTEGER                         not null,  /*���ID                                       */
   SALBY003             NUMBER(12,2),                              /*������                                       */
   SALBY004             NUMBER(12,2),                              /*���˽��                                       */
   SALBY005             NUMBER(12,2),                              /*���˽��                                       */
   SALBY006             NUMBER(12,2),                              /*�����˿���                                   */
   SALBY007             NUMBER(12,2),                              /*�ۿ۳�����                                   */
   SALBY008             NUMBER(12,2),                              /*ʵ�˿���                                     */
   SALBY009             NUMBER(12,2),                              /*Ӧ���ս���ȯ                                   */
   SALBY010             NUMBER(12,2),                              /*Ӧ�����ۼ�ȯ                                   */
   SALBY011             NUMBER(12,2),                              /*Ӧ������Ʒ��   																*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                   */                               
   CREATE_DATE          DATE,                                      /*��������                                       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                       */
   MODI_DATE            DATE,                                      /*�޸�����                                       */
   FLAG                 NUMBER(1),                                 /*����״̬                                       */
   constraint PK_TB_SALBY primary key (SALBY_ID)
);
create index AK_TB_SALBY on TB_SALBY (SALBY001,SALBY002);
create sequence SEQ_TB_SALBY minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBY to public;
grant index  on TB_SALBY to public;
grant update on TB_SALBY to public; 
grant delete on TB_SALBY to public;  
grant insert on TB_SALBY to public; 
grant select on SEQ_TB_SALBY to public;   