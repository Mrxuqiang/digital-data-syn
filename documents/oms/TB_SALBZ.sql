/*
================================================================================
��ṹ����:TB_SALBZ
��ṹ����:���˵��˿���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBZ;
drop index AK_TB_SALBZ;
drop table TB_SALBZ;
create table TB_SALBZ  (
   SALBZ_ID             INTEGER                         not null,  /*���˵��˿��ID                                 */
   SALBZ001             INTEGER                         not null,  /*���˵�ID                                       */
   SALBZ002             INTEGER                         not null,  /*���˵��˿�ID                                   */
   SALBZ003             INTEGER                         not null,  /*���ID                                       */
   SALBZ004             INTEGER                         not null,  /*�������ID                                     */
   SALBZ005             NUMBER(12,2),                              /*ʵ�˿���˽��                                 */
   SALBZ006             NUMBER(12,2),                              /*ʵ�˿���                                     */
   SALBZ007             INTEGER                         not null,  /*�������ID                                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                                       */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                                   */                               
   CREATE_DATE          DATE,                                      /*��������                                       */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                                       */
   MODI_DATE            DATE,                                      /*�޸�����                                       */
   FLAG                 NUMBER(1),                                 /*����״̬                                       */
   constraint PK_TB_SALBZ primary key (SALBZ_ID)
);
create index AK_TB_SALBZ on TB_SALBZ (SALBZ001,SALBZ002,SALBZ003,SALBZ007);
create sequence SEQ_TB_SALBZ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBZ to public;
grant index  on TB_SALBZ to public;
grant update on TB_SALBZ to public; 
grant delete on TB_SALBZ to public;  
grant insert on TB_SALBZ to public; 
grant select on SEQ_TB_SALBZ to public;   