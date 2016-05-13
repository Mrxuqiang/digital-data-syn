/*
================================================================================
��ṹ����:TB_INVFO
��ṹ����:�̵����������ϸ�ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_INVFO;
drop index AK_TB_INVFO;
drop table TB_INVFO;
create table TB_INVFO  (
   INVFO_ID         INTEGER                  not null,      /*�̵����������ϸID */  
   INVFO001         INTEGER                  not null,      /*�̵�������ϸ��ID   */
   INVFO002         INTEGER                  not null,      /*��λ               */ 
   INVFO003         VARCHAR2(64)             not null,      /*��Ʒ����           */ 
   INVFO004         NUMBER(12,2)             not null,      /*������             */
   CREATE_USER      VARCHAR2(12),                           /*������Ա           */
   USER_GROUP       VARCHAR2(12),                           /*������Ա����       */                               
   CREATE_DATE      DATE,                                   /*��������           */
   MODIFIER         VARCHAR2(12),                           /*�޸���Ա           */
   MODI_DATE        DATE,                                   /*�޸�����           */
   FLAG             NUMBER(1),                              /*����״̬           */
   constraint PK_TB_INVFO primary key (INVFO_ID)
);
create sequence SEQ_TB_INVFO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFO to public;
grant index  on TB_INVFO to public;
grant update on TB_INVFO to public; 
grant delete on TB_INVFO to public;  
grant insert on TB_INVFO to public; 
grant select on SEQ_TB_INVFO to public;   