/*
================================================================================
��ṹ����:TB_SEREI
��ṹ����:��Ʒ���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREI;
drop index AK_TB_SEREI;
drop table TB_SEREI;
create table TB_SEREI  (
   SEREI_ID             INTEGER                         not null,  /*����ID                    */
   SEREI001             VARCHAR2(30)                    not null,  /*������;������6λ+6λ��ˮ  */
   SEREI002             INTEGER                         not null,  /*����ID                    */
   SEREI003             VARCHAR2(1)                     not null,  /*ҵ������ 1.��� 2.����    */
   SEREI004             INTEGER                         not null,  /*����ID                    */
   SEREI005             INTEGER                         not null,  /*������ϸID                */
   SEREI006             INTEGER                         not null,  /*��ƷID                    */
   SEREI007             NUMBER(18,3),				   /*�������                  */
   SEREI008             NUMBER(18,3),				   /*��������                  */
   SEREI009             NUMBER(18,3),				   /*��������                  */
   SEREI010             NUMBER(18,3),				   /*��������                  */
   SEREI011             NUMBER(18,3),				   /*�ջ�����                  */
   SEREI012             NUMBER(18,3),				   /*ʣ������                  */
   SEREI013             NUMBER(12,2),				   /*���ν���                  */
   SEREI014             NUMBER(12,2),				   /*ԭ����                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_SEREI primary key (SEREI_ID)
);
create unique index AK_TB_SEREI on TB_SEREI (SEREI001);
create sequence SEQ_TB_SEREI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREI to public;
grant index  on TB_SEREI to public;
grant update on TB_SEREI to public; 
grant delete on TB_SEREI to public;  
grant insert on TB_SEREI to public; 
grant select on SEQ_TB_SEREI to public;   