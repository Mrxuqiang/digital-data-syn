/*
================================================================================
��ṹ����:TB_INVFH
��ṹ����:�̵���ܵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVFH;
drop index AK_TB_INVFH;
drop table TB_INVFH;
create table TB_INVFH  (
   INVFH_ID         INTEGER                  not null,      /*�̵���ܵ���ϸID   */  
   INVFH001         INTEGER                  not null,      /*�̵���ܵ�ID       */
   INVFH002         INTEGER                  not null,      /*��λ               */
   INVFH003         INTEGER                  not null,      /*��Ʒ����           */
   INVFH004         INTEGER,                                /*ά��1              */
   INVFH005         INTEGER,                                /*ά��2              */
   INVFH006         INTEGER,                                /*ά��3              */
   INVFH007         INTEGER,                                /*ά��4              */
   INVFH008         INTEGER,                                /*ά��5              */   
   INVFH009         INTEGER                  not null,      /*��λ               */
   INVFH010         NUMBER(12,2)             not null,      /*������             */
   INVFH011         NUMBER(12,2)             not null,      /*ʵ����             */
   INVFH012         VARCHAR2(255),                          /*��ע               */
   CREATE_USER      VARCHAR2(12),                           /*������Ա           */
   USER_GROUP       VARCHAR2(12),                           /*������Ա����       */                               
   CREATE_DATE      DATE,                                   /*��������           */
   MODIFIER         VARCHAR2(12),                           /*�޸���Ա           */
   MODI_DATE        DATE,                                   /*�޸�����           */
   FLAG             NUMBER(1),                              /*����״̬           */
   constraint PK_TB_INVFH primary key (INVFH_ID)
);
create sequence SEQ_TB_INVFH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFH to public;
grant index  on TB_INVFH to public;
grant update on TB_INVFH to public; 
grant delete on TB_INVFH to public;  
grant insert on TB_INVFH to public; 
grant select on SEQ_TB_INVFH to public;   