/*
================================================================================
��ṹ����:TB_MEMBH
��ṹ����:��Ա������ȼ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBH;
drop index AK_TB_MEMBH;
drop table TB_MEMBH;
create table TB_MEMBH  (
   MEMBH_ID             INTEGER                         not null,  /*��Ա������ȼ�ID   */
   MEMBH001             INTEGER                         not null,  /*��Ա������ID       */
   MEMBH002             INTEGER                         not null,  /*�ȼ�����ID         */
   MEMBH003             NUMBER(12,0)                    not null,  /*��ʼ����           */
   MEMBH004             NUMBER(12,0)                    not null,  /*��������           */
   MEMBH005             NUMBER(12,2)                    not null,  /*�ۿ���(%)          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMBH primary key (MEMBH_ID)
);
create unique index AK_TB_MEMBH on TB_MEMBH (MEMBH001,MEMBH002);
create sequence SEQ_TB_MEMBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBH to public;
grant index  on TB_MEMBH to public;
grant update on TB_MEMBH to public; 
grant delete on TB_MEMBH to public;  
grant insert on TB_MEMBH to public; 
grant select on SEQ_TB_MEMBH to public;   